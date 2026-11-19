---
package: claude-desktop
pkgver: 2.42304.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16656
completion_tokens: 2055
total_tokens: 18711
cost: 0.001889706
execution_time: 47.47
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T19:03:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR repackaging of official .deb, no malice found.
  - file: claude-desktop.sh
    status: safe
    summary: Benign launcher script with standard configuration reading.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static top-level variable assignments: metadata fields, dependency arrays, source URLs, and checksums. No command substitutions, no function calls, no network access, and no code execution occur when the file is sourced by `makepkg --printsrcinfo`. The `package()` function contains all file operations, but it is not executed during this narrow parse step and is out of scope for this gate.

The source URLs point to Anthropic's official download host, which is expected for this package. The checksums are pinned SHA-256 values. There is nothing in the global scope that would download, run, or exfiltrate data.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; no malicious code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file used to exclude build artifacts and temporary directories from version control. It contains no executable code, no network requests, no file operations, and no obfuscated content. The entries listed (`*.deb`, `*.pkg.tar*`, `src/`, `pkg/`) are typical for Arch Linux packaging workflows and pose no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a package metadata descriptor for the AUR. It contains only declarative information: package version, description, URLs, dependencies, source URLs (`https://downloads.claude.ai/...` — the official Anthropic download domain), and SHA-256 checksums (not SKIP). There is no executable code, no obfuscation, no suspicious network destinations, and no unexpected file operations. The content follows standard AUR packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a well-documented repackaging of Anthropic's official Debian package for Claude Desktop. It downloads the `.deb` from the official Anthropic download server (`downloads.claude.ai`), provides SHA256 checksums for all sources (including the custom launcher script), extracts the payload, and installs it with appropriate permissions and symlinks for Arch Linux compatibility. The only custom script (`claude-desktop.sh`) is included as a source with a pinned checksum and serves as a transparent Wayland-aware launcher. There is no obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no deviation from standard AUR packaging practices. The package is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR repackaging of official .deb, no malice found.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR repackaging of official .deb, no malice found.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Claude Desktop Electron application. It reads optional flags from a user configuration file under `$XDG_CONFIG_HOME`, detects Wayland to set the appropriate Ozone platform flag, and then executes the packaged binary. No network requests, downloads, eval, obfuscation, or system modifications occur. The operations are exactly what one expects from a launcher script in a well-packaged application. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Benign launcher script with standard configuration reading.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Benign launcher script with standard configuration reading.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,656
  Completion Tokens: 2,055
  Total Tokens: 18,711
  Total Cost: $0.001890
  Execution Time: 47.47 seconds

Final Status: SAFE


No issues found.
