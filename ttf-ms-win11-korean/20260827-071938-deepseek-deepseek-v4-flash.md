---
package: ttf-ms-win11-korean
pkgbase: ttf-ms-win11
pkgver: 10.0.26200.9168
pkgrel: 3
result: skipped
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 12004
completion_tokens: 695
total_tokens: 12699
cost: 0.00106509088
execution_time: 228.42
files_reviewed: 0
files_skipped: 1
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T07:19:36Z
file_verdicts:
  - file: (package-level)
    status: skipped
    summary: makepkg --nobuild failed, unable to download sources.
---

ttf-ms-win11-korean is built from ttf-ms-win11
Cloning https://aur.archlinux.org/ttf-ms-win11.git...
Cloned ttf-ms-win11-korean
Analyzing ttf-ms-win11-korean AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines arrays of font filenames and uses `file://` URIs as sources, meaning all files must be provided locally. The `DLAGENTS` override simply prints an error message when a file is missing; it does not execute any downloaded or untrusted code. There are no network downloads, no `pkgver()` function, and no commands in global scope that could execute malicious payloads. The `--nobuild` / `--noprepare` flags prevent any code in `prepare()`, `build()`, or `package()` from running. The use of `SKIP` for the license checksum is a routine trust decision, not a security threat.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD parse.
Downloading sources (attempt 1/3)...
Retrying in 2s...
Downloading sources (attempt 2/3)...
Retrying in 4s...
Downloading sources (attempt 3/3)...
makepkg --nobuild failed, unable to download sources.
! makepkg --nobuild failed, unable to download sources.
Audit complete! Result: Skipped -- REVIEW MANUALLY
(Skipped 1 file: makepkg --nobuild failed, unable to download sources.)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,004
  Completion Tokens: 695
  Total Tokens: 12,699
  Total Cost: $0.001065
  Execution Time: 228.42 seconds

Final Status: SKIPPED


No issues found.


Audit Skips:

[SKIPPED] makepkg --nobuild failed, unable to download sources.
