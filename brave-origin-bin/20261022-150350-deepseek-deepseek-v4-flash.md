---
package: brave-origin-bin
pkgver: 1.98.60
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15710
completion_tokens: 3338
total_tokens: 19048
cost: 0.002037126
execution_time: 42.7
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T15:03:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable content, safe.
  - file: brave-origin-bin.sh
    status: safe
    summary: Standard browser wrapper script, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no supply-chain indicators.
  - file: brave-origin.desktop
    status: safe
    summary: Standard .desktop file; no security issues.
---

Materializing brave-origin-bin from local mirror...
Materialized brave-origin-bin
Analyzing brave-origin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions (prepare() and package()) at the top level. No command substitutions, backtick expansions, or any other executable code is present in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The functions are not invoked during this step, so they pose no risk. All source URLs point to the official Brave GitHub releases, which is expected for this package.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file used by Arch Linux packaging tools to describe package sources, dependencies, and checksums. It contains no executable code, no instructions to run commands, and no obfuscated content. All source URLs point to the official Brave GitHub releases, and SHA256 checksums are provided for integrity verification. There are no network requests to unexpected hosts, no encoded payloads, and no file manipulation directives beyond standard packaging fields. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Metadata file, no executable content, safe.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-bin.sh, brave-origin.desktop...
[1/4] Reviewing PKGBUILD, brave-origin-bin.sh, brave-origin.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable content, safe.
LLM auditresponse for brave-origin-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper/launcher script for the brave-origin-bin browser package. It performs the following operations, all of which are routine and expected:
- It defines a configuration file path under the user's `~/.config` directory (`brave-origin-flags.conf`).
- It reads that file and parses out comment/blank lines, building an array of command-line flags.
- It exports an environment variable (`CHROME_VERSION_EXTRA=stable`) typical for Chromium-based browsers.
- It executes the main browser binary (`/opt/brave-origin-bin/brave-origin`) with the collected flags and any arguments passed to the script.

There are no network requests (`curl`, `wget`), no obfuscated or encoded code, no `eval`/`base64` usage, no file writes or modifications, and no attempts to exfiltrate data. The script does exactly what a browser launcher should do: read a configuration file and start the application. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard browser wrapper script, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin.desktop...
+ Reviewed brave-origin-bin.sh. Status: SAFE -- Standard browser wrapper script, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for packaging a prebuilt binary from Brave's official GitHub releases. All source URLs point to the project's own repository, SHA-256 checksums are provided for every archive, and no unexpected network fetches, obfuscation, or dangerous commands (eval, curl|bash, base64 decoding) are present. The `chmod 4755` on `chrome-sandbox` is a required security hardening step for Chromium-based browsers and is not indicative of malice. The `prepare()` and `package()` functions only extract the upstream archive and install files into `$pkgdir` – no modification of system files outside the package scope, no data exfiltration, and no injection of arbitrary code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no supply-chain indicators.</summary>
</security_assessment>

[3/4] Reviewing brave-origin.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no supply-chain indicators.
LLM auditresponse for brave-origin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop entry file for the Brave Origin web browser. It contains only metadata such as name, description, category associations, MIME type handling, and launch actions (Exec lines) that invoke the `brave-origin` binary with normal arguments (`%U` for URLs, `--incognito` for private browsing). There is no embedded code, no network requests, no obfuscated strings, and no unusual file operations. The file poses no supply-chain risk and follows standard packaging conventions for desktop applications.
</details>
<evidence></evidence>
<summary>Standard .desktop file; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin.desktop. Status: SAFE -- Standard .desktop file; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,710
  Completion Tokens: 3,338
  Total Tokens: 19,048
  Total Cost: $0.002037
  Execution Time: 42.70 seconds

Final Status: SAFE


No issues found.
