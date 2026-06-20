# AUR Sleuth Dashboard & Pipeline Improvement Plan

Tracked improvements from the 2026-06-20 review session. Items are
grouped by area and priority. Check the box when complete.

---

## UI/UX — High Priority

### U1: Color legend for audit/judge blocks
The colored squares in the Audits and Judgements columns have no
explanation. New visitors have to guess what they mean.

**What to do:** Add a small inline legend near the table (below the
filter bar or as a popover on the column header). Show:
`green=safe, red=unsafe, orange=inconclusive, gray=skipped, gold border=re-audit`.

**Files:** `bench/generate-dashboard.py` (HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: legend is visible above or near the table
- [ ] Hover on a legend item shows the label text
- [ ] Legend doesn't take excessive vertical space

---

### U2: Link package names to AUR
Package names are clickable but only toggle the detail view. There's no
way to get to the actual AUR page.

**What to do:** Add a small external-link icon next to each package name
that opens `https://aur.archlinux.org/packages/{name}` in a new tab.
Keep the row-click behavior for detail expansion.

**Files:** `bench/generate-dashboard.py` (renderTable in HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: clicking the icon opens the correct AUR page
- [ ] Clicking elsewhere on the row still toggles the detail view
- [ ] Icon is subtle (small, muted color) and doesn't dominate the row

---

### U3: Result distribution chart should use package-level majorities
The doughnut chart counts every individual audit report (2,229 items),
so a package audited 5 times gets 5 votes. This inflates the
proportions.

**What to do:** Change the chart to show per-package majority verdicts
(712 items). One slice per majority category: safe, unsafe,
inconclusive, contested.

**Files:** `bench/generate-dashboard.py` (summary stats in
`build_index_data`, chart rendering in HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: chart title or tooltip reflects "packages" not "reports"
- [ ] Numbers in chart sum to the total package count, not report count
- [ ] "Contested" appears as a category if any packages have that majority

---

### U4: Clickable "Needs Attention" summary card
The red "2" in the Needs Attention card is static. Users expect to
click it and see those packages.

**What to do:** Make the card clickable — clicking it activates the
"Needs Attention" filter and scrolls to the table.

**Files:** `bench/generate-dashboard.py` (HTML_TEMPLATE — card div and
setupEventListeners)

**Acceptance:**
- [ ] Chrome MCP: clicking the card activates the Needs Attention filter
- [ ] The Needs Attention button in the filter bar shows as active
- [ ] Table scrolls into view if not already visible

---

### U5: Show "—" instead of "0" for files column on skipped packages
Packages where source download failed show "0" in the Files column,
which looks like a bug rather than "not applicable."

**What to do:** If `files_reviewed` is 0 and all audits are
skipped/inconclusive, show "—" instead of "0".

**Files:** `bench/generate-dashboard.py` (renderTable in HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: skipped packages show "—" in Files column
- [ ] Packages with actual 0 files reviewed but non-skipped results still show "0"

---

## UI/UX — Medium Priority

### U6: Sticky table header
When scrolling through 712 packages, the column headers scroll off
screen.

**What to do:** Add `position: sticky; top: 0; z-index: 10` to the
`<thead>` or header `<tr>`, with a background color so it's opaque.

**Files:** `bench/generate-dashboard.py` (CSS in HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: scroll down 20+ rows, header stays visible at top
- [ ] Header has a solid background (no content bleeding through)

---

### U7: Cost breakdown tooltip
The Cost column lumps audit + judge cost into one number.

**What to do:** Add a tooltip (title attribute or custom) showing
"Audits: $X / Judges: $Y" on hover. Requires splitting cost in the
per-package data.

**Files:** `bench/generate-dashboard.py` (build_index_data for split
cost, renderTable for tooltip)

**Acceptance:**
- [ ] Chrome MCP: hover on a cost cell shows the breakdown
- [ ] Audit cost + judge cost sums to the displayed total

---

### U8: Deduplicate identical judge verdicts in display
Some packages (e.g. icaclient) show 2 judge verdicts with identical
model, reasoning, and verdict — the judge ran twice on the same
reports.

**What to do:** Deduplicate judges in the detail view by
(model, correct_verdict, reasoning) tuple. Show a "(x2)" count if
duplicated. Separately, prevent the pipeline from re-judging packages
that already have a judge verdict for the current version.

**Files:** `bench/generate-dashboard.py` (renderDetail in HTML_TEMPLATE),
`bench/judge.sh` (check_triggers or judge_package — skip if already
judged at this version)

**Acceptance:**
- [ ] Chrome MCP: icaclient detail view shows 1 judge verdict (not 2 identical)
- [ ] Running judge.sh on an already-judged package at the same version is a no-op
- [ ] A version bump triggers a new judge run

---

### U9: Filter out zero-cost "unknown" model from Cost by Model chart
The "unknown" bar at the bottom of the Cost by Model chart has zero
cost and adds noise.

**What to do:** Filter out models with zero cost from the chart data.

**Files:** `bench/generate-dashboard.py` (renderCharts in HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP: no "unknown" bar with $0 in the chart
- [ ] Models with actual cost still appear

---

## UI/UX — Lower Priority

### U10: Mobile responsiveness
The table doesn't scroll horizontally on narrow screens.

**What to do:** Wrap the table in a `div` with `overflow-x: auto`.

**Files:** `bench/generate-dashboard.py` (HTML_TEMPLATE)

**Acceptance:**
- [ ] Chrome MCP at 375px width: table is horizontally scrollable

---

### U11: URL hash for filter state
Can't share a link to e.g. the "Needs Attention" view.

**What to do:** Set `location.hash` when a filter is activated, and
read it on page load to restore the filter state. E.g.
`#needs-attention`, `#contested`, `#unsafe`.

**Files:** `bench/generate-dashboard.py` (setupEventListeners + init in
HTML_TEMPLATE)

**Acceptance:**
- [ ] Navigating to `https://mgalgs.io/aur-sleuth/#needs-attention` shows the filtered view
- [ ] Clicking a filter updates the URL hash without a page reload
- [ ] Browser back/forward navigates between filter states

---

### U12: Show AUR vote count / popularity
Helps contextualize how many users are affected by unsafe packages.

**What to do:** Add a "Votes" column to the table, sourced from the AUR
metadata dump. Requires passing vote counts through the pipeline into
the dashboard data.

**Files:** `bench/pipeline.sh` (pass vote data), `bench/generate-dashboard.py`
(include in data.json + render column)

**Acceptance:**
- [ ] Chrome MCP: "Votes" column visible in table with numeric values
- [ ] Sorting by Votes works
- [ ] Vote counts match AUR (spot-check 3 packages)

---

## Audit Process/Flow — High Priority

### P1: Skip re-judging all-skipped packages
The judge wastes money reviewing packages where every audit was
"skipped due to download failure." These should be auto-classified
without an LLM call.

**What to do:** In `check_triggers()` in judge.sh, if all reports have
`result: skipped`, return 1 (no trigger). The package stays
inconclusive without spending on a judge call.

**Files:** `bench/judge.sh` (check_triggers function)

**Acceptance:**
- [ ] Run `judge.sh --package anodizer-bin` (all-skipped) — exits with no judge call
- [ ] Run `judge.sh --package 1password` (has real results) — still triggers normally
- [ ] No judge reports created for all-skipped packages

---

### P2: Deduplicate source downloads across models
Currently each model clones the AUR repo and runs `makepkg --nobuild`
independently. This doubles download time and causes race conditions
where one model's download succeeds while the other fails.

**What to do:** In `pipeline.sh`'s `audit_package()`, run `makepkg
--nobuild` once in a shared temp directory, then invoke aur-sleuth with
`--pkgdir` pointing to the shared directory for each model. Requires
aur-sleuth to support read-only `--pkgdir` usage (it already does, but
verify no writes to pkgdir occur during audit).

**Files:** `bench/pipeline.sh` (audit_package, run_audit)

**Acceptance:**
- [ ] Run pipeline on a package — only one `makepkg --nobuild` invocation per package (check logs)
- [ ] Both models produce reports from the same source files
- [ ] If download fails, both models get skipped (no split result)
- [ ] Existing single-package `./aur-sleuth <pkg>` workflow unchanged

---

### P3: Filter out ghost audit reports (zero cost, zero files)
Some packages (e.g. proton-ge-custom-bin) have audit entries with
`cost: 0, files_reviewed: 0, execution_time: 0` from the
pre-frontmatter era. These pollute the data and skew majority
calculations.

**What to do:** In `build_index_data()`, skip audit entries where
`cost == 0 AND files_reviewed == 0 AND result not in ('skipped',)`.
Alternatively, clean them from the audit-reports branch directly.

**Files:** `bench/generate-dashboard.py` (build_index_data)

**Acceptance:**
- [ ] Run dashboard generator — proton-ge-custom-bin shows 4 audits not 5
- [ ] Ghost report (0 cost, 0 files, 0.0s) is excluded
- [ ] Legitimate skipped reports (with cost > 0) are still included

---

## Audit Process/Flow — Medium Priority

### P4: PKGBUILD-only fallback when source download fails
When `makepkg --nobuild` fails, the audit currently returns "skipped"
with zero files reviewed. But the PKGBUILD itself is already available
(cloned from AUR) and contains the most critical attack surface
(`prepare()`, `build()`, `package()` functions, source URLs).

**What to do:** In `do_agentic_audit()`, if `download_sources()` fails,
fall back to auditing just the PKGBUILD (and any `.install` files) with
a modified prompt noting that sources were unavailable. Mark the result
as the PKGBUILD-only verdict rather than "skipped."

**Files:** `aur-sleuth` (do_agentic_audit function, around line 2029)

**Acceptance:**
- [ ] Audit a package with broken source URLs — still produces a result (safe/unsafe/inconclusive) from PKGBUILD analysis
- [ ] Report frontmatter includes `source_download: failed` or similar metadata
- [ ] Full-source audits are unaffected
- [ ] File verdicts list shows PKGBUILD and .install files only

---

### P5: Track "why skipped" in report metadata
Currently all skips look the same. Differentiating "source download
failed" vs "binary file detected" vs "git clone timeout" would let the
pipeline retry only transient failures.

**What to do:** Add a `skip_reason` field to frontmatter when result is
skipped. Categories: `download_failed`, `binary_file`, `clone_timeout`,
`read_error`, `no_files`.

**Files:** `aur-sleuth` (AuditResult, _write_report_frontmatter,
download_sources, file_is_plain_text)

**Acceptance:**
- [ ] Audit a package with broken sources — report contains `skip_reason: download_failed`
- [ ] Audit a package with binary-only files — report contains `skip_reason: binary_file`
- [ ] Dashboard data includes skip_reason when available
- [ ] Pipeline can filter candidates by skip_reason for targeted retries

---

### P6: Skip re-audit when original failure was source download
The judge sometimes recommends re-audit on a package where all audits
were skipped due to download failure. The re-audit will fail for the
same reason.

**What to do:** In `do_reaudit()` in judge.sh, check the judge report
for coverage issues mentioning download failure. If all original audits
were skipped, skip the re-audit and log the reason.

**Files:** `bench/judge.sh` (do_reaudit function)

**Acceptance:**
- [ ] Run re-audit on a package where all audits were download failures — skipped with log message
- [ ] Packages with real audit results still get re-audited normally

---

### P7: Popularity-weighted budget allocation
A package with 1000 votes that costs $0.15 to audit is worth more than
a 5-vote package at the same cost. The pipeline should prioritize
higher-popularity packages.

**What to do:** In `discover_packages()` in pipeline.sh, sort candidates
by vote count descending (already partially done with `--seed-top`).
Ensure the most popular packages are audited first before the budget
runs out.

**Files:** `bench/pipeline.sh` (discover_packages, candidate ordering)

**Acceptance:**
- [ ] Run pipeline with --daily-budget 1.00 — the audited packages have higher vote counts than the skipped ones
- [ ] `--seed-top` still works as before
- [ ] Cost tracking unchanged
