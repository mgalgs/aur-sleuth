# Submitting an audit report

The dashboard at [mgalgs.io/aur-sleuth](https://mgalgs.io/aur-sleuth/) is built
from the `audit-reports` branch of this repository. The pipeline fills it from
a small set of packages a day. You can add to it: run `aur-sleuth` on a package
you care about and offer the report.

What a submission is worth is stated plainly below, and it is worth being
precise about it. The pipeline has three tiers, in this order:

**a real audit > an advisory report > a community report.**

A real audit is a model on a paid seat, and it votes. An advisory report is
this pipeline running a model it does not trust yet — usually a free one — so
it carries no vote, but it is our own run and a judge reads it as context. A
community report is a tier below that: an unverified claim, from an unverified
person, about both which model ran and what it decided. So it is **information
for people reading the dashboard** and nothing else. The concrete difference
from advisory is one line: an advisory report reaches the judge behind the
untrusted-data fence; a community report never reaches any model at all.

## Run the audit

```bash
./aur-sleuth <package>
```

The report is written to `aur-sleuth-report-<package>.txt` under
`/tmp/aur-sleuth/`, or under `$AUR_SLEUTH_REPORT_DIR` when that is set. The
file starts with a YAML frontmatter block: `package`, `model`, `result`,
`date`, `cost`, `files_reviewed` and the per-file verdicts.

Check three things before you send it:

- `package:` is the pkgbase, and it will have to match the directory you put
  the file in.
- `result:` is `safe`, `unsafe` or `inconclusive`. A crashed or rate-limited
  run leaves `unknown` or `skipped`; there is nothing to archive in that.
- The report does not quote anything private of yours. It is going onto a
  public branch.

## Offer it

Fork this repository, branch from `audit-reports`, and add the report at
`<package>/<any-name>.md`:

```bash
git clone https://github.com/<you>/aur-sleuth.git
cd aur-sleuth
git checkout -b my-report origin/audit-reports
mkdir -p <package>
cp /tmp/aur-sleuth/aur-sleuth-report-<package>.txt <package>/my-report.md
git add <package>/my-report.md
git commit -m "report: <package>"
git push origin my-report
```

Then open a pull request with `audit-reports` as the **base**:

```bash
gh pr create --base audit-reports --head <you>:<branch> --title "reports: <package>"
```

Or the same thing in the GitHub UI — just make sure the base branch is
`audit-reports` and not the default branch.

The rules a submission has to clear, all decided in code:

- The path is exactly `<package>/<name>.md`. Nothing nested, no dotfiles,
  nothing under `_dashboard/`, and **no `.json`** — a `-judge.json` is a
  ruling the pipeline counts, so there is no submittable form of one.
- `<package>` is a valid pkgbase: `^[a-z0-9][a-z0-9@._+-]*$`.
- The path is not one the branch already has. A submission only ever adds
  files. A commit that modifies or deletes an existing report is refused.
- The frontmatter parses, `package:` matches the directory, and `model:` and
  `result:` are present with `result` one of the three above.
- LF line endings, valid UTF-8, at most 256 KiB per file and 200 files.

One file that fails any of these refuses the whole submission, with every
reason listed. That is deliberate: it is easier to fix a list than to work out
which half of your branch landed.

## What happens to it

1. Automation comments on the pull request to say it is queued, and **closes
   it**. That happens within a minute or two of opening it, so no submission
   sits in the open-PR list waiting on anyone. **A closed pull request is the
   normal outcome here, not a rejection.**
2. The `ingest` stage fetches your commit — straight from `refs/pull/<N>/head`
   on this repository, which GitHub publishes for every pull request — applies
   the rules above, and commits what it accepts to `audit-reports`. Then it
   appears on the page.

Your branch is **never merged**, and that is the reason for step 1. A GitHub
merge would put a commit on `origin` that the maintainer's own copy of the
branch has never seen, and publishing requires `origin` to be an ancestor of
that copy. Taking the commit out of the pull request and committing it
separately is what keeps that true.

If the submission fails any of the checks above, the whole thing is refused
and someone will say so on the pull request.

Two things are rewritten on the way in, and it is worth being direct about
why. A report is a claim about what some model said. Anyone can write any
frontmatter they like, so nothing that arrives this way can be taken at face
value — not because of anything you did, but because the archive cannot tell
your report from one written by whoever poisoned the package it clears. So:

- Every accepted report is stamped `advisory: true` and `source: community`,
  whatever its frontmatter said, along with `submitted_by` (the label from
  your pull request, recorded and not verified), the pull request number, the
  submission's commit sha, and the date it was ingested. Your `model:` and
  `result:` lines are kept exactly as you wrote them: the claim is preserved
  as a claim.
- The ingest names the file. Your filename is discarded in favour of
  `<package>/<timestamp>-community-<model>.md`, because choosing where a file
  lands in an archive is not something a submission gets to do.

## What it counts for

On the page, a community report shows with the advisory glyph, labelled
"community", with your name on it, and its full text folds out like any other
report.

Everywhere else it counts for nothing, by design — this is what the tier
below advisory means in practice:

- **No model in this pipeline ever reads it.** It never triggers the judge and
  it is not in the pile the judge reads. Advisory reports from the pipeline's
  own free models are in that pile, behind a fence that tells the judge to
  treat report text as untrusted data. A community report is kept out of it
  entirely: its text is chosen by whoever sent it, the judge is a model the
  maintainer pays for, and a fence is a weaker thing to rely on than not
  sending the text at all.
- It never counts toward agreement, a majority, a verdict, or a package's
  state. A community `unsafe` puts nothing on the flagged list.
- It never marks a package as already audited, so it cannot keep a package
  away from the pipeline's own reads.

If you think a package deserves a real verdict, saying so in the pull request
is more use than the report's own `result:` line — the maintainer can queue an
escalation, which is what actually spends money on the question.
