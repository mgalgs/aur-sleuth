---
package: rotki
pkgver: 1.44.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15924
completion_tokens: 2159
total_tokens: 18083
cost: 0.00176267336
execution_time: 34.01
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T15:22:29Z
file_verdicts:
  - file: resources-path.cjs
    status: safe
    summary: Standard Electron resources path override, no security issue.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: rotki.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for rotki from official source, no malicious behavior.
  - file: rotki.sh
    status: safe
    summary: Standard Electron launcher wrapper, no security issues.
---

Materializing rotki from local mirror...
Materialized rotki
Analyzing rotki AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments (pkgname, pkgver, arch, url, etc.), checksums, and a function definition (`_ensure_local_nvm()`). Function definitions are parsed but not executed during `makepkg --printsrcinfo`. There are no top-level command substitutions, external downloads, or any other code that would execute while sourcing the file. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, resources-path.cjs...
LLM auditresponse for resources-path.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file overrides Node.js' `process.resourcesPath` to point to `__dirname` (the directory of the script). This is a standard technique used in Electron applications when running against a system-installed Electron runtime, ensuring the application can locate its resources. The code contains no network requests, no obfuscation, no dangerous commands, and no operations outside the expected scope. It is a benign configuration adjustment.
</details>
<evidence></evidence>
<summary>Standard Electron resources path override, no security issue.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, resources-path.cjs, rotki.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, rotki.desktop...
+ Reviewed resources-path.cjs. Status: SAFE -- Standard Electron resources path override, no security issue.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `rotki` AUR package. It contains only package description, dependencies, sources, and checksums. No executable code, obfuscation, or suspicious operations are present. All source URLs point to the official GitHub repository, and checksums are provided. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, rotki.desktop, rotki.sh...
[2/5] Reviewing PKGBUILD, rotki.desktop, rotki.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for rotki.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register the application in the desktop environment's launcher. It contains no executable code, network requests, or obfuscated content. The `Exec` field points to a binary named `rotki` which would be provided by the package itself. There are no unusual fields or commands that deviate from the expected structure for such a file. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, rotki.sh...
+ Reviewed rotki.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build file for the rotki application. It fetches the source from the official GitHub release tag (v1.44.0) with verified b2 checksums. The build process uses standard tools (cargo, uv, pnpm, pyinstaller, nvm) to compile Rust, Python, and Electron components. All file operations are confined to the build directory and proper installation paths. The `_ensure_local_nvm` function sources the system's nvm initialization script, which is expected behavior for managing Node.js versions during builds. No suspicious network requests, obfuscated code, or operations outside expected packaging practices are present. The package does exactly what it claims: build and install rotki from source.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for rotki from official source, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing rotki.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for rotki from official source, no malicious behavior.
LLM auditresponse for rotki.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rotki.sh` is a simple wrapper script that sets the `APPIMAGE` environment variable to prevent an electron-updater hang, then launches the rotki application via `electron41` with a required module and the main application asar file. No obfuscation, network requests, file modifications, or other suspicious operations are present. The entire script is standard and transparent.
</details>
<evidence/>
<summary>Standard Electron launcher wrapper, no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed rotki.sh. Status: SAFE -- Standard Electron launcher wrapper, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,924
  Completion Tokens: 2,159
  Total Tokens: 18,083
  Total Cost: $0.001763
  Execution Time: 34.01 seconds

Final Status: SAFE


No issues found.
