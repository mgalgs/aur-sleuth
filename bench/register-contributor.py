#!/usr/bin/env python3
"""Decide whether a registration pull request may be merged.

Registering is how someone becomes able to submit an audit report: one pull
request against `master`, carrying exactly one signed commit that appends
exactly one line -- their email and their SSH signing public key -- to the
`trusted-contributors` file at the root of the tree. If every rule below
passes, the workflow says so and labels the pull request; a MAINTAINER merges
it, and the private side then mints an invitation to the maintainer's network
and emails it. Nothing here merges anything, and the workflow that runs it has
no write access to the repository. `docs/SUBMITTING-REPORTS.md` is the
contributor's side; `bench/trusted-contributors.sh` owns the file's format.

Every rule is decidable in code, and nothing here calls the network: the
workflow fetches the API objects into files and passes the paths, so the same
rules run offline against fixtures in `bench/test-register.sh`.

The rules:

  1. Exactly one commit.
  2. Exactly one file changed -- `trusted-contributors`, one line added, none
     removed -- AND the file as the head commit has it is byte-for-byte the
     file on `master` with that line appended and terminated.
  3. The added line is well formed, its email is the commit's author email,
     and its `# <login>` is the pull request author's login.
  4. GitHub verified the signature: `verified` is true and `reason` is
     `valid`.
  5. The signer is the pull request author. A valid signature made with
     somebody else's key is still "verified", so rule 4 alone proves only
     that SOME registered key signed it; this is the rule that makes it
     theirs.
  6. The key on the added line is one of that account's registered SSH
     signing keys. Rule 5 says the account signed the commit; this says the
     key they are registering here is a key GitHub knows is theirs.
  7. Neither the email nor the key is already in the file.
  8. An activity floor on the account.

Rule 8 is a SPAM COST, not a security control. An account old enough and used
enough to clear it is not thereby trustworthy; it is merely not free to
produce in bulk. What a submission is worth does not change with any of this
-- a community report stays a tier below advisory, information for people and
never a vote. What the bar buys is that the person behind one is reachable.

Usage:
  register-contributor.py --pr pr.json --commits commits.json --user user.json
                          --signing-keys keys.json --diff numstat.txt
                          --added-line line.txt --base-file trusted-contributors
                          --head-file head-trusted-contributors
                          [--public-events N] [--now ISO8601]

Exit 0 means every rule passes and it is the maintainer's to merge. Exit 1
prints every reason it may not be, one per line.
"""

import argparse
import json
import os
import subprocess
import sys
import tempfile
from datetime import datetime, timezone

# The activity floor. A spam cost, not a security control: see above.
MIN_ACCOUNT_AGE_DAYS = 90
MIN_PUBLIC_REPOS = 1
MIN_PUBLIC_EVENTS = 10

# The one file a registration may touch, and the only shape its diff may have.
REGISTRY_FILE = "trusted-contributors"
EXPECTED_NUMSTAT = ("1", "0", REGISTRY_FILE)

HERE = os.path.dirname(os.path.abspath(__file__))
CHECK = os.path.join(HERE, "trusted-contributors.sh")


