---
package: microsoft-edge-stable-bin
pkgver: 155.0.4283.62
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17386
completion_tokens: 2509
total_tokens: 19895
cost: 0.002038764
execution_time: 25.33
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T11:02:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Benign install script; only prints user notices.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard browser launcher script, no malicious activity.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Microsoft Edge binary package.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable and array definitions (pkgname, source, sha256sums, etc.) and a `package()` function definition. No command substitutions, backticks, eval, or other code that would execute when the file is sourced. All values are static strings or simple string interpolations using variables defined on the same scope. There is no malicious code that would run during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude common build artifacts (log files, `.zst`, `.deb`, and `.rpm` packages) from version control. It contains no executable code, no network operations, no obfuscation, and no references to external resources. This is a normal and expected file in an AUR package repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used to check for new upstream versions of software packages. It defines a regex-based source that scrapes version information from Microsoft's official package repository (`packages.microsoft.com`). The URL points to the legitimate Microsoft Edge package index, and the regex extracts the version string. There is no obfuscation, no dangerous commands, and no attempt to download or execute arbitrary code. This is a standard and expected practice for maintaining AUR packages that track upstream releases.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains standard package metadata for the `microsoft-edge-stable-bin` AUR package. It defines dependencies, sources, and checksums. The primary source is fetched from the official Microsoft repository (`packages.microsoft.com`), and the two additional source files are local to the AUR package. All three source entries have corresponding SHA256 checksums (none set to `SKIP`). No commands, scripts, or executable code are present in this file—it is purely declarative metadata. There is no evidence of malicious behavior such as obfuscation, exfiltration, backdoors, or downloads from untrusted hosts. The file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file is a standard post-installation hook for the `microsoft-edge-stable-bin` AUR package. It defines colored output helper functions and prints informational notes to the user about where to place custom flags and what the launcher is called. There are no network requests, file modifications, obfuscated code, or any operations beyond printing text to the terminal. The script does exactly what an install script is expected to do: inform the user. No signs of malicious or supply-chain attack behavior are present.
</details>
<evidence>
</evidence>
<summary>Benign install script; only prints user notices.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Benign install script; only prints user notices.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for Microsoft Edge Stable. It reads optional flags from a user configuration file (`~/.config/microsoft-edge-stable-flags.conf`) and passes them to the Edge binary. The script uses `cat` to read the file and `exec` to launch the browser with the user-supplied flags and any additional arguments. There are no network requests, no encoded or obfuscated commands, no file modifications outside the user's config, and no invocation of dangerous commands like `eval`, `curl`, or `wget`. The behavior is completely consistent with legitimate browser wrappers found in AUR packages and other distributions. The use of user-controlled flags is normal and expected functionality for such a launcher.
</details>
<evidence>
</evidence>
<summary>Standard browser launcher script, no malicious activity.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard browser launcher script, no malicious activity.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Microsoft Edge .deb package from the legitimate Microsoft package repository (`packages.microsoft.com`) with pinned SHA-256 checksums for all sources. There are no suspicious network requests, obfuscated code, or unexpected commands. The `package()` function performs standard operations: extracting the binary package, setting the SUID bit on the sandbox binary (required for Chromium-based browsers), resizing product logos using ImageMagick, installing icons and a launcher script, and placing the license file. All actions are consistent with packaging a prebuilt binary browser and do not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Microsoft Edge binary package.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Microsoft Edge binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,386
  Completion Tokens: 2,509
  Total Tokens: 19,895
  Total Cost: $0.002039
  Execution Time: 25.33 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
