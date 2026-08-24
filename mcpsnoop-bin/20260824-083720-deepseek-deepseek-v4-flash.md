---
package: mcpsnoop-bin
pkgver: 0.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 28204
completion_tokens: 1570
total_tokens: 29774
cost: 0.0017991456
execution_time: 73.77
files_reviewed: 4
files_skipped: 0
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-24T08:37:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no evidence of malicious code.
  - file: src/README.md
    status: safe
    summary: Documentation file, no malicious content.
  - file: src/LICENSE
    status: safe
    summary: Standard license file; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
---

Cloning https://aur.archlinux.org/mcpsnoop-bin.git...
Cloned mcpsnoop-bin
Analyzing mcpsnoop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines static metadata, source URLs pointing to the GitHub releases of the upstream project, and SHA-256 checksums. There is no top-level code, command substitution, `pkgver()` function, or any logic that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The only executable code is inside `package()`, which is not run by these commands.

The `source` entries download prebuilt tarballs from the project’s own GitHub releases. Even though the `aarch64` source incorrectly references the `amd64` asset name, this is a packaging flaw rather than a security issue for this narrow gate. Fetching and extracting these archives is exactly what the requested commands are designed to do, and no code from the archives executes during this step due to `--nobuild`/`--noprepare`. The checksums are present and not set to `SKIP`, but even if they were, that alone would not make this gate unsafe.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static; sources are legitimate upstream GitHub release tarballs. No dangerous execution during fetch/source step.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; sources are legitimate upstream GitHub release tarballs. No dangerous execution during fetch/source step.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard conventions for a `-bin` package in the AUR. It downloads a precompiled tarball from the project's official GitHub releases page using a pinned version tag, and verifies the download with a SHA256 checksum. The `package()` function only installs the binary, README, and license file into the expected system directories. No dangerous commands (such as `eval`, `curl`, `wget` outside the source array, or `git pull`), obfuscated code, or unexpected system modifications are present. 

A minor issue exists: the aarch64 source array incorrectly references the `linux_amd64` tarball instead of `linux_arm64`, and both checksums are identical – but this is a packaging bug (likely copy-paste error) rather than evidence of malicious intent. It does not introduce code execution or data exfiltration risks.
</details>
<evidence></evidence>
<summary>Standard binary package; no evidence of malicious code.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no evidence of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (mcpsnoop-x86_64-0.21.0.tgz, src/mcpsnoop). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 3 additional files: .nvchecker.toml, src/LICENSE, src/README.md
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, src/LICENSE...
[0/3] Reviewing .nvchecker.toml, src/LICENSE, src/README.md...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
README.md is a standard documentation file describing the mcpsnoop MCP proxy tool. It contains no executable code, scripts, or obfuscated content. The file explains installation methods, commands, usage examples, and security considerations. No signs of malicious or supply-chain attack behavior are present. The file is safe and consistent with legitimate packaging documentation.
</details>
<evidence/>
<summary>Documentation file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, src/LICENSE...
+ Reviewed src/README.md. Status: SAFE -- Documentation file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text file. It contains no executable code, no network operations, no obfuscated content, and no file system modifications. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file; no security issues.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed src/LICENSE. Status: SAFE -- Standard license file; no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration for tracking upstream releases on GitHub. It defines the package name, source type, repository path, and version prefix. No malicious or suspicious operations are present. This is a routine AUR maintainer helper configuration file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,204
  Completion Tokens: 1,570
  Total Tokens: 29,774
  Total Cost: $0.001799
  Execution Time: 73.77 seconds

Final Status: SAFE


No issues found.
