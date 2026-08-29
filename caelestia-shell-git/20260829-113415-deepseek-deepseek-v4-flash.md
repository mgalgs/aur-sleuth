---
package: caelestia-shell-git
pkgver: 2.4.0.r5.gaaf2a94
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8648
completion_tokens: 1051
total_tokens: 9699
cost: 0.00089999000
execution_time: 23.6
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 503
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T11:34:14Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata with legitimate upstream source and dependencies; no security concerns.
---

Cloning https://aur.archlinux.org/caelestia-shell-git.git...
Cloned caelestia-shell-git
Analyzing caelestia-shell-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources from the project's own GitHub repository via a standard `git+https` URL. The `sha256sums` entry is `SKIP`, which is standard for VCS packages and does not pose a risk during source fetching. The only top-level code runs variable assignments and a `pkgver()` function that performs harmless `git describe` operations. No dangerous commands (e.g., `curl`, `wget`, `eval`, base64 decoding) appear in the global scope or `pkgver()`. The `build()` and `package()` functions, which might contain riskier code, are not executed by the specified commands (`--nobuild --noprepare`). Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in relevant scopes</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in relevant scopes
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 503 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched from the project&#39;s own GitHub repository, which is expected. The SHA256 checksum is set to SKIP, which is required for VCS sources and is normal. The build and package functions use standard cmake/ninja tooling and install files into the package directory. There are no obfuscated commands, no network requests to unexpected hosts, no attempts to exfiltrate data, and no backdoors. All dependencies are legitimate Arch Linux packages. The DISTRIBUTOR variable simply passes a string for build metadata and poses no risk. No security concerns detected.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with no malicious behavior detected.
</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for a `-git` package. It declares the upstream VCS source from the project's own GitHub repository (`https://github.com/caelestia-dots/shell.git`), lists normal build dependencies, and uses `sha256sums = SKIP`, which is required and expected for VCS sources. No suspicious commands, network endpoints, file operations, or encoded content are present.

The dependency list is extensive but consistent with a desktop shell application (Qt6, Quickshell, audio/backlight/display utilities, fonts, etc.). There is no evidence of malicious behavior, obfuscation, data exfiltration, or unexpected execution of code. The package's declared source is the upstream repository, and no unrelated hosts or download/execute patterns appear.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata with legitimate upstream source and dependencies; no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata with legitimate upstream source and dependencies; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,648
  Completion Tokens: 1,051
  Total Tokens: 9,699
  Total Cost: $0.000900
  Execution Time: 23.60 seconds

Final Status: SAFE


No issues found.
