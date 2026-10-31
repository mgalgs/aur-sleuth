---
package: code-powershell
pkgbase: vscode-powershell
pkgver: 2026.1.2preview
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29320
completion_tokens: 8466
total_tokens: 37786
cost: 0.004208932
execution_time: 39.54
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T07:07:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: .editorconfig
    status: safe
    summary: Benign EditorConfig configuration file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Harmless nvchecker configuration file.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .pre-commit-config.yaml
    status: safe
    summary: Standard pre-commit config; no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: vscode-powershell.install
    status: safe
    summary: Informational post-install script with no security issues.
  - file: REUSE.toml
    status: safe
    summary: Metadata-only REUSE config, no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content detected.
---

code-powershell is built from vscode-powershell
Materializing code-powershell from local mirror...
Materialized code-powershell
Analyzing code-powershell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code. In this PKGBUILD, the top-level scope consists solely of static variable assignments (pkgname, pkgver, source, checksums, etc.), simple parameter expansions (`_tag`), and function definitions (`prepare`, `build`, `check`, `_package_extension`, and the `package_*` functions). No top-level command substitutions, external downloads, encoded payloads, or system-modifying commands are present. The function bodies contain package build/test logic, but those are not executed during `--printsrcinfo` and are outside the scope of this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level code is static definitions only; no malicious execution during --printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is static definitions only; no malicious execution during --printsrcinfo.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, .editorconfig...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for Arch Linux package development, generated from a well-known template (toptal.com). It contains only ignore patterns for build artifacts (`*.tar`, `*.tar.*`, `pkg/`, `src/`, etc.) and a platform-specific pattern (`vscode-powershell-*/`). There is no executable code, no network requests, no obfuscation, and no system modification. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .editorconfig...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
[1/10] Reviewing .SRCINFO, .editorconfig, .nvchecker.toml...
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an EditorConfig configuration file (`.editorconfig`) that defines formatting rules for various file types used in the code-powershell package. It sets indentation styles, line endings, character sets, and other editor preferences. There are no executable commands, network operations, obfuscated code, or any operations that could exfiltrate data or modify the system. The content is entirely declarative and standard for packaging workflows.
</details>
<evidence/>
<summary>Benign EditorConfig configuration file with no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .editorconfig, .nvchecker.toml, .pre-commit-config.yaml...
[2/10] Reviewing .SRCINFO, .nvchecker.toml, .pre-commit-config.yaml...
+ Reviewed .editorconfig. Status: SAFE -- Benign EditorConfig configuration file with no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for `nvchecker`, a tool that checks for new upstream versions. It simply declares that version checks should look at GitHub tags for the `PowerShell/vscode-powershell` repository, with a tag transformation rule (`from_pattern`/`to_pattern`). There are no commands, no code execution, no network destinations other than the package's own upstream project, and no obfuscation. This is a standard metadata file in AUR packages that use nvchecker for automated version detection.
</details>
<evidence></evidence>
<summary>Harmless nvchecker configuration file.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, .nvchecker.toml, .pre-commit-config.yaml, LICENSE...
[3/10] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Harmless nvchecker configuration file.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text LICENSE document containing permissive software license terms. It contains no executable code, network requests, obfuscated content, file operations, or system modifications. As a static license file, it poses no security risk.
</details>
<evidence></evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, LICENSE...
[4/10] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard LICENSE text — it contains only a permissive software license grant and disclaimer of warranty. There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, PKGBUILD...
[5/10] Reviewing .SRCINFO, .pre-commit-config.yaml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .pre-commit-config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for the pre-commit framework. It defines local hooks that run various linters and formatters (shellcheck, shfmt, ruff, biome, etc.) using tools already installed on the system (`language: system`). The `entry` commands are straightforward invocations of those tools, sometimes wrapped in a brief shell script to capture output or check exit codes.  

No network requests, downloads, encoded/obfuscated commands, or file operations beyond the standard linter workflows are present. The behavior is consistent with ordinary packaging and development tooling. There is no evidence of malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard pre-commit config; no malicious indicators found.
</summary>
</security_assessment>

[6/10] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .pre-commit-config.yaml. Status: SAFE -- Standard pre-commit config; no malicious indicators found.
[6/10] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `vscode-powershell` AUR package. It defines the package base, version, license, dependencies, and source. The source is correctly pinned to an official GitHub Release archive (`v2026.1.2-preview.tar.gz`) from the legitimate Microsoft/PowerShell repository. Strong checksums (`sha512sums`, `b2sums`) are provided to verify the integrity of the source tarball. There is no obfuscated code, no suspicious network destinations, and no executable commands within this declarative file. It conforms entirely to standard and secure AUR packaging practices with no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, vscode-powershell.install...
[7/10] Reviewing PKGBUILD, REUSE.toml, vscode-powershell.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for vscode-powershell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple post-install script that only prints informational messages using `echo`. There are no network requests, file operations, system modifications, code execution, or any other potentially dangerous operations. The script simply advises users about the PowerShell extension being built-in and recommends uninstalling duplicate marketplace versions. This is standard packaging behavior.

The content is limited to three echo statements with static strings, performing no dynamic operations. No commands like eval, base64, curl, or wget are present. The script cannot perform any exfiltration, backdoor creation, or supply-chain attack on its own. It is a benign informational script.
</details>
<evidence></evidence>
<summary>Informational post-install script with no security issues.</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed vscode-powershell.install. Status: SAFE -- Informational post-install script with no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that merely declares licensing metadata (SPDX-FileCopyrightText and SPDX-License-Identifier) for several files in the repository. It contains no executable code, no network operations, no obfuscated content, and no file manipulation logic. It is purely compliance/annotation data.
</details>
<evidence></evidence>
<summary>Metadata-only REUSE config, no executable or suspicious content.</summary>
</security_assessment>

[9/10] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata-only REUSE config, no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging file for the PowerShell extension for multiple VS Code variants. It downloads the source tarball from the official GitHub repository (https://github.com/PowerShell/vscode-powershell) and verifies it using sha512sums and b2sums, which are provided. The prepare stage runs `npm ci` from the official npm registry, which is expected for npm-based projects. The build stage runs `npm run compile -- --minify`. The test stage uses the locally installed Code - OSS and xvfb-run to run the extension tests. The package functions install the extension files into the appropriate directories for each editor. There is no obfuscated code, no unexpected network requests to unknown hosts, no execution of uncontrolled code, and no system modifications beyond the intended installation paths. The sed modifications to .vscode-test.mjs adapt the test configuration to use the system-installed editor instead of downloading VS Code Insiders, which is a benign and documented change. The file does not contain any malicious elements or supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,320
  Completion Tokens: 8,466
  Total Tokens: 37,786
  Total Cost: $0.004209
  Execution Time: 39.54 seconds

Final Status: SAFE


No issues found.
