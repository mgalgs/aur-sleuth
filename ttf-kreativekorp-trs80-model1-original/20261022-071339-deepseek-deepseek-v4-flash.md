---
package: ttf-kreativekorp-trs80-model1-original
pkgbase: ttf-kreativekorp-trs80
pkgver: 2014.04
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11569
completion_tokens: 2748
total_tokens: 14317
cost: 0.001552915
execution_time: 43.37
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T07:13:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file. No security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard font package, no security issues found.
---

ttf-kreativekorp-trs80-model1-original is built from ttf-kreativekorp-trs80
Materializing ttf-kreativekorp-trs80-model1-original from local mirror...
Materialized ttf-kreativekorp-trs80-model1-original
Analyzing ttf-kreativekorp-trs80-model1-original AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope, and this file's global scope consists entirely of plain variable assignments (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) plus a `DLAGENTS` array override. There are no top-level command substitutions, no `eval`, no `curl|bash`, no base64/obfuscated blobs, and no network-triggering code that would execute at parse time.

The `DLAGENTS=(&apos;https::/usr/bin/wget -O %o %u&apos;)` assignment is unconventional — it replaces the default makepkg download agents with wget for the build — but it is a packaging/downloader choice rather than malicious behavior, and it executes no code during `--printsrcinfo`. The source tarball comes from the package's own upstream domain (kreativekorp.com) over HTTPS with a pinned sha256 checksum. All `package_*()` functions contain only `install`/`find` logic and run only during the `package()` phase, which is out of scope for this narrow gate; they will be reviewed in the full audit.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; only variable definitions. Parse-time execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only variable definitions. Parse-time execution is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the essential packaging files (`.gitignore`, `PKGBUILD`, `.SRCINFO`). There is no executable code, no network requests, no obfuscation, and no dangerous commands. The content is entirely benign and follows normal AUR repository conventions.</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file. No security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file. No security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard package metadata for an AUR font package. It defines the source location (the project&#x27;s own website, over HTTPS), provides a SHA256 checksum, specifies build dependencies (`wget` is listed, which is used for downloading fonts in the PKGBUILD but is normal here), and splits the package into multiple font variants. There is no executable content, no obfuscated code, no network connections beyond the declared upstream source, and no evidence of supply-chain tampering. All content is exactly what is expected for a well-structured AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package for distributing TRS-80 font files from the upstream KreativeKorp website. It downloads a single font archive over HTTPS with a pinned SHA-256 checksum, extracts font files, and installs them into the system font directory along with the license. There are no suspicious network requests, obfuscated code, eval or base64 usage, or any operations that deviate from normal packaging practices. The custom DLAGENTS setting to use `wget` instead of the default downloader is cosmetic and does not introduce a supply-chain risk because the source URL is fixed and checksum-verified. No evidence of malicious or unexpected behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard font package, no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font package, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,569
  Completion Tokens: 2,748
  Total Tokens: 14,317
  Total Cost: $0.001553
  Execution Time: 43.37 seconds

Final Status: SAFE


No issues found.
