---
package: passkeyd
pkgver: 1.9.0
pkgrel: 9
result: safe
model: anthropic/claude-sonnet-4.6
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
triggered_by: passkeyd/20260912-193226-judge.json
prompt_tokens: 13872
completion_tokens: 5617
total_tokens: 19489
cost: 0.125871
execution_time: 63.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T19:40:13Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary install; no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO file; prebuilt binary noted but not malicious.
  - file: passkeyd.install
    status: safe
    summary: Undisclosed telemetry to PostHog; data is non-sensitive, decision is SAFE.
---

Materializing passkeyd from local mirror...
Materialized passkeyd
Analyzing passkeyd AUR package with anthropic/claude-sonnet-4.6
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists entirely of standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `license`, `depends`, `conflicts`, `makedepends`, `url`, `source`, `sha256sums`, `options`, `backup`, and `install`. There are no command substitutions, no `eval`, no calls to `curl`/`wget`, and no other executable statements at the top level that would run during sourcing.

The only executable code is inside `package()`, which is not invoked by `makepkg --printsrcinfo`. There is nothing suspicious in the global scope that could execute during this step.
</details>
<evidence>
</evidence>
<summary>All top-level code is standard variable assignments; no executable risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- All top-level code is standard variable assignments; no executable risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, passkeyd.install...
[0/3] Reviewing .SRCINFO, passkeyd.install, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is straightforward and follows standard packaging practices for a prebuilt binary distribution. It downloads a pre-compiled tarball from the package's own upstream GitHub releases page (`github.com/bjn7/passkeyd`), which matches the declared `url` field. A SHA256 checksum is provided (not `SKIP`), giving basic integrity verification for the downloaded tarball.

The `package()` function performs only standard `install` operations — placing binaries, configuration files, a systemd service unit, and icons into `$pkgdir`. There is no obfuscated code, no `eval`, no `curl|bash`, no unexpected network requests, and no file operations outside of `$pkgdir`/`$srcdir`.

One minor note: this package installs prebuilt binaries rather than compiling from source, meaning users are trusting the upstream author's compiled artifacts. This is a trust/hygiene consideration (not verifiable reproducibility), but it is not a supply-chain attack in the PKGBUILD itself. The referenced `passkeyd.install` file is not shown here; its content would warrant separate review.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt binary install; no malicious code detected.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, passkeyd.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary install; no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux source info file with no signs of injected malicious behavior. It declares a single source tarball fetched directly from the package's own upstream GitHub repository (`github.com/bjn7/passkeyd`), which matches the declared `url` field. A SHA-256 checksum is provided (not `SKIP`), and the hash appears to be a valid 64-character hex string.

One noteworthy hygiene point: the tarball name (`passkeyd-x86_64-unknown-linux-gnu.tar.gz`) strongly suggests this is a **prebuilt binary** (the `-unknown-linux-gnu` suffix is a Rust target triple). Distributing prebuilt binaries is a trust concern — users cannot independently verify what source code was compiled into the binary — but it is not itself evidence of a supply-chain attack in the AUR packaging layer. The checksum at least pins this specific binary release.

No obfuscation, no unexpected network destinations, no eval/curl|bash patterns, no file exfiltration, and no deviation from standard AUR packaging practices are present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO file; prebuilt binary noted but not malicious.
</summary>
</security_assessment>

[2/3] Reviewing passkeyd.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO file; prebuilt binary noted but not malicious.
LLM auditresponse for passkeyd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `passkeyd.install` script contains a `_send_telemetry()` function that silently POSTs analytics data to PostHog (`https://eu.i.posthog.com/capture/`) on both installation and upgrade, without explicitly notifying the user. The data transmitted includes: system locale (`$LANG`), the UI variant selected (ice/kde/gtk), package version, install date, and days since installation. A random UUID is generated and persisted to `/tmp/passkeyd-telemetry.id` as a persistent identifier.

While this behavior is unusual for a pacman `.install` script — telemetry is far more common in application binaries than in packaging hooks — the data collected does not constitute sensitive exfiltration. It does not touch `/etc/shadow`, SSH/GPG keys, browser credentials, private files, or meaningful secret environment variables. PostHog (`eu.i.posthog.com`) is a well-known, legitimate product analytics service, not an attacker-controlled endpoint. The `$LANG` variable reveals locale/region information, which is mildly sensitive but is a far cry from the credential or key theft that characterizes a supply-chain attack.

Per the assessment guidelines, telemetry and data-collection practices — even when present in packaging scripts — are upstream product decisions and should be flagged as a **privacy concern** rather than a security threat. The decision remains SAFE, though users should be aware that install/upgrade events silently report analytics to a third party with a hardcoded API key.
</details>
<evidence>
</evidence>
<summary>
Undisclosed telemetry to PostHog; data is non-sensitive, decision is SAFE.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed passkeyd.install. Status: SAFE -- Undisclosed telemetry to PostHog; data is non-sensitive, decision is SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 13,872
  Completion Tokens: 5,617
  Total Tokens: 19,489
  Total Cost: $0.125871
  Execution Time: 63.86 seconds

Final Status: SAFE


No issues found.
