---
package: voltius-git
pkgver: 0.66.0.r0.g75228866
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10533
completion_tokens: 4843
total_tokens: 15376
cost: 0.001839929
execution_time: 42.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T12:11:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: File is a standard metadata file with no suspicious content.
  - file: voltius.desktop
    status: safe
    summary: Clean standard desktop entry file.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no injected malicious code.
---

Materializing voltius-git from local mirror...
Materialized voltius-git
Analyzing voltius-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists solely of standard variable assignments and array definitions (pkgname, pkgver, source, etc.) with no command substitutions, function calls, or any executable code that could be triggered during sourcing. All functions (pkgver, prepare, build, package) are defined but not invoked during `makepkg --printsrcinfo`, so they are out of scope for this gate. The source array uses a standard git+https URL, and the SKIP checksums are expected for VCS sources. No malicious top-level code is present.</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, voltius.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata file for the voltius-git AUR package. It declares the package&#39;s version, dependencies, architecture, license, and source locations. The sources point to the project&#39;s own upstream Git repository on GitHub, which is expected packaging practice. Checksums are set to &#39;SKIP&#39;, which is standard for VCS sources and not a security concern. There are no commands, obfuscated code, network requests, or any other executable content in this file. No evidence of malicious behavior or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>File is a standard metadata file with no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, voltius.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- File is a standard metadata file with no suspicious content.
LLM auditresponse for voltius.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org Desktop Entry file. It contains no executable code, no network requests, no obfuscated data, and no system modification commands. Its sole purpose is to integrate the Voltius application into the system menu, specifying the display name, icon, and the binary to launch (`Exec=voltius`). There is no evidence of malicious injection or supply-chain attack. The file conforms entirely to standard packaging practices for a GUI application.
</details>
<evidence>
</evidence>
<summary>
Clean standard desktop entry file.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed voltius.desktop. Status: SAFE -- Clean standard desktop entry file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS-style build file for the voltius-git package. It fetches source from the project's own GitHub repository (unpinned `main` branch, which is expected for a `-git` package) and builds a Tauri-based application using Rust and Node.js.  
The only non-standard dependency installation is `npm install -g pnpm@10.34.5 --prefix "$srcdir/npm-global"` in `prepare()`. While installing a build tool from npm adds a network dependency, the version is pinned and the tool is used only during the build step to run the upstream build system (`pnpm install` / `pnpm tauri build`). This pattern is a common workaround for AUR packages that require `pnpm`, which is not in the official repositories.  
No obfuscated commands, exfiltration attempts, unexpected network destinations, filesystem manipulation outside the build context, or backdoors are present. The remaining code is standard Arch packaging (installation of binaries, icons, desktop file, license) and harmless build environment variables (dummy Tauri signing key, linker override).  
Any supply-chain concerns would lie in the upstream source or the npm registry, which are outside the scope of this file; the PKGBUILD itself does not inject malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard VCS PKGBUILD with no injected malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no injected malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,533
  Completion Tokens: 4,843
  Total Tokens: 15,376
  Total Cost: $0.001840
  Execution Time: 42.81 seconds

Final Status: SAFE


No issues found.
