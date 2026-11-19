---
package: texlive-emono-git
pkgver: 1.r2.g3n
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10350
completion_tokens: 4203
total_tokens: 14553
cost: 0.001706796
execution_time: 42.73
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T16:02:34Z
file_verdicts:
  - file: texlive-emono.install
    status: safe
    summary: Routine TeX Live map update script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a font package from upstream git.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no security issues.
---

Materializing texlive-emono-git from local mirror...
Materialized texlive-emono-git
Analyzing texlive-emono-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions (`pkgver`, `build`, `package`). No command substitution, backtick execution, `eval`, `curl`, `wget`, or any other dangerous constructs appear outside of function bodies. The `sha256sums` is simply `SKIP`, which is irrelevant here since no sources are downloaded or verified during `--printsrcinfo`. There is no code that would execute during sourcing and no means for exfiltration or payload delivery.
</details>
<evidence></evidence>
<summary>No unsafe top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No unsafe top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, texlive-emono.install...
LLM auditresponse for texlive-emono.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard TeX Live package install script that updates font maps after installation or upgrade. It runs `mktexlsr` to refresh the TeX file database and `updmap-sys` to enable the font map file `emono.map`. The `pre_remove()` function removes the map entry on uninstall. All commands are standard TeX Live utilities from the upstream distribution. There are no network requests, obfuscated code, unexpected file operations, or any behavior outside normal packaging practices. The use of `|| true` on the disable command means failure is non-fatal, a common idempotency pattern. The script is entirely benign and performs no supply-chain attack related actions.
</details>
<evidence></evidence>
<summary>Routine TeX Live map update script, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed texlive-emono.install. Status: SAFE -- Routine TeX Live map update script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds monochrome emoji fonts for TeX from an upstream GitLab repository. The source is pulled directly from the project's own Git repository (unpinned main branch, which is normal for development VCS packages). The build process runs the project's own build script `python emono.py build --all-weights` and installs the results and license files into standard system paths. There are no signs of obfuscated code, unexpected network requests, system modification attempts, or exfiltration of sensitive data. The `sha256sums` being `SKIP` is standard for VCS sources and not a security concern. This file follows typical AUR packaging practices for a -git package and does not exhibit any behavior that would indicate a supply chain attack.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a font package from upstream git.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a font package from upstream git.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata descriptor. It contains no executable commands, network callbacks, obfuscated strings, or system modifications. The package is correctly pointed at its own upstream GitLab repository (https://gitlab.com/arkades.org/emono), and the listed makedepends (python, python-fonttools, python-uharfbuzz) are the standard toolchain for generating monochrome emoji fonts from source, matching the package description exactly. While the source URL tracks a mutable branch (main) and uses a SKIP checksum, these are standard AUR practices for -git packages and do not, by themselves, indicate malice. No evidence of an injected supply chain attack is present in this file.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,350
  Completion Tokens: 4,203
  Total Tokens: 14,553
  Total Cost: $0.001707
  Execution Time: 42.73 seconds

Final Status: SAFE


No issues found.
