---
package: claude-mem
pkgver: 15.18.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11863
completion_tokens: 3146
total_tokens: 15009
cost: 0.00163395
execution_time: 29.79
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T08:27:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no signs of malicious injection.
  - file: claude-mem-worker.service
    status: safe
    summary: Standard systemd unit, no malicious content.
---

Materializing claude-mem from local mirror...
Cloning https://aur.archlinux.org/claude-mem.git...
Cloned claude-mem
Analyzing claude-mem AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and a function definition for package(). No command substitutions ($(...) or backticks), no eval, no calls to external tools, and no encoded or obfuscated strings are present. Since `makepkg --printsrcinfo` only sources the global scope and does not execute functions, there is no risk of malicious code execution during this step.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a structured metadata file used by the Arch User Repository (AUR) to describe a package. It contains only declarative fields such as `pkgbase`, `pkgver`, `depends`, `source`, and `sha256sums`.  There is no executable code, obfuscated content, or dangerous commands (like `eval`, `curl`, `wget`, `base64`) present. All source references point to the official npm registry (`registry.npmjs.org`) and an accompanying systemd service file, which is standard packaging practice.  The checksums are present and non‑SKIP, providing integrity verification. No evidence of a supply‑chain attack, exfiltration, backdoors, or any other malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
[1/4] Reviewing LICENSE, PKGBUILD, claude-mem-worker.service...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text, commonly used in open source software packages. It contains no executable code, no network requests, no file operations, or any other suspicious behavior. The file is purely a plain text license and presents no supply-chain security risk.
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
This PKGBUILD follows standard AUR packaging practices for an npm-based package. The source is fetched from the legitimate npm registry (`registry.npmjs.org`) with a pinned version and a valid SHA-256 checksum. The `package()` function uses `npm install` in a standard way (with `--no-fund --no-audit` for safety and `--prefix` to install into `$pkgdir`), then cleans up build artifacts and sets correct ownership. No obfuscation, encoded commands, unauthorized network requests, or suspicious file operations are present. The file is consistent with a well-maintained AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no signs of malicious injection.</summary>
</security_assessment>

[3/4] Reviewing claude-mem-worker.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no signs of malicious injection.
LLM auditresponse for claude-mem-worker.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd user service unit for the claude-mem package. It runs a script using /usr/bin/bun and sets PATH to include the user's local bin directory. There is no obfuscated code, no network requests, no execution of untrusted content, and no exfiltration of data. The unit follows standard packaging practices for user services. Including %h/.local/bin in PATH is a common pattern and not evidence of malice. No supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard systemd unit, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-mem-worker.service. Status: SAFE -- Standard systemd unit, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,863
  Completion Tokens: 3,146
  Total Tokens: 15,009
  Total Cost: $0.001634
  Execution Time: 29.79 seconds

Final Status: SAFE


No issues found.
