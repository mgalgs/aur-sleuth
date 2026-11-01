---
package: texlive-emono
pkgver: 0.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9705
completion_tokens: 3107
total_tokens: 12812
cost: 0.001448629
execution_time: 41.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-01T20:26:59Z
file_verdicts:
  - file: texlive-emono.install
    status: safe
    summary: Standard TeX font map update script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious behavior found.
---

Materializing texlive-emono from local mirror...
Materialized texlive-emono
Analyzing texlive-emono AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global (top-level) scope contains only standard variable definitions (pkgname, pkgver, depends, source, sha256sums, etc.) and comments. There are no command substitutions (`$(...)`), backticks, `eval`, `curl`, `wget`, or any other code-execution constructs at the top level. The `build()`, `package()`, and other functions are present but are explicitly NOT evaluated by `makepkg --printsrcinfo`. Therefore, sourcing this file poses no risk of executing malicious code at this step.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code to execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code to execute.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: emono-0.1.1.tar.gz::https://gitlab.com/arkades.org/emono/-/archive/v0.1.1/emono-v0.1.1.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, texlive-emono.install...
LLM auditresponse for texlive-emono.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for a TeX font package. It runs `mktexlsr` to refresh the TeX file hash database and `updmap-sys` to enable the `emono.map` font map. There is no network activity, no obfuscation, no dangerous commands, and no manipulation of files outside the TeX system. This is exactly what such a package should do.
</details>
<evidence>
</evidence>
<summary>Standard TeX font map update script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed texlive-emono.install. Status: SAFE -- Standard TeX font map update script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR metadata file (.SRCINFO) containing only declarative fields. It defines a package that builds monochrome emoji fonts for TeX, with sources fetched from the project's own GitLab repository. No executable commands, network requests, obfuscation, or suspicious operations are present. The checksum is set to SKIP, which is a common practice for VCS/generated sources and is not evidence of malice. The presence of an install script (texlive-emono.install) is noted, but its content is not part of this file and cannot be evaluated here; the file itself poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices. It downloads the upstream source from the project's own GitLab repository over HTTPS. The build step invokes the upstream Python script `emono.py build --all-weights`, which is a normal part of the project's build system. The comment explains that this script may fetch a pinned revision of Noto Emoji fonts—this is expected upstream behavior and not hidden. There is no obfuscated code, no suspicious network requests from the PKGBUILD itself, no dangerous commands like `eval`, `base64`, `curl`, or `wget` in unexpected contexts. The `sha256sums` are set to `SKIP`, which is a trust/hygiene choice but not evidence of malice. No evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,705
  Completion Tokens: 3,107
  Total Tokens: 12,812
  Total Cost: $0.001449
  Execution Time: 41.40 seconds

Final Status: SAFE


No issues found.
