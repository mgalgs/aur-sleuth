---
package: kimi-work-intl-bin
pkgver: 3.2.26
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24654
completion_tokens: 4062
total_tokens: 28716
cost: 0.002982798
execution_time: 45.24
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T12:07:31Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text, no security concern.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no executable code.
  - file: kimi-work-intl.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: daimon.sh
    status: safe
    summary: Standard shim script; no security concerns.
  - file: kimi-work-intl.sh
    status: safe
    summary: Standard Electron launcher, no security concerns.
  - file: node.sh
    status: safe
    summary: Standard Electron/Node wrapper; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: patch-region.js
    status: safe
    summary: Standard packaging script; no malicious behavior found.
---

Materializing kimi-work-intl-bin from local mirror...
Materialized kimi-work-intl-bin
Analyzing kimi-work-intl-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. In this PKGBUILD, the top-level scope consists solely of variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, `noextract`, etc.) and function definitions (`prepare()`, `package()`). There are no top-level command substitutions, no downloads, no `eval`, `curl`, `wget`, `base64`, or other executable statements that would run while the PKGBUILD is sourced.

The `prepare()` and `package()` functions contain more complex operations, but they do not execute during `makepkg --printsrcinfo` and are outside the scope of this narrow safety gate. Missing or SKIPped checksums are also irrelevant here because no sources are downloaded or verified during this command.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and functions; no malicious code executes during this command.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; no malicious code executes during this command.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text LICENSE notice. It contains no executable code, no network requests, no obfuscated content, and no commands. It simply disclaims any additional license grant beyond the upstream vendor&#39;s terms. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Plain license text, no security concern.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, PKGBUILD, LICENSE, daimon.sh...
[1/8] Reviewing .SRCINFO, PKGBUILD, daimon.sh...
+ Reviewed LICENSE. Status: SAFE -- Plain license text, no security concern.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file. It only contains package definitions, dependency lists, source URLs (all pointing to the official Kimi Work domain over HTTPS), and cryptographic checksums for each source. No executable code, obfuscated strings, suspicious network operations, or unexpected system modifications are present. The file is entirely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no executable code.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, daimon.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no executable code.
[2/8] Reviewing PKGBUILD, daimon.sh, kimi-work-intl.desktop...
LLM auditresponse for kimi-work-intl.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used to define an application launcher entry. It contains no executable code, no network requests, no file operations, and no obfuscation. It simply specifies the application name, icon, categories, and the command to execute (`kimi-work %U`). There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, daimon.sh...
+ Reviewed kimi-work-intl.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[3/8] Reviewing PKGBUILD, daimon.sh, kimi-work-intl.sh...
LLM auditresponse for daimon.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward wrapper that changes to its own directory and launches a locally bundled Node.js runtime with a packaged JavaScript entry point. It contains no network requests, no obfuscated code, no file writes, no execution of untrusted content, and no deviation from standard packaging practices for a Node.js application distributed as a binary package. Its sole purpose is to invoke the application&#x27;s own runtime and entry file.
</details>
<evidence>
</evidence>
<summary>Standard shim script; no security concerns.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, kimi-work-intl.sh...
+ Reviewed daimon.sh. Status: SAFE -- Standard shim script; no security concerns.
[4/8] Reviewing PKGBUILD, kimi-work-intl.sh, node.sh...
LLM auditresponse for kimi-work-intl.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launcher for an Electron application. It defines a base directory, sets environment variables pointing to bundled resources, forces a region via `KIMI_AGENT_REGION`, and then executes the Electron binary with the application archive (`app.asar`). There are no network requests, no obfuscated or encoded commands, no file operations beyond standard variable assignments and an `exec` call. All paths refer to the package's own installation directory (`/opt/kimi-work-intl`) and the system Electron binary. The behavior is consistent with standard packaging practices for Electron-based AUR packages and contains no evidence of malicious activity.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher, no security concerns.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, kimi-work-intl.sh, node.sh, patch-region.js...
[5/8] Reviewing PKGBUILD, node.sh, patch-region.js...
+ Reviewed kimi-work-intl.sh. Status: SAFE -- Standard Electron launcher, no security concerns.
LLM auditresponse for node.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper to run Node.js via Electron by setting the `ELECTRON_RUN_AS_NODE` environment variable and invoking the system-installed `electron43` binary. It performs no network requests, no obfuscated code execution, no file operations beyond executing the Electron binary with user-provided arguments. The commented text explains the rationale, and the HTML entities (`&gt;`, `&quot;`) are harmless formatting artifacts in the comment. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Electron/Node wrapper; no security concerns.
</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, patch-region.js...
+ Reviewed node.sh. Status: SAFE -- Standard Electron/Node wrapper; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for repackaging a Windows Electron application. It downloads the official upstream binary from the vendor&#x27;s domain (kimi-img.moonshot.cn), extracts it, removes Windows-specific files, replaces the daimon binary and node runtime with wrapper scripts (daimon.sh, node.sh), patches the region identifier, and installs everything into a dedicated prefix. All source checksums are pinned, no unexpected network requests are made during build, no obfuscated code is present, and no system files outside the package installation prefix are modified. The wrapper scripts (daimon.sh, node.sh) are not visible in this file, but their mere existence is not inherently malicious; they are a common adaptation technique for repackaging. No evidence of exfiltration, backdoors, or supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[7/8] Reviewing patch-region.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for patch-region.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a packaging helper script that patches an extracted Electron application (Kimi Work) to hardcode the region (china/overseas) and adjust resource paths and desktop names so that two versions can coexist in separate `/opt` prefixes. All operations are local file modifications within the extracted asar directory: it rewrites `package.json`, patches the main JavaScript file to replace the region detection function with a constant, and modifies a `resourcesPath` reference to prefer an environment variable (`KIMI_WORK_RESOURCES`) that the packaging wrapper will set. It also replaces the desktop filename derivation to ensure separate `WM_CLASS` values. There are no network requests, no downloads, no obfuscated code, and no execution of untrusted content. The script is entirely legitimate for a dual-region Electron application package.
</details>
<evidence>
</evidence>
<summary>
Standard packaging script; no malicious behavior found.
</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed patch-region.js. Status: SAFE -- Standard packaging script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,654
  Completion Tokens: 4,062
  Total Tokens: 28,716
  Total Cost: $0.002983
  Execution Time: 45.24 seconds

Final Status: SAFE


No issues found.
