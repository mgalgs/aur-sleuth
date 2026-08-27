---
package: mcpp-bin
pkgver: 2026.8.27.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 10808
completion_tokens: 2922
total_tokens: 13730
cost: 0.00129852296
execution_time: 192.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-27T15:39:38Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Benign launcher script for mcpp package.
  - file: .SRCINFO
    status: safe
    summary: No malicious content detected; standard binary package metadata.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for the AUR. The top-level scope only contains variable assignments (strings, arrays) and a function definition for `package()`. No command substitutions, backticks, `eval`, `curl`, `wget`, or other potentially dangerous code is executed when the PKGBUILD is sourced by `makepkg`. The `source` entries point to the project's own GitHub releases and a local helper script (`mcpp.sh`). The `sha256sums` are provided for the binary archives (with `SKIP` for the local file, which is normal for local sources). There is no `pkgver()` function that could run code. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the declared sources and parse the PKGBUILD safely. No genuine supply-chain attack vectors are present at this stage.
</details>
<evidence></evidence>
<summary>No dangerous code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.27.2-linux-x86_64/bin/mcpp, src/mcpp-2026.8.27.2-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the `mcpp-bin` AUR package. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) with sensible defaults (user&#8217;s home directory and the vendored xlings path under `/opt`). The script then executes the actual binary. There are no network requests, downloads, obfuscated commands, file modifications, or any other suspicious activities. The script follows the expected pattern for a package that installs a self-contained application in `/opt` and requires a per-user writable directory at runtime. No security concerns.
</details>
<evidence></evidence>
<summary>Benign launcher script for mcpp package.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Benign launcher script for mcpp package.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR prebuilt binary package (`mcpp-bin`). The upstream binaries are sourced from the project's own GitHub releases with pinned SHA-256 checksums for each architecture, which is appropriate for a binary package. The only source with a `SKIP` checksum is `mcpp.sh` — a local script file presumably containing the PKGBUILD logic. While skipping checksums on a local file is a hygiene concern (it removes integrity verification for that file), it is not by itself evidence of malice. No obfuscation, unexpected network requests, or system-modification instructions appear in this metadata file. The package depends only on `git` and conflicts with other variants of the same tool, which is normal. No supply-chain attack indicators are present in this file.
</details>
<evidence>
</evidence>
<summary>No malicious content detected; standard binary package metadata.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content detected; standard binary package metadata.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for distributing prebuilt binaries from the project's official GitHub releases. All remote source downloads point to `https://github.com/mcpp-community/mcpp/releases/...`, which is the package's own upstream, and the binary tarballs have pinned SHA-256 checksums (one per architecture). The only `SKIP` checksum is for a local launcher script (`mcpp.sh`) that ships as part of the AUR source – this is normal for files not downloaded from a remote URL. The `package()` function performs routine installation of binaries, a launcher script, and documentation into `/opt/mcpp` and `/usr/bin`, with no obfuscated code, unusual network requests, or dangerous commands. There is no evidence of injection, exfiltration, backdoors, or any behavior deviating from legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,808
  Completion Tokens: 2,922
  Total Tokens: 13,730
  Total Cost: $0.001299
  Execution Time: 192.42 seconds

Final Status: SAFE


No issues found.
