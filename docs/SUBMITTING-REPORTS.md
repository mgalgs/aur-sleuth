# Submitting an audit report

The dashboard at [mgalgs.io/aur-sleuth](https://mgalgs.io/aur-sleuth/) is built
from the `audit-reports` branch of this repository. The pipeline fills it from
a small set of packages a day. You can add to it: run `aur-sleuth` on a package
you care about and send the report.

Submitting is by invitation, and getting one takes a little work. Both halves
are described below, starting with what a submission is actually worth, so you
can decide whether the work is worth it to you.

## What a submission is worth

The pipeline has three tiers, in this order:

**a real audit > an advisory report > a community report.**

A real audit is a model on a paid seat, and it votes. An advisory report is
this pipeline running a model it does not trust yet — usually a free one — so
it carries no vote, but it is our own run and a judge reads it as context. A
community report is a tier below that: an unverified *claim*, about both which
model ran and what it decided. So it is **information for people reading the
dashboard** and nothing else.

The one concrete difference from advisory: an advisory report reaches the judge
behind the untrusted-data fence, and **a community report never reaches any
model at all.**

None of that changes when you register. The bar below decides *who may submit*.
It does not raise what a submission counts for, and it is not meant to.

## The bar, and why it is there

To submit, you open one pull request against a data branch of this repository,
containing exactly one signed commit that adds exactly one line — your email
and your SSH signing public key — to the `trusted-contributors` file.
Automation merges it when every check passes, and an invitation to the private
network reports are submitted over is then emailed to you.

That is deliberately more work than opening a pull request, and the extra work
is the point. A signed commit, a signing key GitHub already attributes to your
account, an account with some history behind it, and joining a private network
are each a small thing. Together they are the reason a submission here can be
trusted as far as it is: every report on the page carries a name that somebody
had to hold onto, and a signature the archive can check against a public list.
Reports arrive over that network and nowhere else — there is no pull request
that carries one.

## Registering

You need an **SSH signing key**. Not GPG: SSH signing keys only, everywhere in
this flow. If you already sign commits with one, use it. Otherwise:

```bash
ssh-keygen -t ed25519 -C "you@example.org" -f ~/.ssh/id_ed25519_signing
```

Add the **public** key to GitHub at
[github.com/settings/keys](https://github.com/settings/keys) — as a **signing
key**, not an authentication key. It has to be a signing key: the check looks
for it in your account's signing keys, and an authentication key is not in that
list.

Tell git to sign with it:

```bash
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519_signing.pub
git config --global user.email you@example.org
```

The email in `user.email` is the address you are registering. It has to be the
same one on the line you add, and on every submission you make afterwards.

Now make the one-line commit. The line is your email, your key's type and
base64 body, and your GitHub login as a comment:

```bash
git clone https://github.com/mgalgs/aur-sleuth.git
cd aur-sleuth
git fetch origin trusted-contributors
git checkout -b register-me origin/trusted-contributors
printf '%s %s # %s\n' "you@example.org" \
    "$(cut -d' ' -f1,2 ~/.ssh/id_ed25519_signing.pub)" "your-github-login" \
    >> trusted-contributors
git add trusted-contributors
git commit -S -m "register: your-github-login"
git push origin register-me
gh pr create --base trusted-contributors --head register-me \
    --title "register: your-github-login"
```

Check `git log --show-signature -1` before you push: if it does not say the
commit is signed, nothing after this will work.

The file is an SSH `allowed_signers` file, used unchanged — that is why the
format is exactly `<email> <key-type> <base64-key> # <github-login>`, single
spaces, nothing else on the line. `bash bench/trusted-contributors.sh check
trusted-contributors` will tell you if your line is malformed before you open
anything.

## What the automation checks

Every rule is decided in code (`bench/register-contributor.py`), and every one
of them has to pass:

1. Exactly one commit.
2. Exactly one file changed — `trusted-contributors`, one line added, none
   removed, nothing else touched.
3. The added line is well formed, its email is the commit's author email, and
   its `# <login>` is your GitHub login.
4. GitHub verified the commit's signature.
5. The commit's author *and* committer are you. A valid signature made with
   somebody else's key still counts as "verified", so this is the rule that
   makes the signature yours.
6. The key on the line is one of the SSH **signing** keys registered to your
   account.
7. Neither the email nor the key is already in the file.
8. An activity floor: the account is at least 90 days old, and has at least one
   public repository or ten recent public events.

Rule 8 is a spam cost, not a judgement about you. An account that clears it is
not thereby trustworthy — it is merely not free to produce in bulk.

**If every rule passes, the pull request is merged** and your invitation
follows. **If any rule fails, a comment lists every reason and the pull request
is closed.** Fix what it names and reopen it; the checks run again.

## The invitation

The invitation arrives by email, at the address on the line you added. Joining
is installing the network's client and following the link in that mail; it puts
your machine on a private network with no access to anything but the submission
endpoint. The endpoint's URL comes with the invitation, and it is not published
anywhere — the endpoint is only reachable from inside that network, and knowing
its name is not what admits you.

## Sending a report

Run the audit:

```bash
./aur-sleuth <package>
```

The report is written to `aur-sleuth-report-<package>.txt` under
`/tmp/aur-sleuth/`, or under `$AUR_SLEUTH_REPORT_DIR` when that is set. Check
three things before you send it:

- `package:` is the pkgbase, and it has to match the package you name below.
- `result:` is `safe`, `unsafe` or `inconclusive`. A crashed or rate-limited
  run leaves `unknown` or `skipped`; there is nothing to archive in that.
- The report does not quote anything private of yours. It is going onto a
  public branch.

Put the endpoint URL where the client can find it:

```bash
mkdir -p ~/.config
printf 'url = %s\n' "<the URL from your invitation>" \
    > ~/.config/aur-sleuth-submit.conf
```

Then send it:

```bash
./aur-sleuth-submit /tmp/aur-sleuth/aur-sleuth-report-<package>.txt <package>
```

The client makes one commit adding `<package>/<name>.md`, signs it with the key
you registered, and posts it as a git bundle. It refuses to build an unsigned
commit: an unsigned submission is refused when it arrives, and this is the
cheaper place to find out.

The rules a report has to clear, all decided in code, are the same ones the
archive has always applied:

- The path is exactly `<package>/<name>.md`. Nothing nested, no dotfiles, and
  **no `.json`** — a `-judge.json` is a ruling the pipeline counts, so there is
  no submittable form of one.
- `<package>` is a valid pkgbase: `^[a-z0-9][a-z0-9@._+-]*$`.
- The path is not one the branch already has. A submission only ever adds
  files.
- The frontmatter parses, `package:` matches, and `model:` and `result:` are
  present with `result` one of the three above.
- LF line endings, valid UTF-8, at most 256 KiB per file and 200 files.

One file that fails any of these refuses the whole submission, with every
reason listed. That is deliberate: it is easier to fix a list than to work out
which half of your branch landed.

## The capacity contract

The endpoint admits a limited number of clients at once. It runs on the
maintainer's own network, and the cap is what keeps that network usable while
it is serving submissions.

So the endpoint may make you wait, or turn you away with a retry hint, and
**that is not a judgement about your report**. `aur-sleuth-submit` handles it
for you: on a `429` or a `503` it waits for the `Retry-After` the endpoint
sends, or backs off exponentially with jitter if there is none, and gives up
after `AUR_SLEUTH_SUBMIT_MAX_WAIT` seconds in total (30 minutes by default)
with a message saying the endpoint is full. Nothing else is ever retried. If
you are turned away, try again later, or raise that number and leave it
running.

## What your report carries

Two things are rewritten on the way in, and it is worth being direct about why.
A report is a claim about what some model said. Nothing in it can be checked —
not because of anything you did, but because the archive cannot tell your
report from one written by whoever poisoned the package it clears. So:

- Every accepted report is stamped `advisory: true` and `source: community`
  whatever its frontmatter said, along with `submitted_by`, `submitted_ring`
  (which invitation ring the endpoint saw you on), the submission's commit sha,
  and the date it was ingested. Your `model:` and `result:` lines are kept
  exactly as you wrote them: the claim is preserved as a claim.
- `submitted_by` is **not** a label anyone typed. The ingest verifies the
  commit's signature against the `trusted-contributors` branch, requires the
  signature's principal to be the commit's own author, and records the login on
  that key's line. It is the identity your key proves.
- The ingest names the file. Your filename is discarded in favour of
  `<package>/<timestamp>-community-<model>.md`, because choosing where a file
  lands in an archive is not something a submission gets to do.

## What it counts for

On the page, a community report shows with the advisory glyph, labelled
"community", attributed to you on hover, and its full text folds out like any
other report.

Everywhere else it counts for nothing, by design — this is what the tier below
advisory means in practice:

- **No model in this pipeline ever reads it.** It never triggers the judge and
  it is not in the pile the judge reads. Advisory reports from the pipeline's
  own free models are in that pile, behind a fence that tells the judge to
  treat report text as untrusted data. A community report is kept out of it
  entirely: its text is chosen by whoever sent it, the judge is a model the
  maintainer pays for, and a fence is a weaker thing to rely on than not
  sending the text at all.
- It never counts toward agreement, a majority, a verdict, or a package's
  state. A community `unsafe` puts nothing on the flagged list.
- It never marks a package as already audited, so it cannot keep a package away
  from the pipeline's own reads.

If you think a package deserves a real verdict, saying so is more use than the
report's own `result:` line — the maintainer can queue an escalation, which is
what actually spends money on the question.
