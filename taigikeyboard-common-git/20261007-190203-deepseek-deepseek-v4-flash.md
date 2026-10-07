---
package: taigikeyboard-common-git
pkgbase: taigikeyboard-git
pkgver: 3.6.10.r918.0b2c45c
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13826
completion_tokens: 2528
total_tokens: 16354
cost: 0.00365062
execution_time: 56.24
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T19:02:02Z
file_verdicts:
  - file: 0001-build-linux-allow-skipping-font-install-or-splitting.patch
    status: skipped
    summary: "Skipping binary file: 0001-build-linux-allow-skipping-font-install-or-splitting.patch"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: Pure license text; no code, network, or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious content found.
---

taigikeyboard-common-git is built from taigikeyboard-git
Materializing taigikeyboard-common-git from local mirror...
Materialized taigikeyboard-common-git
Analyzing taigikeyboard-common-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s top-level scope contains only standard packaging metadata: variable assignments (`pkgbase`, `pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha512sums`, `options`, etc.) and function definitions (`pkgver()`, `prepare()`, `build()`, `package_*()`). No command substitution, `eval`, `curl`, `wget`, or other executable statement runs at source time. The `source` array uses `git+https` and a `SKIP` checksum for the VCS entry, but `makepkg --printsrcinfo` does not download or verify sources, so this is not a risk for this gate. Function bodies containing `make`, `install`, and `patch` are not executed during `--printsrcinfo`. No malicious or obfuscated code is present in the global scope.
</details>
<evidence></evidence>
<summary>Top-level scope only defines variables and functions; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; no malicious execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, 0001-build-linux-allow-skipping-font-install-or-splitting.patch...
[0/5] Reviewing .SRCINFO, 0001-build-linux-allow-skipping-font-install-or-splitting.patch, .gitignore...
[1/5] Reviewing .SRCINFO, .gitignore...
! Reviewed 0001-build-linux-allow-skipping-font-install-or-splitting.patch. Status: SKIPPED -- Skipping binary file: 0001-build-linux-allow-skipping-font-install-or-splitting.patch
[1/5] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file used in the Arch User Repository. It contains package definitions, dependencies, and source URLs. The source URL points to the project's own GitHub repository, and the checksum for the patch is provided. The SKIP checksum for the git source is normal for VCS packages. There is no executable code, no unusual network requests, and no indication of malicious activity. The file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/5] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[2/5] Reviewing .gitignore, LICENSE, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all directories and common archive file extensions (`.tar.zst`, `.tar.gz`, `.part`). There is no executable code, no network requests, no file operations, and no obfuscation. It is entirely benign and follows typical packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text ISC-style permissive license (attributed to "Kisaragi Hiu"). It contains only standard legal text granting permission to use, copy, modify, and distribute the software, along with the customary disclaimer of warranty. There is no executable code, no network activity, no encoded or obfuscated content, no file operations, and no references to external hosts or commands. Nothing in this file deviates from normal packaging practices or exhibits any sign of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Pure license text; no code, network, or suspicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Pure license text; no code, network, or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split package for the Taigi Keyboard project. It clones the official upstream repository from GitHub (``git+https://github.com/taigikeyboard/taigikeyboard.git``), applies a single patched source file (validated with SHA-512), builds the project using `make`, and installs components into separate sub-packages. There are no suspicious network requests, obfuscated code, dangerous command executions, or attempts to exfiltrate data. The `SKIP` checksum for the VCS source is normal and required for `-git` packages. All operations are confined to the package&#8217;s own source tree and build directory. No evidence of supply-chain injection or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious content found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0001-build-linux-allow-skipping-font-install-or-splitting.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,826
  Completion Tokens: 2,528
  Total Tokens: 16,354
  Total Cost: $0.003651
  Execution Time: 56.24 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-build-linux-allow-skipping-font-install-or-splitting.patch: [SKIPPED] Skipping binary file: 0001-build-linux-allow-skipping-font-install-or-splitting.patch
