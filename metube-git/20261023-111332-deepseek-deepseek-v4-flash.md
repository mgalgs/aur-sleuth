---
package: metube-git
pkgver: r838.7938837
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14476
completion_tokens: 2098
total_tokens: 16574
cost: 0.001699152
execution_time: 29.8
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T11:13:32Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no threats.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: metube.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: metube.service
    status: safe
    summary: Standard systemd service file, no malicious content.
---

Materializing metube-git from local mirror...
Materialized metube-git
Analyzing metube-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code of this PKGBUILD consists solely of variable assignments and function definitions. There are no command substitutions, external commands, or any executable statements at global scope that would run during `makepkg --printsrcinfo`. The `source` array contains a `git+` URL (standard for VCS packages) and two local file references. All `sha256sums` entries, including the `SKIP` for the git source, are benign at this stage as no download or verification occurs. The `prepare()`, `pkgver()`, `build()`, and `package()` functions are defined but not executed during metadata parsing. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package build environment. It lists common build artifact directories (`/metube`, `/pkg`, `/src`) and compiled package files (`*.pkg.tar.*`) to be ignored by version control. There is no executable code, no network access, no obfuscation, and no system-level operations. The file poses no security threat.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no threats.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, metube.service...
[1/5] Reviewing .SRCINFO, PKGBUILD, metube.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no threats.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata descriptor for an AUR package. It declares the upstream source as a Git repository from the official project URL (`https://github.com/alexta69/metube`), along with two static service and shell script files that have pinned SHA-256 checksums. The `SKIP` checksum for the VCS source is normal and required for Git-based packages. No commands, network requests, obfuscation, or file operations are present—this file only defines variables. There is no evidence of malicious behavior or supply-chain attack. The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, metube.service, metube.sh...
[2/5] Reviewing PKGBUILD, metube.service, metube.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS package. It clones the upstream repository from the official GitHub source, runs `npm install` and builds the Angular UI, then installs files into the package directory. All operations are consistent with the package's stated purpose as a self-hosted YouTube downloader. No suspicious network requests, obfuscated code, or attempts to exfiltrate data are present. The `sha256sums` are `SKIP` for the git source, which is normal and required for VCS packages. The use of `sed` and `awk` in `prepare()` only modifies the application's own files to fix line endings and change the Python interpreter name, both routine adjustments. The build process only fetches npm dependencies from the official npm registry, which is expected for an Angular frontend.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/5] Reviewing metube.service, metube.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for metube.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for a Python application. It changes directory to the application's installed location and executes the main Python script with all passed arguments. There are no network requests, obfuscated code, file modifications, or any other suspicious operations. The use of `&quot;` is simply an HTML-escaped double quote, which in a proper shell script would be a literal `"`. This is benign and consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[4/5] Reviewing metube.service...
+ Reviewed metube.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for metube.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd user service unit for the metube application. It performs routine setup tasks: creating directories (`mkdir -p`) and copying a default environment configuration file if one does not already exist. All paths use systemd specifiers (`%E`, `%C`, `%h`) to refer to standard user configuration/cache/home directories. The executed binary is `/usr/bin/metube`, the expected application. There are no network requests, obfuscated commands, or unusual file operations. The service is entirely consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed metube.service. Status: SAFE -- Standard systemd service file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,476
  Completion Tokens: 2,098
  Total Tokens: 16,574
  Total Cost: $0.001699
  Execution Time: 29.80 seconds

Final Status: SAFE


No issues found.
