---
package: stably-orca-bin
pkgver: 1.4.209
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13545
completion_tokens: 2097
total_tokens: 15642
cost: 0.001490076
execution_time: 128.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T15:19:53Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging with pinned checksum; no malicious or suspicious behavior found.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, all checksums present, no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). There are no command substitutions, external command executions, or other dangerous operations at the top level that would be run when `makepkg --printsrcinfo` sources the file. The potentially risky operations (chmod, extracting AppImage, installing files) are inside the `prepare()` and `package()` functions, which are not executed during `--printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application launcher. It declares metadata about the "Orca" IDE (name, icon, category) and specifies the executable command `stably-orca %U`. No network requests, obfuscated code, dangerous operations, or deviations from expected packaging practices are present. The file is benign.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt AppImage application. The AppImage is downloaded from the project's official GitHub releases URL with a pinned SHA-256 checksum, and the supporting files are local files installed into the package. The `prepare()` function runs the AppImage with `--appimage-extract`; this is a normal technique for packaging AppImages and executes the upstream application's own code, not attacker-supplied content. The `package()` function only copies files into `$pkgdir`, installs a launcher script and desktop entry, and performs icon discovery and installation. There is no obfuscated code, no unexpected network access, no use of `eval`, `base64`, `curl`, `wget`, or `git fetch`, and no modification to files outside the package directories. No evidence of malicious or injected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage packaging with pinned checksum; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging with pinned checksum; no malicious or suspicious behavior found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the `AppRun` binary from that path with the `--disable-features=Vulkan` flag. There are no network requests, no downloads, no obfuscated code, no unexpected file operations, and no deviation from standard packaging practices. The comments explain the rationale for the flags and note that Wayland can be optionally enabled. The script does not contain any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Clean wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard AUR package metadata (.SRCINFO). It defines the package name, version, upstream URL (the official GitHub repository for Stably AI Orca), dependencies, and three source files: an AppImage from GitHub releases, a shell script, and a desktop file. All three sources include SHA-256 checksums (none are set to `SKIP`). There are no encoded, obfuscated, or dangerous commands — the file contains only declarative fields. No evidence of supply-chain injection, malicious network requests, or unusual operations is present.
</details>
<evidence></evidence>
<summary>Metadata only, all checksums present, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, all checksums present, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,545
  Completion Tokens: 2,097
  Total Tokens: 15,642
  Total Cost: $0.001490
  Execution Time: 128.80 seconds

Final Status: SAFE


No issues found.
