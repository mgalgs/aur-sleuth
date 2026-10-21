---
package: ttf-kreativekorp-apple2-shaston
pkgbase: ttf-kreativekorp-apple2
pkgver: 2020.04
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11690
completion_tokens: 1565
total_tokens: 13255
cost: 0.001348620
execution_time: 50.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:13:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR package repo.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard font PKGBUILD with pinned checksums, no security issues.
---

ttf-kreativekorp-apple2-shaston is built from ttf-kreativekorp-apple2
Materializing ttf-kreativekorp-apple2-shaston from local mirror...
Materialized ttf-kreativekorp-apple2-shaston
Analyzing ttf-kreativekorp-apple2-shaston AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. The top-level content here consists solely of standard metadata variable assignments (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a normal `DLAGENTS` override that tells makepkg to use `/usr/bin/wget` for https downloads. No command substitutions, `eval`, `curl|bash`, obfuscated payloads, or other executable statements exist at global scope.

The `package_*()` functions contain `find` and `install` operations, but they only run during the packaging phase and cannot execute during `makepkg --printsrcinfo`. The `DLAGENTS` wget setting is only relevant when makepkg later downloads sources, not during metadata printing. There is no evidence of malicious behavior at this stage.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only metadata variables are evaluated.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only metadata variables are evaluated.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to manage the minimal files tracked in an AUR git repository. It does not contain any executable code, network requests, or suspicious operations. It is a routine packaging configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR package repo.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR package repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares a font package that downloads upstream source archives from the project's official website over HTTPS with pinned SHA-256 checksums. There is no executable code, obfuscation, suspicious network destinations, or unusual operations. The build dependency `wget` is a typical tool for downloading sources. The package dependencies (`xorg-fonts-encodings`) are standard for font packages. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward font packaging script. It downloads four font zip archives from the official KreativeKorp website, a legitimate upstream source matching the declared `url`. Each archive has a pinned SHA-256 checksum, ensuring integrity. The build/package functions only extract and install `.ttf` fonts and a license file into standard system directories. There are no obfuscated commands, no executables fetched and run from unexpected sources, no data exfiltration, and no modifications to system configuration outside the package scope. The custom `DLAGENTS` using wget is an atypical but harmless choice; it does not introduce risk because the download targets and checksums are fixed. Overall, the file conforms to standard packaging practices and shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard font PKGBUILD with pinned checksums, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font PKGBUILD with pinned checksums, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,690
  Completion Tokens: 1,565
  Total Tokens: 13,255
  Total Cost: $0.001349
  Execution Time: 50.97 seconds

Final Status: SAFE


No issues found.
