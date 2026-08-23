---
package: onionscan-bin
pkgver: 0.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 20291
completion_tokens: 2708
total_tokens: 22999
cost: 0.00125604402
execution_time: 83.15
files_reviewed: 6
files_skipped: 0
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-23T18:48:06Z
file_verdicts:
  - file: onionscan-0.2.2-checksums.txt
    status: safe
    summary: Checksums file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -bin PKGBUILD with no signs of malice.
  - file: src/LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream release tracking.
  - file: src/CHANGELOG.md
    status: safe
    summary: Changelog text file; no executable or malicious content.
  - file: src/README.md
    status: safe
    summary: Documentation file only, no security concerns.
---

Cloning https://aur.archlinux.org/onionscan-bin.git...
Cloned onionscan-bin
Analyzing onionscan-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and source arrays in the global scope, and does not execute any command or function that would perform dangerous operations during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `verify()`, `build()`, and `package()` functions are defined but not invoked during these commands. All source URLs point to the official GitHub releases of the `onionscan` project, and checksums are provided (not SKIP). No obfuscation, system modification, or data exfiltration is present. The narrow gate operation is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, onionscan-0.2.2-checksums.txt...
LLM auditresponse for onionscan-0.2.2-checksums.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain list of SHA256 checksums for pre-compiled binary archives of the onionscan tool (version 0.2.2). It contains no executable commands, no network requests, no obfuscation, and no system modifications. It is purely a metadata/verification file used by the packager to verify downloaded artifacts. No suspicious or malicious content is present.
</details>
<evidence></evidence>
<summary>Checksums file with no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed onionscan-0.2.2-checksums.txt. Status: SAFE -- Checksums file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR prebuilt binary packaging practices. All source files are downloaded from the official GitHub releases of the upstream project (nao1215/onionscan) over HTTPS. SHA256 checksums are provided and pinned for all sources. The custom `verify()` function downloads the upstream checksums file and uses `sha256sum -c` to verify integrity, which is an additional verification step. The `build()` function runs the precompiled binary only to generate shell completions – a normal and expected operation. No suspicious network requests, obfuscated code, unexpected file manipulations, or attempts to exfiltrate data are present. The file does not contain supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard AUR -bin PKGBUILD with no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -bin PKGBUILD with no signs of malice.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (onionscan-0.2.2-x86_64.tgz, src/onionscan). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 4 additional files: .nvchecker.toml, src/CHANGELOG.md, src/LICENSE, src/README.md
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing .nvchecker.toml...
[0/4] Reviewing .nvchecker.toml, src/CHANGELOG.md...
[0/4] Reviewing .nvchecker.toml, src/CHANGELOG.md, src/LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no code, no network requests, no file operations, and no obfuscated content. It is a purely informational license file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .nvchecker.toml, src/CHANGELOG.md...
+ Reviewed src/LICENSE. Status: SAFE -- Standard license file, no security concerns.
[1/4] Reviewing .nvchecker.toml, src/CHANGELOG.md, src/README.md...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new upstream releases. It specifies that the package `onionscan-bin` should be checked against the GitHub repository `nao1215/onionscan` for the latest release, using the `v` prefix. This is a standard and expected practice for AUR packages that track upstream releases. There is no executable code, no network requests initiated by the file itself (the tool does that), and no obfuscation or system modifications. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream release tracking.</summary>
</security_assessment>

[2/4] Reviewing src/CHANGELOG.md, src/README.md...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream release tracking.
LLM auditresponse for CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a changelog in Markdown format. It contains only human-readable text describing software updates, dependency bumps, and test improvements. There are no executable scripts, no network requests, no obfuscated code, and no system-modifying operations. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Changelog text file; no executable or malicious content.</summary>
</security_assessment>

[3/4] Reviewing src/README.md...
+ Reviewed src/CHANGELOG.md. Status: SAFE -- Changelog text file; no executable or malicious content.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard README.md file for the OnionScan project, which is a legitimate Tor onion service security auditing tool. The file contains only documentation: project description, installation instructions, usage examples, configuration details, and contributor guidelines. There is no executable code, no obfuscated content, no suspicious network requests, no downloads from non-standard sources, and no instructions that deviate from normal packaging or documentation practices. The file does not contain any supply-chain attack indicators. The content is entirely informational and benign.
</details>
<evidence>
</evidence>
<summary>
Documentation file only, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/README.md. Status: SAFE -- Documentation file only, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,291
  Completion Tokens: 2,708
  Total Tokens: 22,999
  Total Cost: $0.001256
  Execution Time: 83.15 seconds

Final Status: SAFE


No issues found.
