# Submitting an audit report

The dashboard at [mgalgs.io/aur-sleuth](https://mgalgs.io/aur-sleuth/) is built
from the `audit-reports` branch of this repository. The pipeline fills it from
a small set of packages a day. You can add to it: run `aur-sleuth` on a package
you care about and send the report.

Submitting is by invitation, and getting one takes a little work. Both halves
are described below, starting with what a submission is actually worth, so you
can decide whether the work is worth it to you.

## What a submission is worth

The pipeline has two tiers, in this order:

**a real audit > an advisory report.**

A real audit is a model on a paid seat, and it votes. An advisory report does
not vote, but it is context: a judge reads it behind the untrusted-data fence,
and the review stage's advisory read sees it. Two things land in that second
tier — this pipeline running a model it does not trust yet, usually a free one,
and **a report you submit once you are registered.** They are the same tier.
There is no third one below.

Your submission is advisory because the signing flow says who sent it. That is
what registering buys: the rules below verify that a real GitHub account, whose
profile carries the signing key, stands behind the report. A claim from a known
person is worth reading; an anonymous one would not be.

What registering does **not** buy is a vote. `advisory: true` and
`source: community` are stamped on your report at ingest whatever the file
claimed, so no submission can become a verdict. And the figures that say what
*this deployment* ran or spent stay closed to it — the spend, the per-model
tables, the week's counts, the coverage denominator, the benchmark's sample.
Those are not a judgement about you. They are a different question: your
`model:` and `date:` describe a run this pipeline did not make, so it cannot
count them as its own however much it trusts you.

## The bar, and why it is there

To submit, you open one pull request against `master`, containing exactly one
signed commit that adds exactly one line — your email and your SSH signing
public key — to the `trusted-contributors` file at the root of the tree. An
automated check says whether every rule passes; a maintainer reads that and
merges by hand, and the invitation to the private network reports are
submitted over follows the merge.

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

Now make the one-line commit. **Fork this repository first** — nobody but the
maintainer can push a branch to it, so the branch you open the pull request
from has to live in your own fork. The line you add is your email, your key's
type and base64 body, and your GitHub login as a comment:

```bash
gh repo fork mgalgs/aur-sleuth --clone --remote   # or fork on the web, then clone
cd aur-sleuth
git fetch upstream master
git checkout -b register-me upstream/master
printf '%s %s # %s\n' "you@example.org" \
    "$(cut -d' ' -f1,2 ~/.ssh/id_ed25519_signing.pub)" "your-github-login" \
    >> trusted-contributors
git add trusted-contributors
git commit -S -m "register: your-github-login"
git push origin register-me
gh pr create --repo mgalgs/aur-sleuth \
    --base master --head your-github-login:register-me \
    --title "register: your-github-login"
```

`gh repo fork --remote` names your fork `origin` and this repository
`upstream`, which is what the `git fetch upstream` and `git push origin` above
assume. If you forked on the web and cloned your fork by hand, add the
`upstream` remote yourself:
`git remote add upstream https://github.com/mgalgs/aur-sleuth.git`.

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
   removed, nothing else touched — and the file as your branch has it is
   byte-for-byte the file on `master` with that one line appended and
   **terminated by a newline**. Your editor may drop that last
   newline; most will not, but if yours does, the merged file is one nobody
   can append to and the next person to register is refused for it.
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

Rules 4-6 are one idea in three parts, and the short version is that **a
registration is accepted only when GitHub itself shows your commit as
"Verified"** — that badge is exactly rule 4, the signature checking out
against an SSH signing key on the author's profile. Rules 5 and 6 add the two
things the badge does not say: that the signer is the pull request's author,
and that the key you are registering on the line is one of that same
profile's keys. So if the commit does not show Verified on GitHub, stop there
and fix that first; nothing after it can pass.

Rule 8 is a spam cost, not a judgement about you. An account that clears it is
not thereby trustworthy — it is merely not free to produce in bulk.

**If every rule passes, the check says so**, labels the pull request
`registration-ready`, and a maintainer merges it; your invitation follows the
merge. Nothing more is needed from you at that point. **If any rule fails, a
comment lists every reason and the pull request is closed.** Fix what it names
and reopen it; the checks run again.

The merge is a human act on purpose. The workflow that runs these rules is
triggered by a pull request from a stranger, so it is given no write access to
the repository at all — it can comment and label, and that is the whole of it.
A bug in it cannot put a byte on `master`.

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
- `date:`, if the report has one, is `YYYY-MM-DD` or `YYYY-MM-DDTHH:MM:SSZ`,
  and its day is not after the day you send it. The page shows a package's
  newest report as its current state, and a report dated next century would
  take that over. A `date:` that is present but in neither shape is refused
  rather than ignored — otherwise a shape nobody listed would be a way around
  the check. Leaving `date:` out entirely is fine: a report with no date sorts
  oldest, so it is the last thing the page would call a package's newest.
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
sends, **for as long as the endpoint asked** — the client's own five-minute
ceiling bounds the exponential backoff it falls back on when there is no hint,
and a hint is the endpoint replacing that guess with an answer. Coming back
early would be knocking again on a door that just told you when it opens.

The one bound that does apply to a hint is your total: when the next wait
would take the run past `AUR_SLEUTH_SUBMIT_MAX_WAIT` seconds (30 minutes by
default), the client stops and says the endpoint is full. So an endpoint that
asks for an hour ends the run immediately rather than in an hour — which is
the same fact stated sooner. Nothing else is ever retried. If you are turned
away, try again later, or raise that number and leave it running.

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
- The accounting lines are dropped: `cost`, the token counts and
  `execution_time`. Those are what *this* pipeline spent; your run cost it
  nothing, so the archive records nothing rather than a number it did not
  measure.
- `submitted_by` is **not** a label anyone typed. The ingest verifies the
  commit's signature against `trusted-contributors` as `master` has it,
  fetched fresh at every submission, requires the
  signature's principal to be the commit's own author, and records the login on
  that key's line. It is the identity your key proves.
- The ingest names the file. Your filename is discarded in favour of
  `<package>/<timestamp>-community-<model>.md`, because choosing where a file
  lands in an archive is not something a submission gets to do.

## What it counts for

On the page, a community report shows with the advisory glyph, labelled
"community", attributed to you on hover, and its full text folds out like any
other report.

Two things follow from it being advisory, and they cut in opposite
directions. What it **is** read by:

- **A model does read it.** Your report goes into the pile the judge reads,
  behind the fence that tells the judge to treat every report's text as
  untrusted data — the same pile, and the same fence, as an advisory report
  from one of the pipeline's own free models. The review stage's advisory read
  sees it too. That fence is the protection; being a known contributor is not
  a reason to lower it, and it is not lowered for you.
- **It marks the package as advisory-covered.** A later advisory sweep will
  dig deeper into the popular set rather than re-cover a package you already
  read. It does not mark the package audited for the paid seats, so it never
  keeps a package away from a real verdict.

And what it is **not** counted in — every one of these because the figure says
what *this deployment* ran, decided or spent, which your report does not
describe:

- It never counts toward agreement, a majority, a verdict, or a package's
  state. A community `unsafe` puts nothing on the flagged list — not on the
  operator's "Reports worth a look" before a publish, and not in the `flagged`
  number the published page carries. Nor does it appear in that summary's
  verdict breakdown, or in its "no findings" count of runs that errored. The
  summary does print a `community:` line naming you, your count, and how many
  of yours were flagged, so the person publishing sees the report and knows
  which number it did not move.
- It is in no figure that says what this deployment spent or which models it
  ran: not the spend total, not the per-model tables, not the week's "packages
  read" and audit counts, and not the cost-per-package the coverage line
  divides. Nor is it in the benchmark's sample or its scoring, which compare
  candidate models against runs this pipeline made. Dropping your `cost` line
  is not what does that — your `model:` and `date:` are kept, and anything that
  *counts reports* would move if it counted yours. The dashboard computes those
  figures over the pipeline's own reports instead.
- The one line your report does move is `audit reports`, which counts what the
  push carries.

If you think a package deserves a real verdict, saying so is more use than the
report's own `result:` line — the maintainer can queue an escalation, which is
what actually spends money on the question.
