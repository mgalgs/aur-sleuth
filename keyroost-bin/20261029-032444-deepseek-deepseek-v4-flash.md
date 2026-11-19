---
package: keyroost-bin
pkgver: 0.15.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8295
completion_tokens: 1524
total_tokens: 9819
cost: 0.001032213
execution_time: 24.19
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T03:24:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums and standard packaging steps.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata, no malicious content.
---

Materializing keyroost-bin from local mirror...
Materialized keyroost-bin
Analyzing keyroost-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level scope consists solely of standard variable declarations: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source` array, and `sha256sums`. There are no top-level command substitutions, no external downloads, no code execution, and no network activity triggered by sourcing the file.

The `package()` function contains file installation and execution of the packaged `keyroostctl` binary to generate completions/man pages, but that function is not executed by `makepkg --printsrcinfo`. Therefore, nothing dangerous runs during this specific safety gate. The checksums are present and pinned; even if they were SKIPped, that would not affect this gate since no sources are downloaded during metadata parsing.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is benign variable definitions only; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign variable definitions only; no code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the release tarball and a udev rules file from the project&#39;s official GitHub repository, with pinned SHA256 checksums (none skipped). The `package()` function installs the prebuilt binaries, installs the udev rules, and generates shell completions and man pages by invoking `./keyroostctl` from the extracted tarball — a normal step for packages that ship a binary with built-in completion/manpage generation.

No obfuscated code, malicious network requests, data exfiltration, or unexpected system modifications are present. All operations remain within the package&#39;s own install prefix and standard directories. The file is consistent with the upstream project&#39;s stated purpose and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums and standard packaging steps.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums and standard packaging steps.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It lists two source URLs, both pointing to the official upstream GitHub repository of `framefilter/keyroost` under the tagged release v0.15.0. Both sources have fixed SHA256 checksums (not SKIP), indicating integrity verification. There is no executable code, no obfuscated strings, no unexpected network destinations, and no commands that deviate from normal packaging practice. The dependencies and provides/conflicts fields are appropriate for the package. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Clean metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,295
  Completion Tokens: 1,524
  Total Tokens: 9,819
  Total Cost: $0.001032
  Execution Time: 24.19 seconds

Final Status: SAFE


No issues found.
