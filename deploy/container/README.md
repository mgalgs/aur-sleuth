# Running the audit pipeline in a container

`bench/pipeline.sh` audits recently-updated AUR packages, judges the results, regenerates the dashboard, and pushes everything to the `audit-reports` branch. This directory packages that loop as a container image designed to run unattended as a scheduled job.

It ships the **image**, not a deployment. Scheduling is almost entirely site-specific values — registry, storage, schedule, budget, timezone, commit identity — so the scheduler's configuration belongs in your own infrastructure repository. [What the image requires](#what-the-image-requires) states what it must provide.

## What it does

One run is one `pipeline.sh` invocation. The pipeline throttles itself: it accumulates spend in `$DATA_DIR/pipeline/spend-YYYY-MM-DD.log` and exits when the day's total reaches `--daily-budget`. Run it several times a day and each run re-reads the same day's ledger, so the cap holds across runs — provided the ledger survives, which is what a persistent volume is for.

The cap binds the audit phase only (it stops at `--audit-budget-share` of the budget). Judge and re-audit work has top priority: those phases run to completion even when they push the day past the budget, so a flagged package never waits a day for its second opinion. Expect the day's total to end somewhat over `--daily-budget`; each run logs the overrun and appends `overrun=` to `$DATA_DIR/pipeline/runs.log`. When that number trends up, lower `--audit-budget-share` — the audit phase is the knob, not the judge.

Runs must not overlap, or two of them race on the archive and the push.

## The stages, and why

The pipeline runs untrusted code by design. `makepkg --nobuild` sources arbitrary AUR `PKGBUILD` files, which executes their top-level shell and `pkgver()`. That is the point of the tool, but it means a hostile package gets a shell in the container. A run is therefore split into stages, each in its own container. Three run on the schedule, in sequence; the rest are on demand:

| Stage | Credential | Volume | Runs untrusted code | When |
|---|---|---|---|---|
| `prepare` | none | read-write | no | every run |
| `audit` | LLM API key | read-write | **yes** | every run |
| `publish` | git deploy key | **read-only** | no | every run (dry run), or on demand |
| `review` | LLM route (advisory read) | **read-only** | no | on demand, before a publish |
| `quarantine` | none | read-write | no | on demand, when review finds a leak |
| `bundle` | none | **read-only** | no | on demand, instead of `publish` |
| `benchmark` | LLM API key | read-write | **yes** | on demand |

`prepare` creates or refreshes the git object store on the volume and prunes old state. `audit` runs the whole pipeline with `--no-push`, so every commit stays local.

`review` answers "is this branch publishable, and what is in it?" without publishing: the path gate and the internal-string check (`AUR_SLEUTH_INTERNAL_STRINGS`) decide its exit status, `bench/review-pending.py` summarises the pending sweep, and a model (`AUR_SLEUTH_REVIEW_MODEL`) reads every generated text for one thing only, a leak of the operator's own details. That read is advice for a person, never a gate. `quarantine` is the remedy review names: it rewrites the unpushed commits without the leaky reports, keeps the old head under `refs/backup/`, and is the one trusted stage that writes to the store.

`publish` runs both checks again itself, dry run included, and then pushes two branches: the reviewed commit of `audit-reports`, exactly as the audit stage wrote it, and the public page on `site` (`AUR_SLEUTH_SITE_BRANCH`), which is that commit's tree plus `index.html` and `_dashboard/*` rebuilt by this image. Point GitHub Pages at `site`. The page is never committed to `audit-reports`, so `origin`'s copy of it is always an ancestor of the store's, and nothing ever has to be rebased.

`publish` writes nothing to the store -- it reads a snapshot of the refs and borrows the objects read-only -- so it may run while an `audit` stage is committing. It publishes the commit the review saw (`AUR_SLEUTH_EXPECT_HEAD`); reports that landed since wait for the next review. What it refuses is a pin the branch no longer contains, which is what a quarantine rewrite leaves behind.

