---
package: videoduplicatefinder-webui-git
pkgbase: videoduplicatefinder-git
pkgver: 4.1.1.r21.ge2e163e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13819
completion_tokens: 5445
total_tokens: 19264
cost: 0.00222381
execution_time: 48.54
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T00:12:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file with no security concerns.
  - file: VDF.Web
    status: safe
    summary: Standard startup script, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
---

videoduplicatefinder-webui-git is built from videoduplicatefinder-git
Materializing videoduplicatefinder-webui-git from local mirror...
Materialized videoduplicatefinder-webui-git
Analyzing videoduplicatefinder-webui-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable and array definitions at the top level. No command substitutions, function calls, or other executable statements exist outside of function bodies. Running `makepkg --printsrcinfo` will source this file and assign variables without executing any dangerous operations. The `pkgver()` function is defined but not called during this step. No malicious top-level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It defines the package name, version, dependencies, source URLs, and checksums. All entries are normal for a VCS-based AUR package: the primary source is a `git+https` URL with a SHA256 checksum of `SKIP`, which is expected for git sources. The secondary source (`VDF.Web`) has a specific hash. No commands, scripts, or executable content are present. There is no evidence of malicious or supply-chain attack behavior. The file simply declares package metadata.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO metadata file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, VDF.Web...
[1/4] Reviewing .gitignore, PKGBUILD, VDF.Web...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude build artifacts (`*.tar.zst`), the `src/` directory, and an upstream checkout directory (`videoduplicatefinder/`) from version control. No executable code, network requests, suspicious encoding, or system modifications are present. This pattern is entirely normal and expected for an AUR package repository.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore file with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, VDF.Web...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file with no security concerns.
LLM auditresponse for VDF.Web:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple shell script that changes directory to `/opt/videoduplicatefinder-webui` and executes `./VDF.Web`. This is a standard startup wrapper for a packaged application. There are no network requests, no obfuscated code, no unexpected file operations, and no dangerous commands. The script performs exactly the expected packaging function: launching the application's binary from its installation directory. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard startup script, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed VDF.Web. Status: SAFE -- Standard startup script, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR build script for the `videoduplicatefinder` package family. It correctly clones the upstream GitHub repository (`https://github.com/0x90d/videoduplicatefinder`) and builds the GUI, CLI, and WebUI components using the project's own `dotnet publish` workflow. All file operations are confined to the build directory and `$pkgdir`, following standard packaging practices. The generated shell wrapper for the WebUI binary is a standard workaround for .NET applications that need to be executed from their installation directory to resolve resource paths correctly. No obfuscated code, backdoors, suspicious network connections to unexpected hosts, or other malicious patterns are present. The only sources are the project's own GitHub repository (with a SKIP checksum, which is expected for VCS sources) and a local file with a pinned SHA256 checksum. The file shows no signs of a supply-chain attack and is consistent with ordinary AUR packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,819
  Completion Tokens: 5,445
  Total Tokens: 19,264
  Total Cost: $0.002224
  Execution Time: 48.54 seconds

Final Status: SAFE


No issues found.
