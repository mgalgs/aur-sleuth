---
package: ttf-impallari-libre-franklin
pkgbase: otf-impallari-libre-franklin
pkgver: 4.015
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7399
completion_tokens: 2124
total_tokens: 9523
cost: 0.001059877
execution_time: 32.63
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T00:20:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font PKGBUILD installing upstream fonts; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators found.
---

ttf-impallari-libre-franklin is built from otf-impallari-libre-franklin
Materializing ttf-impallari-libre-franklin from local mirror...
Materialized ttf-impallari-libre-franklin
Analyzing ttf-impallari-libre-franklin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions, array assignments, and two `package_*()` function definitions. No command substitutions, `eval`, `curl`, `wget`, or other operations that execute during sourcing appear in the global scope. The `source` array uses `$pkgname` and `$pkgver` variable expansions, but these are standard references and do not execute external commands. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD presents no risk.
</details>
<evidence></evidence>
<summary>Top-level scope has only safe variable and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has only safe variable and function definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward font package. It declares two split packages (`otf-impallari-libre-franklin` and `ttf-impallari-libre-franklin`), downloads a single source archive from the project's own upstream GitHub repository (`https://github.com/impallari/Libre-Franklin/archive/master.zip`), verifies it with a pinned MD5 checksum, and the two `package_*` functions simply `cd` into the extracted source and `install` the upstream `.otf`/`.ttf` font files plus `OFL.txt` into `"$pkgdir"`. No network calls beyond the declared source, no `eval`/`base64`/`curl`/`wget`, no obfuscation, no writes outside `$pkgdir`, and no post-install hooks.

Minor hygiene notes (not threats): the source tracks the mutable `master` branch (an archive of a branch rather than a pinned tag/commit), which combined with a fixed `md5sums` value means the build will fail to verify once upstream changes the branch; MD5 is a weak checksum. These are reproducibility/maintenance concerns, not evidence of malicious behavior. The checksum is present (not `SKIP`), and everything else follows standard AUR packaging practice for fonts.
</details>
<evidence>
</evidence>
<summary>Standard font PKGBUILD installing upstream fonts; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font PKGBUILD installing upstream fonts; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares a font package from the upstream Impallari GitHub repository and provides a checksum for the source archive. No install hooks, shell code, or build logic is present.

The only external fetch is the package's own upstream source archive from `github.com/impallari/Libre-Franklin`, which is expected. The use of a `master.zip` source is slightly less reproducible than a pinned commit, and the `md5sums` checksum is weaker than `sha256sums`, but these are hygiene concerns, not evidence of malicious behavior. There is nothing indicating exfiltration, obfuscated commands, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,399
  Completion Tokens: 2,124
  Total Tokens: 9,523
  Total Cost: $0.001060
  Execution Time: 32.63 seconds

Final Status: SAFE


No issues found.
