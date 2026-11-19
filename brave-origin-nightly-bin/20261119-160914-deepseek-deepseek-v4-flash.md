---
package: brave-origin-nightly-bin
pkgver: 1.102.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 16422
completion_tokens: 7439
total_tokens: 23861
cost: 0.00281700
execution_time: 56.24
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T16:09:14Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: Standard open-source license text, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard browser launcher, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious code in PKGBUILD.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the only part executed by `makepkg --printsrcinfo`) consists solely of variable assignments and function definitions. There are no command substitutions, `eval`, `curl`, `wget`, or other operations that could execute at sourcing time. The `source` arrays point to the official Brave browser GitHub releases with valid HTTPS URLs and hardcoded SHA512 checksums. The `prepare()` and `package()` functions contain only file extraction and installation commands, but these are not executed during `--printsrcinfo`. No obfuscated code, hidden payloads, or data exfiltration mechanisms are present at the global scope. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a verbatim copy of the Mozilla Public License Version 2.0 (MPL-2.0). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a standard open-source license file that accompanies software packages. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard open-source license text, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- Standard open-source license text, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (`.SRCINFO`) containing package description, dependencies, and source URLs. All source URLs point to the official Brave browser GitHub releases. Checksums are provided for all sources, including the helper shell script. No executable code, suspicious network requests, obfuscation, or system modifications are present. The file is standard AUR packaging metadata.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the Brave-Origin-Nightly browser. It reads optional user-specified command-line flags from a configuration file in the user's XDG config directory, sets a default user data directory if not already defined, and then executes the browser binary with the collected flags. No network requests, downloads, obfuscated code, or unexpected file operations are present. The only file accessed is the user's own configuration file, which is intended functionality. The script does not introduce any supply-chain attack vectors; it simply prepares environment variables and runs the application.
</details>
<evidence></evidence>
<summary>Standard browser launcher, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard browser launcher, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a binary release. It downloads the Brave Nightly .deb packages from the official GitHub releases (`github.com/brave/brave-browser`), verifies them with hard-coded SHA-512 checksums, and extracts the contents. No obfuscated code, unexpected network requests, or dangerous commands (eval, base64, curl|bash, etc.) are present. The only operations are standard file creation, extraction, installation, and permissions setting.

The wrapper script listed as the generic source (`$pkgname.sh`) is never executed during the build and is only installed as the binary launcher; its content is not provided for analysis, but its inclusion alone does not constitute evidence of malice within the PKGBUILD. The `chmod 4755` on `chrome-sandbox` is an upstream requirement for browser sandboxing. While the preparation step (`tar -xf data.tar.xz`) assumes the .deb has been pre‑extracted (which is not automatically performed by makepkg), this is a packaging completeness issue, not a security threat. No supply‑chain attack indicators were found.
</details>
<evidence>
</evidence>
<summary>No evidence of malicious code in PKGBUILD.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious code in PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,422
  Completion Tokens: 7,439
  Total Tokens: 23,861
  Total Cost: $0.002817
  Execution Time: 56.24 seconds

Final Status: SAFE


No issues found.
