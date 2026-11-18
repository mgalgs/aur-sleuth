---
package: claude-mem
pkgver: 15.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11711
completion_tokens: 2197
total_tokens: 13908
cost: 0.00144945
execution_time: 18.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T08:10:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard npm PKGBUILD with pinned checksums, no anomalies.
  - file: claude-mem-worker.service
    status: safe
    summary: Standard systemd service file for claude-mem worker.
---

Materializing claude-mem from local mirror...
Materialized claude-mem
Analyzing claude-mem AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `package()` function at the top-level scope. No command substitutions, backticks, or other executable code (e.g., `eval`, `curl`, `wget`) appear outside of function bodies. The `sha256sums` array is fully specified (no SKIP entries). Running `makepkg --printsrcinfo` will source this file, which simply sets metadata variables – there is no mechanism for remote code execution or data exfiltration during this step. The `package()` function content is not executed at this stage and will be reviewed in the full audit.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata descriptor. It declares the package name, version, dependencies, and source URLs. The sources point to the official npm registry for the upstream tarball and a local service file, both with pinned SHA-256 checksums. There is no executable code, no network requests beyond declaring the expected upstream, no obfuscation, and no deviation from normal packaging metadata. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE, claude-mem-worker.service...
[1/4] Reviewing PKGBUILD, LICENSE, claude-mem-worker.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a legal document used to specify the terms under which the software is distributed. There is no security concern.
</details>
<evidence>
</evidence>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-mem-worker.service...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for an npm-based tool (`claude-mem`). It downloads a tarball from the official npm registry, verifies it with a hardcoded SHA-256 checksum (pinned, not SKIP), and installs it via `npm install -g --prefix`. There are no suspicious network requests, no obfuscated code, no eval or base64 usage, and no unexpected file operations. The `find` + `sed` command removes build‑time references from `package.json` files, which is a routine cleanup step. A systemd user service file is also shipped and installed; its checksum is pinned as well. Nothing in this file deviates from normal packaging practices or exhibits supply‑chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard npm PKGBUILD with pinned checksums, no anomalies.</summary>
</security_assessment>

[3/4] Reviewing claude-mem-worker.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm PKGBUILD with pinned checksums, no anomalies.
LLM auditresponse for claude-mem-worker.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service unit file for the claude-mem application. It launches a Bun runtime to execute a worker script located under `/usr/lib/node_modules/claude-mem/plugin/scripts/worker-service.cjs`, which is the expected location for an installed Node.js/Bun package. The only environment variable set is `PATH`, which includes the user's `%h/.local/bin` directory — a typical expansion for user-local binaries. There are no network requests, obfuscated commands, unusual encoding, or system modifications. No signs of injected malicious behavior are present; the file is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file for claude-mem worker.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-mem-worker.service. Status: SAFE -- Standard systemd service file for claude-mem worker.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,711
  Completion Tokens: 2,197
  Total Tokens: 13,908
  Total Cost: $0.001449
  Execution Time: 18.29 seconds

Final Status: SAFE


No issues found.