`benchmark` is an on-demand stage, not part of the scheduled sequence: it re-audits a sample of packages whose verdict is already settled on the branch with candidate models, and scores each candidate (synthetic fixtures, agreement with the settled verdicts, the two kinds of disagreement, cost). It runs `makepkg` on real packages, so it needs every protection `audit` has and must never overlap with it. It writes only under `$DATA_DIR/bench/<run-id>/` — never to the branch — and records its spend in the same daily ledger. `AUR_SLEUTH_BENCH_MODELS` names the candidates; `AUR_SLEUTH_BENCH_ROLE` picks the task (`audit`, the default, which is what the audit and re-audit seats do, or `judge`, which hands each candidate the package's existing reports and scores its ruling); `AUR_SLEUTH_BENCH_TARGET` labels the seat the run is for; `AUR_SLEUTH_BENCH_SAMPLE`, `AUR_SLEUTH_BENCH_BUDGET`, `AUR_SLEUTH_BENCH_SYNTHETICS`, `AUR_SLEUTH_BENCH_PACKAGES` and `AUR_SLEUTH_BENCH_RUN_ID` are the knobs, each checked at the boundary. The result is `result.json` in the run directory and a `BENCH_JSON` line at the end of the log.

`bundle` is the alternative to `publish`, for anyone unwilling to keep a write credential next to a stage that runs untrusted code. It writes the commits `origin` does not have to a git bundle (`AUR_SLEUTH_BUNDLE_PATH`, default `/out/audit-reports.bundle`) and needs no credential at all. Mount something at `/out` that outlives the container, copy the file out, `git fetch` it into a clone that has the published history, review the commits, and push from somewhere that already has push rights:

```bash
git fetch ./audit-reports.bundle refs/heads/audit-reports:refs/heads/incoming
git log --oneline audit-reports..incoming     # what accumulated
```

The bundle is incremental, so it carries only unpublished commits — a few KB per sweep rather than the whole archive — and `git bundle verify` will name the commit it needs as a prerequisite. If `origin` has no reports branch yet, it falls back to bundling the full history.

Two properties make the split hold rather than merely look tidy:

- **Each container has its own image layer.** The trusted code in `/opt/aur-sleuth` is per-container, so the audit stage cannot tamper with the scripts the publish stage runs. Only the volume is shared.
- **`publish` never runs git inside the shared object store.** A git repository's own config and hooks are executable input: `core.sshCommand`, `core.fsmonitor`, `core.pager`, `url.*.insteadOf`, filter drivers, and `pre-push` are all commands, and all of them live in files the audit stage can write. Instead, `publish` creates a throwaway bare repository in its own filesystem, borrows the objects read-only through `objects/info/alternates`, and copies the refs across as the plain text they are. The push then runs entirely under configuration this image wrote.

This is verified, not assumed. Poison the shared store with a `pre-push` hook, a `core.sshCommand`, a `core.fsmonitor` and a `url.*.insteadOf`, then run both a control push from inside that store and the real `publish` stage: the control fires the hook, `publish` ignores every one of them and pushes the correct ref.

What the split does **not** prevent — two things, and both are worth stating plainly:

- **The audit stage can write arbitrary commits** onto the local `audit-reports` branch, and `publish` will push them. Report *content* is untrusted either way — the reports are produced by a model reading hostile input. The git *credential* is what the split protects.
- **The LLM API key is exposed to the audit container.** The same process that calls the LLM API also drives `makepkg`, so the key necessarily lives in the container that executes hostile code. aur-sleuth strips it from the environment it hands to `makepkg`, which stops a PKGBUILD from simply reading `$OPENAI_API_KEY` — but code running as the same UID can still dig it out of the parent process. Treat the key as reachable by a sufficiently determined package: use a key scoped to one provider with a hard spend cap, or a self-hosted model where the key is a worthless placeholder.

## Building

Build from the repository root, not from this directory:

```bash
docker build \
  --build-arg AUR_SLEUTH_REV="$(git rev-parse HEAD)" \
  -f deploy/container/Dockerfile \
  -t aur-sleuth:dev .
```

Notes on the image:

- **Arch Linux is required.** `aur-sleuth` shells out to `makepkg`, `bsdtar`, and `file(1)`. There is no Debian or Alpine equivalent.
- **`makepkg` refuses to run as root**, so the image ships a `sleuth` user (UID 1000, declared numerically) and runs as it. `--nodeps`, which the pipeline already passes, avoids needing `pacman -S` and therefore root.
- `aur-sleuth` is a [PEP 723](https://peps.python.org/pep-0723/) script whose shebang is `uv run --script`. The build resolves and caches its dependencies once, so the image is the pinning boundary — rebuild to pick up new releases.
- `AUR_SLEUTH_REV` is baked in and pinned onto `HEAD` by the `prepare` stage, so every archived report records the source revision that produced it.
- GitHub's SSH host keys are fetched from `https://api.github.com/meta` over TLS at build time, not trusted on first use by `ssh-keyscan`. Rebuild if GitHub rotates them, or point `AUR_SLEUTH_KNOWN_HOSTS` at a mounted file.

## Testing locally

Most failures — the root/`makepkg` conflict, a missing tool, the wrong clone shape — surface here for far less effort than under a scheduler.

```bash
# The volume must be writable by UID 1000.
docker volume create aur-sleuth-test
docker run --rm -u 0 -v aur-sleuth-test:/data alpine chown 1000:1000 /data

# Stage 1: clone the object store. Safe to repeat.
docker run --rm -v aur-sleuth-test:/data aur-sleuth:dev prepare

# Stage 2: discover work without spending anything.
docker run --rm -v aur-sleuth-test:/data -e OPENAI_API_KEY=unused \
  aur-sleuth:dev audit --dry-run --skip-judge --daily-budget 0.10

# A real audit of one package, for a few cents.
printf 'some-package\n' > /tmp/pkgs.txt
docker run --rm -v aur-sleuth-test:/data -v /tmp/pkgs.txt:/tmp/pkgs.txt:ro \
  -e OPENAI_API_KEY="$YOUR_KEY" -e OPENAI_BASE_URL=https://openrouter.ai/api/v1 \
  aur-sleuth:dev audit --packages-file /tmp/pkgs.txt \
  --skip-judge --skip-dashboard --daily-budget 0.05

# Stage 3a: what would be pushed, with the volume mounted read-only as the
# publish stage requires.
docker run --rm -v aur-sleuth-test:/data:ro \
  -e AUR_SLEUTH_PUBLISH_DRY_RUN=true aur-sleuth:dev publish

# Stage 3b: or write the unpublished commits to a bundle instead.
mkdir -p ./out
docker run --rm -v aur-sleuth-test:/data:ro -v "$PWD/out:/out" aur-sleuth:dev bundle
git bundle verify ./out/audit-reports.bundle
```

## What the image requires

Whatever runs it must provide:

- **UID 1000, non-root.** `makepkg` refuses to run as root.
- **One persistent volume mounted at `/data` on every stage**, writable by UID 1000, and mounted **read-only** on `publish` and `bundle`. That read-only mount is load-bearing, not decoration; see [The stages, and why](#the-stages-and-why). Keep the volume even when the job is removed: the spend ledger on it is the one piece of state that is not derivable from git, and losing it mid-day resets the budget to zero.
- **Writers never overlap.** `prepare`, `audit`, `quarantine` and `benchmark` write the store, so only one of them runs at a time. `review`, `publish` and `bundle` read a snapshot and may run beside a writer.
- **Secrets only where needed.** Only `audit` and `benchmark` get the LLM key; only `publish` gets the git key; `review` gets the LLM route for its advisory read and nothing else; `prepare`, `quarantine` and `bundle` get none. Create the git key as a deploy key with write access scoped to the one repository that holds the `audit-reports` branch, rather than a broad personal access token.
- **Restricted egress for the audit stage.** Legitimate AUR sources use http, https and the git protocol, so allow DNS plus outbound TCP on 80, 443 and 9418 to the internet and deny every private range, including link-local. A hostile `PKGBUILD` should reach nothing on your network. If the audit stage talks to a self-hosted model on a private address, add one narrow rule for that host and port rather than widening the exclusions.
- **Enough disk.** `aur-sleuth` extracts each package's sources under `$DATA_DIR/bulk-reports/`, so a run with `--jobs 4` and two models can hold eight package trees at once. `prepare` removes any tree left behind by a run that died.

Pass extra pipeline flags as arguments after the verb, for example `audit --daily-budget 1.00 --jobs 4`. Set `GIT_AUTHOR_NAME` and `GIT_AUTHOR_EMAIL` to match the identity already on the `audit-reports` commits, or the archive history gains a second author.

### Configuration

Set as environment variables on the container.

| Variable | Stage | Default | Purpose |
|---|---|---|---|
| `AUR_SLEUTH_DATA_DIR` | all | `/data` | Must point at the volume, not `$HOME` |
| `AUR_SLEUTH_FETCH_URL` | prepare | the public GitHub repo | Where the object store is cloned from |
| `AUR_SLEUTH_PUSH_URL` | publish | — | ssh URL the reports branch is pushed to |
| `AUR_SLEUTH_SSH_KEY` | publish | `/secrets/git/ssh-privatekey` | Mounted deploy key |
| `AUR_SLEUTH_KNOWN_HOSTS` | publish | `/etc/ssh/ssh_known_hosts` | Baked in at build time |
| `AUR_SLEUTH_PUBLISH_DRY_RUN` | publish | `false` | Report the ref instead of pushing |
| `AUR_SLEUTH_EXPECT_HEAD` | publish | — | The commit a review approved; publish pushes exactly that commit, and refuses if the branch no longer contains it |
| `AUR_SLEUTH_SITE_BRANCH` | publish | `site` | The branch the public page is pushed to; point GitHub Pages at it |
| `AUR_SLEUTH_REVIEW_JSON` | publish | — | The review's `REVIEW_JSON` object, written to the branch as `_dashboard/review.json` |
| `AUR_SLEUTH_FUNDING_URL` | publish | — | An https link for the public page's funding card ("Chip in"). Unset hides the button; the card's numbers still show |
| `AUR_SLEUTH_INTERNAL_STRINGS` | review, quarantine, publish | `svc.cluster.local` | Fixed strings that name your own infrastructure; a report carrying one is never published |
| `AUR_SLEUTH_REVIEW_MODEL` | review | `deepseek/deepseek-v4-flash` | The model for the advisory read |
| `AUR_SLEUTH_REVIEW_WORKERS` | review | `16` | Read requests in flight; clamped to 1..64 |
| `AUR_SLEUTH_REVIEW_BATCH` | review | `8` | Reports per read request; clamped to 1..32 |
| `AUR_SLEUTH_BENCH_MODELS` | benchmark | — | Required; comma-separated candidate models |
| `AUR_SLEUTH_BENCH_SAMPLE` / `_BUDGET` / `_JOBS` / `_SYNTHETICS` / `_PACKAGES` / `_RUN_ID` / `_ROLE` / `_TARGET` | benchmark | `20` / `2.00` / pipeline default / `true` / — / timestamp / `audit` / — | See above |
| `AUR_SLEUTH_BUNDLE_PATH` | bundle | `/out/audit-reports.bundle` | Where the bundle is written; its directory must be writable |
| `AUR_SLEUTH_SPEND_LOG_RETENTION_DAYS` | prepare | `30` | Nothing else prunes the ledger |
| `AUR_SLEUTH_MAKEPKG_TIMEOUT` | audit | `600` | Seconds for one `makepkg` invocation; its download agents have no timeout of their own |
| `AUR_SLEUTH_LLM_TIMEOUT` | audit | `180` | Seconds for one LLM request |
| `AUR_SLEUTH_LLM_RETRIES` | audit | `2` | Retries per LLM request |
| `AUR_SLEUTH_PRICING` | audit | inferred from `OPENAI_BASE_URL` | `openrouter` or `none`. Set `openrouter` when a proxy sits in front of OpenRouter, or every audit costs "0" and `--daily-budget` never binds |
| `OPENAI_API_KEY` | audit | — | Required; the audit exits 1 without it |
| `OPENAI_BASE_URL` | audit | OpenRouter | Set it explicitly |
| `GIT_AUTHOR_NAME` / `GIT_AUTHOR_EMAIL` | all | `aur-sleuth` | Identity on archive commits |

The pipeline's own `--audit-timeout` (default 900 seconds) caps a whole package/model audit from outside and applies to re-audits too; pass it after the `audit` verb like any other pipeline flag.

The pipeline's tunables can also arrive as environment variables on the `audit` stage, each checked against a type at the boundary and appended after the verb's own flags, so the environment wins: `AUR_SLEUTH_DAILY_BUDGET`, `AUR_SLEUTH_AUDIT_MODELS`, `AUR_SLEUTH_JUDGE_MODEL`, `AUR_SLEUTH_REAUDIT_MODEL`, `AUR_SLEUTH_JOBS`, `AUR_SLEUTH_MIN_VOTES`, `AUR_SLEUTH_LOOKBACK_HOURS`, `AUR_SLEUTH_SEED_TOP`, `AUR_SLEUTH_UPDATED_SHARE`, `AUR_SLEUTH_AUDIT_TIMEOUT`. This is how a deployment changes a setting without a redeploy: the baseline stays in the job's arguments, a projected ConfigMap overrides individual values.

Six more shape a single run rather than the deployment: `AUR_SLEUTH_UPDATED_COUNT` and `AUR_SLEUTH_SEED_COUNT` cap the two discovery streams for a sized run ("audit X recently updated and Y popular packages"); `AUR_SLEUTH_PACKAGES` audits exactly the named packages, skipping discovery and its already-audited filter; `AUR_SLEUTH_ESCALATE` escalates the named packages — a fresh audit by the escalation model (`AUR_SLEUTH_REAUDIT_MODEL`), then a forced judge ruling over the enlarged report set — and `AUR_SLEUTH_ESCALATE_PENDING=true` escalates everything currently worth a closer look instead, by the page's own state rule. Escalation is judge work: it runs even on a spent day, under the overrun rules above. `AUR_SLEUTH_RUN_BUDGET` gives a manual run its own spend ceiling: the daily budget then gates only the scheduled runs — a person asking for a run gets one — while the ledger still records every cost, so the daily cap sees manual spend too.

The audit stage also drops a copy of OpenRouter's model catalog at `$DATA_DIR/models-catalog.json` for the operations page's model pickers, best-effort, and after the dashboard the pipeline's scout (`bench/scout.py`) writes `$DATA_DIR/bench/scout.json`: the catalog models that undercut a seat on price, for the page's shortlist. Code only — a benchmark decides whether a candidate is actually better.

## Verifying a change

```bash
shellcheck deploy/container/scripts/entrypoint.sh bench/pipeline.sh
```

Changes to the audit logic or the prompts additionally need `bash bench/run-synthetic-tests.sh -q` and a re-run on a real package, per the repository's `CLAUDE.md`.
