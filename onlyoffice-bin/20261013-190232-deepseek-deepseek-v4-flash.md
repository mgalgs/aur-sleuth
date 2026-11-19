---
package: onlyoffice-bin
pkgver: 10.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13914
completion_tokens: 1323
total_tokens: 15237
cost: 0.001506960
execution_time: 21.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T19:02:31Z
file_verdicts:
  - file: 010-onlyoffice-bin-fix-document-opening.patch
    status: safe
    summary: Benign desktop entry field code fix; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; official upstream source with checksums; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config pointing to the official ONLYOFFICE upstream repository.
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR binary package: pinned upstream download, checksummed, extracted and installed normally. Safe."
---

Materializing onlyoffice-bin from local mirror...
Materialized onlyoffice-bin
Analyzing onlyoffice-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments: metadata, dependencies, source array, checksums, and options. No command substitutions, sub-shell executions, network fetches, or file operations occur when the file is sourced by `makepkg --printsrcinfo`. The `prepare()` and `package()` functions are not executed during this step, and their contents are outside the scope of this narrow gate. The source URL points to the official ONLYOFFICE GitHub releases and checksums are provided, though this is not even relevant to `--printsrcinfo` since no source is downloaded.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; only variable definitions present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; only variable definitions present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, 010-onlyoffice-bin-fix-document-opening.patch...
LLM auditresponse for 010-onlyoffice-bin-fix-document-opening.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the OnlyOffice desktop entry's `Exec` line, changing the field code from `%U` (URLs) to `%F` (local files). This is a routine packaging fix to improve how documents are opened from file managers. It does not download or execute external code, modify system files, obfuscate anything, or introduce any supply-chain risk. The change is consistent with standard AUR packaging practices and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry field code fix; no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, 010-onlyoffice-bin-fix-document-opening.patch, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed 010-onlyoffice-bin-fix-document-opening.patch. Status: SAFE -- Benign desktop entry field code fix; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `onlyoffice-bin` package. It declares package metadata, dependencies, options, and two sources: an official `.deb` release from the ONLYOFFICE GitHub repository and a local patch file. Both sources have pinned SHA-256 checksums, and there are no suspicious commands, downloads from unexpected hosts, obfuscation, or file operations.

The contents are purely declarative packaging metadata. The source URL points to the upstream project's official release assets, which is expected behavior for a binary AUR package. No evidence of injected malicious code, data exfiltration, backdoors, or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata; official upstream source with checksums; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; official upstream source with checksums; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration for nvchecker, a version-checking tool. It defines a single package entry (`onlyoffice-bin`) that checks the upstream GitHub repository `https://github.com/ONLYOFFICE/DesktopEditors.git` for tags prefixed with `v`. The configuration points to the application's official upstream source and contains no commands, scripts, downloads, or obfuscated content. There is no evidence of injection, exfiltration, or any behavior outside normal version-checking configuration.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config pointing to the official ONLYOFFICE upstream repository.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config pointing to the official ONLYOFFICE upstream repository.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `onlyoffice-bin` follows standard AUR packaging practices. It downloads the upstream ONLYOFFICE DesktopEditors `.deb` release from the official GitHub releases URL, pins it with a SHA-256 checksum, and applies a named patch from the package source. The `prepare()` function extracts the `.deb` with `bsdtar` and applies the patch; `package()` simply copies the extracted files into the package directory.

There are no suspicious network endpoints, no obfuscated commands, no dynamic code execution, and no operations outside the normal packaging workflow. The checksums are pinned, and the source originates from the project's own upstream repository. No evidence of injected malicious code or supply-chain attack was found.
</details>
<evidence></evidence>
<summary>
Standard AUR binary package: pinned upstream download, checksummed, extracted and installed normally. Safe.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package: pinned upstream download, checksummed, extracted and installed normally. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,914
  Completion Tokens: 1,323
  Total Tokens: 15,237
  Total Cost: $0.001507
  Execution Time: 21.04 seconds

Final Status: SAFE


No issues found.
