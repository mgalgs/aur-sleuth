---
package: matlab-gcc-fortran
pkgbase: matlab
pkgver: R2026a+26.1.0.3251617
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36182
completion_tokens: 3963
total_tokens: 40145
cost: 0.003908233448
execution_time: 72.91
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T11:23:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: AUR nvchecker config checking MATLAB Docker tags; safe.
  - file: matlab.install
    status: safe
    summary: Benign install script; only prints activation reminder and calls post_install on upgrade.
  - file: PKGBUILD
    status: safe
    summary: Standard MATLAB packaging; no malicious code found.
---

matlab-gcc-fortran is built from matlab
Materializing matlab-gcc-fortran from local mirror...
Materialized matlab-gcc-fortran
Analyzing matlab-gcc-fortran AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level/global scope of this PKGBUILD. The top-level content consists of variable and array definitions, parameter expansions, an `if` guard, and a `for` loop that adds entries to `provides`/`conflicts`.

The `for` loop executes only when a product other than `"MATLAB"` is enabled. In this file all such entries are commented out, so the loop body, including the `local _product_normalized="$(printf ... | tr ...)"` command substitution, is not reached. Even if it were reached, it would only perform local text normalization (printf/tr), not download, execute, or exfiltrate anything. The `local` usage outside a function would be a scripting error rather than a security issue. No top-level network requests, downloads, encoding tricks, or dangerous command execution are present. The functions (`prepare()`, `build()`, `package_*()`) are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no malicious code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative package metadata such as package name, version, description, dependencies, provides, conflicts, and build options. There are no executable commands, no network requests, no obfuscation, and no file operations. The content is entirely consistent with routine AUR packaging practices and does not contain any indicators of malicious supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files except those explicitly allowed: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and files matching `*.install`. No commands, network requests, or obfuscated code are present. This is a normal packaging practice file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[2/5] Reviewing .nvchecker.toml, PKGBUILD, matlab.install...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool used to check for new upstream versions of software. The active section configures checking for new MATLAB releases by inspecting tags from the official Mathworks Docker container on Docker Hub (`docker.io/mathworks/matlab`). The patterns are standard for version extraction. The commented-out sections show alternative source methods that were considered (GitHub API, regex scraping) but are not active. No malicious activity, obfuscated commands, network exfiltration, or unexpected operations are present. The configuration adheres to normal AUR tooling practices for automatic version detection.
</details>
<evidence></evidence>
<summary>AUR nvchecker config checking MATLAB Docker tags; safe.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, matlab.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- AUR nvchecker config checking MATLAB Docker tags; safe.
LLM auditresponse for matlab.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard Arch Linux package install scripts. `post_install` prints a message reminding the user to activate MATLAB using `MathWorksProductAuthorizer`, and `post_upgrade` simply calls `post_install`. There are no network operations, file modifications, obfuscated commands, or execution of untrusted code. This is benign packaging behavior with no security concerns.
</details>
<evidence>
</evidence>
<summary>
Benign install script; only prints activation reminder and calls post_install on upgrade.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed matlab.install. Status: SAFE -- Benign install script; only prints activation reminder and calls post_install on upgrade.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for installing MATLAB from MathWorks via the official MPM tool. It employs normal packaging operations: downloading and installing from the vendor's own infrastructure (`matlab-mpm`), generating a desktop file, separating Java/JRE components, patching MEX compiler paths, and fixing library linking with `patchelf`.  

No evidence of supply-chain attack was found. There are no obfuscated commands, no unexpected network requests (all downloads go through MathWorks' own package manager), no data exfiltration, no backdoors, and no execution of code from untrusted sources.  

One hygiene concern was noticed in the `package_matlab()` function:  

```bash
install -vdm777 "${pkgdir}${MAKEPKG_MATLAB_ROOT}/${_release}"
```

This sets world-writable permissions (`777`) on the MATLAB installation directory, which could allow any local user to modify the installation. This is not a supply-chain attack and appears to be an oversight rather than malice. It is noted as a security consideration but does not make the package unsafe by itself.
</details>
<evidence></evidence>
<summary>Standard MATLAB packaging; no malicious code found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard MATLAB packaging; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,182
  Completion Tokens: 3,963
  Total Tokens: 40,145
  Total Cost: $0.003908
  Execution Time: 72.91 seconds

Final Status: SAFE


No issues found.
