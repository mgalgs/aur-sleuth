---
package: cursor-bin
pkgver: 3.26.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13067
completion_tokens: 2292
total_tokens: 15359
cost: 0.001606241
execution_time: 49.24
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T11:03:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for prebuilt Electron application
  - file: rg.sh
    status: safe
    summary: Simple argument-translation wrapper for ripgrep, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources from trusted domains.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, source array entries, checksum arrays, a `noextract` array, and a `package()` function. Running `makepkg --printsrcinfo` sources the PKGBUILD at the global/top-level scope, but there are no top-level command substitutions, function calls, downloads, or other executable statements in this file. The `package()` function body is not executed by `makepkg --printsrcinfo`, so its contents are out of scope for this safety gate.

The `sha512sums` values include `SKIP` for the primary `.deb` source and an explicit checksum override for the same source; however, checksum handling does not matter for this step because no sources are downloaded or verified during `makepkg --printsrcinfo`. No suspicious global-level behavior, obfuscated code, network actions, or data exfiltration is present.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; printsrcinfo is safe to run.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` listing files and directories related to the package build process (e.g., the downloaded AppImage, the built package artifact, and intermediate build outputs). It contains no executable code, no network requests, no system modifications, and no obfuscated content. There is no evidence of any malicious or suspicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official prebuilt `.deb` from `downloads.cursor.com`, which is the project's own upstream. The helper scripts (`code.sh`, `code.mjs`, `rg.sh`) come from the official Arch Linux packaging repository (`gitlab.archlinux.org`), a trusted source. The `package()` function performs standard packaging operations: extracting the archive, setting up symlinks to system-provided dependencies (`/usr/bin/node`, `/usr/bin/xdg-open`, `ripgrep`), and adapting the startup scripts for the system Electron runtime. No obfuscation, unexpected network requests, or system modifications outside the package's own scope occur. The SKIP checksum is overridden by a specific SHA-512 sum on the next line, so the source is actually pinned. All actions are consistent with legitimate packaging practices for a prebuilt Electron application.
</details>
<evidence/>
<summary>Legitimate PKGBUILD for prebuilt Electron application</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for prebuilt Electron application
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple wrapper for ripgrep. It replaces the argument `--cursor-ignore` with `--ignore-file` and delegates to the system's `rg` binary. There are no network requests, encoded commands, file system modifications, or any other suspicious operations. The behavior is transparent and serves only to map a custom flag to the standard flag, which is a common packaging convenience. No evidence of malware or supply-chain attack.</details>
<evidence></evidence>
<summary>Simple argument-translation wrapper for ripgrep, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed rg.sh. Status: SAFE -- Simple argument-translation wrapper for ripgrep, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file used by the Arch User Repository to describe package sources, dependencies, and checksums. It contains no executable code. All listed sources originate from official or trusted domains: the upstream `cursor.com` domain and the Arch Linux GitLab repository (`gitlab.archlinux.org`). The local file `rg.sh` is referenced as a source but its content is not present in this file; the provided SHA-512 checksum is consistent with normal package metadata. There are no obfuscated strings, no suspicious URLs (e.g., unknown IPs, personal domains), no instructions to download or execute arbitrary code, and no deviation from standard AUR packaging practices. The file is purely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; all sources from trusted domains.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources from trusted domains.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,067
  Completion Tokens: 2,292
  Total Tokens: 15,359
  Total Cost: $0.001606
  Execution Time: 49.24 seconds

Final Status: SAFE


No issues found.