def load_json(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def parse_when(value):
    """A GitHub timestamp, as an aware datetime. None if it is not one."""
    if not value:
        return None
    try:
        return datetime.fromisoformat(str(value).replace("Z", "+00:00"))
    except ValueError:
        return None


def key_id(spec):
    """(type, base64) of an SSH public key, ignoring its comment.

    GitHub returns a signing key as one string, sometimes with a comment on
    the end; the added line carries the same two fields. Comparing the pair
    is comparing the key.
    """
    parts = str(spec or "").split()
    return tuple(parts[:2]) if len(parts) >= 2 else ()


def run_check(base_text, added_line):
    """Reasons `trusted-contributors.sh check` gives for the file plus the line.

    The proposed file is checked, not the line alone, because the duplicate
    rules are properties of the file. Running the shell script rather than
    re-implementing it is what keeps one definition of the format: the
    maintainer's own copy and a pull request are judged by the same code.
    """
    with tempfile.TemporaryDirectory() as d:
        base = os.path.join(d, "base")
        proposed = os.path.join(d, "proposed")
        text = base_text if base_text.endswith("\n") or not base_text else base_text + "\n"
        with open(base, "w", encoding="utf-8", newline="") as f:
            f.write(text)
        with open(proposed, "w", encoding="utf-8", newline="") as f:
            f.write(text + added_line + "\n")

        first = subprocess.run(["bash", CHECK, "check", base],
                               capture_output=True, text=True, timeout=60)
        if first.returncode != 0:
            return ["the trusted-contributors file on the branch is itself "
                    "malformed; this is not the submitter's doing:"] + [
                f"  {line}" for line in first.stdout.strip().split("\n") if line]

        result = subprocess.run(["bash", CHECK, "check", proposed],
                                capture_output=True, text=True, timeout=60)
        if result.returncode == 0:
            return []
        return [line for line in result.stdout.strip().split("\n") if line]


def check(args):
    """Every reason this pull request may not be merged, as a list."""
    bad = []

    pr = load_json(args.pr)
    commits = load_json(args.commits)
    user = load_json(args.user)
    keys = load_json(args.signing_keys)
    with open(args.diff, encoding="utf-8") as f:
        numstat = [ln for ln in f.read().split("\n") if ln.strip()]
    # `newline=""` on both, because universal-newline translation is one more
    # way to read bytes the branch does not have: it would turn a CRLF line
    # into an LF one here while git merges the CR, and hide a CR already on
    # the base file from the check below that says the base is well formed.
    with open(args.added_line, encoding="utf-8", newline="") as f:
        added_line = f.read()
    # Exactly the bytes the diff adds, minus the newline that terminates a
    # line in a file. Deliberately NOT `.strip()`: what lands on the branch is
    # the pull request's bytes, not a cleaned-up copy, so a line rule 3 was
    # shown with a trailing space, a leading space, or a CR removed is a line
    # rule 3 did not check. Such a line passes every rule, merges, and then
    # `run_check` fails on the BASE file for every registration after it --
    # one copy-paste artifact closes the only door into the feature until the
    # branch is hand-edited.
    if added_line.endswith("\n"):
        added_line = added_line[:-1]
    with open(args.base_file, encoding="utf-8", newline="") as f:
        base_text = f.read()
    with open(args.head_file, encoding="utf-8", newline="") as f:
        head_text = f.read()

    author = str((pr.get("user") or {}).get("login") or "")
    if not author:
        return ["the pull request has no author login"]

    # --- 1: exactly one commit ------------------------------------------------
    if len(commits) != 1:
        bad.append(f"rule 1: {len(commits)} commits; a registration is exactly one")
        # Everything below reads that commit, so there is nothing further to say.
        return bad
    c = commits[0]
    detail = c.get("commit") or {}

    # --- 2: exactly one file, one line added ----------------------------------
    # Two checks, and they are not redundant. The numstat is the friendly one:
    # it names the case -- too many files, a line removed -- in the words a
    # contributor can act on. The byte comparison below is the honest one.
    if len(numstat) != 1:
        bad.append(f"rule 2: {len(numstat)} files changed; a registration "
                   f"touches only {REGISTRY_FILE}")
    else:
        fields = tuple(numstat[0].split("\t"))
        if fields != EXPECTED_NUMSTAT:
            bad.append(f"rule 2: the diff is '{numstat[0]}'; it must be exactly "
                       f"'1\t0\t{REGISTRY_FILE}' -- one line added, none removed")

    # What actually merges is the head commit's bytes. Everything else in this
    # script judges a RECONSTRUCTION of them: the numstat is a pair of counts,
    # and `run_check` below is shown `base_text + added_line + "\n"`, a string
    # this script builds and therefore always terminates. So a head file that
    # ends WITHOUT a final newline passes every other rule, merges, and the
    # branch is left in a state nothing here can produce: the next
    # registration's append either mangles that last line into a joined one or
    # shows as one line removed, and rule 2 refuses it. One contributor's
    # missing byte shuts the door on everyone after them, with a message that
    # blames the wrong person -- the same failure the added-line comment above
    # warns about, arriving by a third door.
    #
    # The workflow cannot see it either: the diff's `\ No newline at end of
    # file` marker starts with a backslash, and the `grep '^+'` that lifts the
    # added line out of the patch drops it.
    #
    # So compare the bytes. One equality subsumes the missing final newline, a
    # trailing space, a CR, a line inserted mid-file rather than appended, and
    # a second file the numstat somehow did not name -- everything that could
    # make what merges differ from what rule 3 was shown.
    expected = base_text + added_line + "\n"
    if head_text != expected:
        if base_text and not base_text.endswith("\n"):
            bad.append("rule 2: the trusted-contributors file on the branch does "
                       "not end in a newline, so no line can be appended to it "
                       "cleanly; this is not the submitter's doing, and the "
                       "branch needs a hand edit")
        elif head_text == base_text + added_line:
            bad.append("rule 2: the file this pull request would merge does not "
                       "end in a newline; add one, so the next registration can "
                       "append to it")
        elif not head_text.startswith(base_text):
            bad.append("rule 2: the file this pull request would merge does not "
                       f"begin with the {REGISTRY_FILE} that is on the branch; "
                       "a line is added to the END of the file, and the branch "
                       "may have moved -- rebase onto it and push again")
        else:
            at = next((i for i, (a, b) in enumerate(zip(head_text, expected))
                       if a != b), min(len(head_text), len(expected)))
            bad.append("rule 2: the file this pull request would merge is not the "
                       "file on the branch with the added line appended to it; "
                       f"they first differ at byte {at}, and every byte after "
                       "that point is one no rule below has read")

    # --- 3: the added line, and whose it says it is ---------------------------
    # Duplicates are rule 7's answer to give, so they are dropped here rather
    # than listed twice in different words.
    bad.extend(f"rule 3: {reason}" for reason in run_check(base_text, added_line)
               if "already on line" not in reason)

    fields = added_line.split()
    line_email = fields[0] if fields else ""
    line_key = key_id(" ".join(fields[1:3])) if len(fields) >= 3 else ()
    line_login = fields[4] if len(fields) >= 5 and fields[3] == "#" else ""

    commit_email = str(((detail.get("author") or {}).get("email")) or "")
    if not line_email or line_email != commit_email:
        bad.append(f"rule 3: the line registers '{line_email}' but the commit's "
                   f"author email is '{commit_email}'; they must be the same address")
    if not line_login or line_login != author:
        bad.append(f"rule 3: the line's comment names '{line_login}' but the pull "
                   f"request is from '{author}'; register your own account")

    # --- 4: GitHub verified the signature -------------------------------------
    verification = detail.get("verification") or {}
    reason = str(verification.get("reason") or "")
    if not verification.get("verified") or reason != "valid":
        bad.append(f"rule 4: GitHub did not verify the commit's signature "
                   f"(verified={bool(verification.get('verified'))}, reason='{reason}')")

    # --- 5: the signer is the pull request author -----------------------------
    # `verified` says a key GitHub knows signed it; it does not say WHOSE.
    for role in ("author", "committer"):
        login = str(((c.get(role) or {}).get("login")) or "")
        if login != author:
            bad.append(f"rule 5: the commit's {role} is '{login}', not the pull "
                       f"request author '{author}'")

    # --- 6: the key is one the account has registered -------------------------
    registered = {key_id(k.get("key")) for k in keys if key_id(k.get("key"))}
    if not line_key:
        bad.append("rule 6: no key on the added line to compare")
    elif line_key not in registered:
        bad.append(f"rule 6: the key on the line is not one of '{author}'s "
                   f"{len(registered)} registered SSH signing key(s); add it at "
                   "github.com/settings/keys as a SIGNING key")

    # --- 7: not already registered -------------------------------------------
    # The shell check reports these against the proposed file too; naming them
    # here is what makes the rule its own answer rather than a format error.
    for line in base_text.split("\n"):
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        existing = line.split()
        if line_email and existing and existing[0] == line_email:
            bad.append(f"rule 7: '{line_email}' is already registered")
        if line_key and key_id(" ".join(existing[1:3])) == line_key:
            bad.append("rule 7: that key is already registered")

    # --- 8: the activity floor ------------------------------------------------
    now = parse_when(args.now) or datetime.now(timezone.utc)
    created = parse_when(user.get("created_at"))
    if created is None:
        bad.append("rule 8: the account has no creation date")
    else:
        age = (now - created).days
        if age < MIN_ACCOUNT_AGE_DAYS:
            bad.append(f"rule 8: the account is {age} days old; "
                       f"{MIN_ACCOUNT_AGE_DAYS} are needed")
    repos = user.get("public_repos") or 0
    events = args.public_events
    if repos < MIN_PUBLIC_REPOS and events < MIN_PUBLIC_EVENTS:
        bad.append(f"rule 8: {repos} public repo(s) and {events} recent public "
                   f"event(s); at least {MIN_PUBLIC_REPOS} repo or "
                   f"{MIN_PUBLIC_EVENTS} events are needed")

    return bad


def main():
    ap = argparse.ArgumentParser(add_help=True)
    ap.add_argument("--pr", required=True, help="the pull request object")
    ap.add_argument("--commits", required=True, help="the pull request's commits")
    ap.add_argument("--user", required=True, help="the author's user object")
    ap.add_argument("--signing-keys", required=True,
                    help="the author's /users/{login}/ssh_signing_keys")
    ap.add_argument("--diff", required=True,
                    help="git diff --numstat of base...head")
    ap.add_argument("--added-line", required=True,
                    help="the one line the commit added")
    ap.add_argument("--base-file", required=True,
                    help="trusted-contributors as the branch has it")
    ap.add_argument("--head-file", required=True,
                    help="trusted-contributors as the pull request's head has it")
    ap.add_argument("--public-events", type=int, default=0,
                    help="how many recent public events the account has")
    ap.add_argument("--now", default="",
                    help="UTC timestamp to age the account against, for tests")
    args = ap.parse_args()

    reasons = check(args)
    if reasons:
        print("This registration cannot be merged:")
        for reason in reasons:
            print(reason)
        return 1
    print("Every rule passes; this registration may be merged.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
