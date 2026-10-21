---
package: ttf-kreativekorp-apple2-pr
pkgbase: ttf-kreativekorp-apple2
pkgver: 2020.04
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11923
completion_tokens: 1771
total_tokens: 13694
cost: 0.001407315
execution_time: 31.69
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:14:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR font package metadata with pinned HTTPS sources and no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Benign font PKGBUILD; pinned checksums, upstream sources, standard install only.
---

ttf-kreativekorp-apple2-pr is built from ttf-kreativekorp-apple2
Materializing ttf-kreativekorp-apple2-pr from local mirror...
Materialized ttf-kreativekorp-apple2-pr
Analyzing ttf-kreativekorp-apple2-pr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level code: variable assignments for `pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, `makedepends`, and `DLAGENTS`. None of these perform downloads, execute commands, or modify the system at parse time. The downloader agent override is simply a configuration assignment and is not invoked during `--printsrcinfo`.

The `package_*()` functions contain `find`, `install`, and file-copy operations, but these functions are not executed when running `makepkg --printsrcinfo`; they will only run during a later full package build. No obfuscation, network exfiltration, or top-level command substitution is present. Missing or skipped checksums are not applicable here, and all listed checksums are provided. This gate is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is benign; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is benign; no malicious code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores everything except the `.gitignore`, `PKGBUILD`, and `.SRCINFO` files, which are the only files that should be tracked in a typical AUR package repository. There are no commands, network operations, obfuscated content, or any behavior that could compromise system security.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file for an AUR font package. It declares four font bundles from the project&#39;s own upstream website (kreativekorp.com) over HTTPS, each with a pinned SHA-256 checksum. The only build dependency is `wget`, which is consistent with downloading the declared upstream font archives during the build.

There is no evidence of malicious behavior: no obfuscated code, no suspicious network endpoints, no execution of fetched scripts, no data exfiltration, and no unexpected file operations. The package description and structure match the stated purpose of providing Apple II-themed fonts. The pinned checksums are a positive supply-chain hygiene signal. This file is safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR font package metadata with pinned HTTPS sources and no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR font package metadata with pinned HTTPS sources and no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads four font archives from the project's official upstream host (kreativekorp.com) over HTTPS, with pinned SHA-256 checksums for every source. The `DLAGENTS` override simply instructs makepkg to use `wget` for HTTPS downloads, which is a normal packaging mechanism and not suspicious.

The package functions only create font directories, copy `.ttf` files found in the source tree, and install the upstream license into `$pkgdir`. There are no network calls during `prepare()` or `build()`, no `eval`, `base64`, `curl|bash`, obfuscation, writes outside the package directory, or any other behavior consistent with a supply-chain attack. This is an ordinary, benign font packaging PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Benign font PKGBUILD; pinned checksums, upstream sources, standard install only.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign font PKGBUILD; pinned checksums, upstream sources, standard install only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,923
  Completion Tokens: 1,771
  Total Tokens: 13,694
  Total Cost: $0.001407
  Execution Time: 31.69 seconds

Final Status: SAFE


No issues found.
