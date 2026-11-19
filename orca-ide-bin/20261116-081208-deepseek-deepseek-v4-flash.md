---
package: orca-ide-bin
pkgver: 1.4.259
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17439
completion_tokens: 3170
total_tokens: 20609
cost: 0.00214011
execution_time: 14.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T08:12:08Z
file_verdicts:
  - file: orca-ide.js
    status: safe
    summary: Legitimate Electron bootstrap script, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron AUR package, no malicious indicators.
  - file: orca-ide.sh
    status: safe
    summary: Standard Electron launcher, no malicious behavior detected.
---

Materializing orca-ide-bin from local mirror...
Materialized orca-ide-bin
Analyzing orca-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions (including source arrays, checksums, dependencies) and function definitions (e.g., `_get_app_dir`, `_check_electron_version`, `_install_icons`, `prepare`, `package`). No command substitutions, external network calls, or other executable statements appear outside of function bodies. All code that interacts with the filesystem or network (e.g., `bsdtar`, `find`, `install`, `sed`) is inside `prepare()`, `package()`, or other helper functions, which are **not executed** when `makepkg --printsrcinfo` sources the PKGBUILD. Therefore, running this command poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, orca-ide.js...
LLM auditresponse for orca-ide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Electron app bootstrap script that resolves the application directory and optionally patches `fs` methods to redirect resource path lookups. It does not contain any network requests (`curl`, `wget`), no obfuscated code, no `eval`, `base64`, or execution of downloaded content. The path redirection logic is a common technique used in system-wide Electron installations to ensure the correct resources path (e.g., `/usr/lib/@appname@`) is used. The wrap function intercepts `fs` calls only for paths within the `electronResources` prefix and redirects to the app directory; this is not a supply-chain attack but rather a legitimate sane default for an AUR-packaged Electron app. There is no exfiltration, backdoor, or tampering with unrelated system files. The file is safe.
</details>
<evidence></evidence>
<summary>Legitimate Electron bootstrap script, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, orca-ide.js, orca-ide.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, orca-ide.sh...
+ Reviewed orca-ide.js. Status: SAFE -- Legitimate Electron bootstrap script, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file for the `orca-ide-bin` AUR package. It contains only package metadata such as name, version, dependencies, sources, and checksums. There is no executable code, no obfuscated strings, no network fetches or downloads, and no commands that could be interpreted or executed. All sources point to the project's own GitHub repository (`github.com/stablyai/orca`) and are pinned with specific SHA-256 checksums. The file does not exhibit any malicious or dangerous behavior; it follows standard AUR packaging metadata structure.
</details>
<evidence>

</evidence>
<summary>Metadata file, no executable content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, orca-ide.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the official upstream binary release (`.deb`) from the project's GitHub repository and bundles helper scripts (`orca-ide-bin.js` and `orca-ide-bin.sh`) that are stored locally in the AUR repo. All source checksums are pinned and verified. The `prepare()` function extracts the `.deb`, creates a wrapper CLI script, and patches placeholder values — all routine operations. There are no unexpected network requests, obfuscated code, or suspicious commands. The file behaves exactly as expected for packaging an Electron-based application.
</details>
<evidence></evidence>
<summary>Standard Electron AUR package, no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing orca-ide.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron AUR package, no malicious indicators.
LLM auditresponse for orca-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application launcher. It resolves the application entry (app.asar, app directory, or app.asar.unpacked) from within the installed package directory, sets up environment variables (LD_LIBRARY_PATH), handles `--no-sandbox` for root execution, and configures the Ozone platform based on an environment variable. It then exec's `electron` with the appropriate arguments. There are no network requests, no untrusted code execution, no encoded or obfuscated commands, and no filesystem modifications outside the package's own directory. All operations are standard for an Electron-based AUR package using a prebuilt binary.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed orca-ide.sh. Status: SAFE -- Standard Electron launcher, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,439
  Completion Tokens: 3,170
  Total Tokens: 20,609
  Total Cost: $0.002140
  Execution Time: 14.80 seconds

Final Status: SAFE


No issues found.
