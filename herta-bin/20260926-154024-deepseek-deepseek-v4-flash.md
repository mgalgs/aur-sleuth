---
package: herta-bin
pkgver: 0.1.6
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17811
completion_tokens: 3132
total_tokens: 20943
cost: 0.00113248800
execution_time: 37.36
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:40:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: README.md
    status: safe
    summary: Documentation-only README with standard AUR workflow examples; no malicious behavior detected.
  - file: herta.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code detected.
  - file: herta.sh
    status: safe
    summary: Standard Electron launcher, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file; no malicious code or operations found. SAFE.
---

Materializing herta-bin from local mirror...
Materialized herta-bin
Analyzing herta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions, dependency arrays, and source URLs. No command substitutions, backtick executions, eval calls, or other dangerous constructs are present that would execute during `makepkg --printsrcinfo`. The `prepare()` and `package()` functions contain the only potentially interesting operations, but these are not invoked by the `--printsrcinfo` command and will be audited separately in the full PKGBUILD review. There is no top-level malicious code that would exfiltrate data or download/execute untrusted payloads when the file is sourced.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR packaging repositories. It lists file patterns that should be ignored by version control (compiled packages, source directories, build artifacts, etc.). There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
[1/6] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README/documentation file for the `herta-bin` AUR package. It explains the package's purpose, installation instructions, file layout, licensing notes, and git remotes used by the maintainer.

No executable code, obfuscated content, network requests, file operations, or system modifications are present. The only mentions of commands (`paru`, `yay`, `makepkg`, `git push`) are standard AUR user and maintainer workflow examples. The upstream reference (github.com/PersonaCLI/Herta) is the project's own repository, and the package is described as repacking the official upstream AppImage. There is no evidence of injected malicious behavior, data exfiltration, or untrusted code execution.
</details>
<evidence>
</evidence>
<summary>
Documentation-only README with standard AUR workflow examples; no malicious behavior detected.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed README.md. Status: SAFE -- Documentation-only README with standard AUR workflow examples; no malicious behavior detected.
[2/6] Reviewing .SRCINFO, PKGBUILD, herta.desktop...
LLM auditresponse for herta.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used by Linux desktop environments to define how an application appears in menus and launchers. It contains only metadata fields such as `Name`, `Comment`, `Exec`, `Icon`, `Categories`, and `StartupWMClass`. No executable code, network requests, file manipulations, or obfuscation is present. The file is part of the normal packaging workflow and poses no security risk.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, herta.desktop, herta.sh...
[3/6] Reviewing .SRCINFO, PKGBUILD, herta.sh...
+ Reviewed herta.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package that repacks the official Herta desktop companion AppImage for use with a system-installed Electron runtime. The source tarball is downloaded from the project's own GitHub releases page with a pinned SHA256 checksum. The prepare() function extracts the AppImage, unpacks the app.asar archive, and uses sed to replace `process.resourcesPath` with a package-specific path — a routine adaptation for system Electron usage. No obfuscated code, no unexpected network requests, no base64 or eval, and no modifications outside the package's own directories. The `SKIP` checksums on the local .sh and .desktop files are acceptable for auxiliary scripts bundled with the AUR source. All operations serve the stated purpose of installing the application in a size-efficient, security-update-tracked manner. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code detected.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, herta.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code detected.
LLM auditresponse for herta.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application launcher. It sets environment variables for desktop integration and trash handling, then executes the system’s electron binary with the application’s main bundle. No network requests, obfuscation, dangerous commands (eval, base64, curl, wget), file exfiltration, or unauthorized system modifications are present. The use of placeholders (@appname@, @appdir@, @electronversion@) is typical for AUR PKGBUILD templates that substitute values at build time. The script solely launches the upstream application and performs no unexpected actions.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed herta.sh. Status: SAFE -- Standard Electron launcher, no malicious code.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file only. It declares package metadata, dependencies, source URLs, and checksums. No executable code or build/install instructions are present, so there is no script in this file that can perform network requests, file modifications, or arbitrary command execution.

The primary source is a prebuilt AppImage downloaded directly from the project's own GitHub releases page, with a pinned `sha256sum`. The `herta.sh` and `herta.desktop` entries use `SKIP` checksums, which is common practice for local AUR helper files and is not itself malicious. While `SKIP` means those local files are not independently verified by the package manager, this is a hygiene consideration rather than evidence of a supply-chain attack. No suspicious destinations, obfuscation, or dangerous operations are present in this metadata.
</details>
<evidence>
</evidence>
<summary>
Metadata-only file; no malicious code or operations found. SAFE.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file; no malicious code or operations found. SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,811
  Completion Tokens: 3,132
  Total Tokens: 20,943
  Total Cost: $0.001132
  Execution Time: 37.36 seconds

Final Status: SAFE


No issues found.
