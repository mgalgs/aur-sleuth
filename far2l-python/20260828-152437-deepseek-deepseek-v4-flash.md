---
package: far2l-python
pkgbase: far2l
pkgver: 2.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11887
completion_tokens: 1503
total_tokens: 13390
cost: 0.0012927124
execution_time: 82.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2782
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-28T15:24:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Routine .gitignore with standard AUR build artifact patterns; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious code found.
---

far2l-python is built from far2l
Cloning https://aur.archlinux.org/far2l.git...
Cloned far2l-python
Analyzing far2l-python AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging elements: variable assignments, function definitions (build/package_*), and a single source entry pointing to the official far2l GitHub release tarball. The top-level scope and pkgver (which is a variable, not a function) execute no commands, file operations, or network requests beyond what makepkg itself will do to fetch the declared source. No eval, no obfuscation, no unexpected external commands. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/far2l-v_2.9.0/far2l/DE/far2l.desktop, src/far2l-v_2.9.0/far2l/DE/far2ledit.desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 2782 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It excludes common build artifacts (`src`, `pkg`), source tarballs (`*.tar.gz`), and built package files (`*.pkg.tar*`). These are ordinary packaging patterns and contain no executable code, network operations, file modifications, or obfuscation. No security issues found.
</details>
<evidence>

</evidence>
<summary>
Routine .gitignore with standard AUR build artifact patterns; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Routine .gitignore with standard AUR build artifact patterns; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `far2l` package and its subpackages. It declares a fixed version (`2.9.0`), a pinned tarball source from the project's official GitHub repository, and a specific SHA-256 checksum. All dependencies and optdependencies are normal package relationships. No network fetching beyond the declared upstream source, no executable code, no obfuscation, and no unexpected file operations are present. The file is consistent with ordinary packaging practices and contains no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned source and checksum; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific tag with a SHA256 checksum, ensuring integrity. All commands (`cmake`, `install`, `rm`, `env -C ... find ... -exec`) are legitimate build and install steps that operate exclusively within the package's build directory and install destination. There is no network access at build time beyond fetching the pinned source tarball. No obfuscated code, base64 decoding, `eval`, `curl`, `wget`, or any exfiltration/backdoor patterns are present. The `env -C` usage is simply a convenient way to change directory and run find for recursive installation of plugin files – it is not a security concern.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,887
  Completion Tokens: 1,503
  Total Tokens: 13,390
  Total Cost: $0.001293
  Execution Time: 82.45 seconds

Final Status: SAFE


No issues found.
