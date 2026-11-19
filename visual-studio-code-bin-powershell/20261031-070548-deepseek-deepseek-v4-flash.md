---
package: visual-studio-code-bin-powershell
pkgbase: vscode-powershell
pkgver: 2026.1.2preview
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29364
completion_tokens: 9966
total_tokens: 39330
cost: 0.004485936
execution_time: 54.01
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T07:05:47Z
file_verdicts:
  - file: .editorconfig
    status: safe
    summary: Static editorconfig file with no executable code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: .pre-commit-config.yaml
    status: safe
    summary: Standard pre-commit config for AUR package maintenance.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malice found.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE configuration file, no malicious content.
  - file: vscode-powershell.install
    status: safe
    summary: Harmless post-install message script; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
---

visual-studio-code-bin-powershell is built from vscode-powershell
Materializing visual-studio-code-bin-powershell from local mirror...
Materialized visual-studio-code-bin-powershell
Analyzing visual-studio-code-bin-powershell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and function declarations. All assignments (e.g., `pkgver`, `_tag`, `source`, checksums) use static strings or simple parameter expansion without command substitution. The functions (`prepare`, `build`, `check`, `_package_extension`, `package_*`) are defined but not invoked during `makepkg --printsrcinfo`. No `eval`, `source`, `curl`, `wget`, or other dangerous commands appear in the top-level scope. Therefore, sourcing this file to print metadata is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .editorconfig...
[0/10] Reviewing .SRCINFO, .editorconfig, .gitignore...
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `.editorconfig` configuration file. It contains only formatting rules (indentation, charset, line endings, etc.) for different file types in the project. There are no commands, scripts, network requests, or any dynamic content. The file is inherently safe and cannot perform any malicious actions. It is a standard static configuration file used by editors and code formatters. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Static editorconfig file with no executable code.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .editorconfig, .gitignore, .nvchecker.toml...
[1/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
+ Reviewed .editorconfig. Status: SAFE -- Static editorconfig file with no executable code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an Arch Linux package development environment, generated from a common gitignore template. It lists common build artifact patterns (`*.tar`, `*.tar.*`, `*.jar`, `*.exe`, `*.msi`, `*.zip`, `*.tgz`, `*.log`, `*.log.*`, `*.sig`) and directories (`pkg/`, `src/`) to exclude from version control. The additional entry `vscode-powershell-*/` is likely specific to the Visual Studio Code PowerShell binary package. No executable code, network requests, obfuscated commands, file operations, or any other suspicious content is present. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, .pre-commit-config.yaml...
[2/10] Reviewing .SRCINFO, .nvchecker.toml, .pre-commit-config.yaml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `vscode-powershell` package. It defines the package base, multiple subpackage variants (e.g., `code-powershell`, `visual-studio-code-bin-powershell`, `vscodium-powershell`, `vscodium-bin-powershell`), their dependencies, and the upstream tarball source from the official GitHub repository with pinned checksums. There are no executable commands, network requests, obfuscated code, or any dynamic behavior. The only minor anomaly is the HTML-encoded `&amp;gt;` in dependency version strings (e.g., `powershell-editor-services&amp;gt;=4.7.0`), which is a formatting artifact rather than an obfuscation attempt. The file performs no operations that deviate from ordinary AUR packaging metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
[3/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a software license (similar to the MIT License) attributed to Arch Linux Contributors. It contains only legal text granting permission to use, copy, modify, and distribute the software. There are no executable instructions, network requests, obfuscated code, or system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[4/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license template (Copyright Arch Linux Contributors). It contains no executable code, no network requests, no obfuscation, and no system operations. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[5/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
[5/10] Reviewing .nvchecker.toml, .pre-commit-config.yaml, PKGBUILD...
LLM auditresponse for .pre-commit-config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a [pre-commit](https://pre-commit.com) configuration for local hooks that run system-installed Arch Linux packages (e.g., `shfmt`, `shellcheck`, `ruff`, `biome`, `rumdl`, `pwsh`, etc.). Each hook calls a standard build/lint/formatter tool; there are no network requests, no downloads, no encoded/obfuscated commands, and no unexpected file operations. The `srcinfo` hook runs `makepkg --printsrcinfo` and compares it with `.SRCINFO`, which is normal AUR packaging hygiene. The `psscriptanalyzer` hook runs `Invoke-ScriptAnalyzer` via `pwsh`, an upstream Microsoft PowerShell linter—this is the package's own stated purpose (Visual Studio Code with PowerShell support) and not an injected threat. All commands are invoked with standard arguments and no attempt to exfiltrate data, fetch remote code, or alter system state beyond what the tools are designed to do.
</details>
<evidence></evidence>
<summary>Standard pre-commit config for AUR package maintenance.</summary>
</security_assessment>

[6/10] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .pre-commit-config.yaml. Status: SAFE -- Standard pre-commit config for AUR package maintenance.
[6/10] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` utility, which is commonly used in the AUR ecosystem to automatically detect new upstream versions of packaged software. This file contains no executable code, no obfuscated strings, and no references to unexpected or suspicious network endpoints. 

It configures the version checker to monitor the official `PowerShell/vscode-powershell` GitHub repository for new version tags, specifically targeting pre-release tags that include the latest PowerShell Editor Services. The `prefix`, `use_max_tag`, and `from_pattern`/`to_pattern` directives are standard `nvchecker` configuration options for parsing version strings from repository tags. The network destination (`github.com/PowerShell/vscode-powershell`) is the project's own legitimate upstream repository, making this a routine and expected packaging support file with no indicators of a supply chain attack.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no malice found.</summary>
</security_assessment>

[6/10] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml, vscode-powershell.install...
[7/10] Reviewing PKGBUILD, REUSE.toml, vscode-powershell.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malice found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
REUSE.toml is a metadata file used to declare copyright and licensing information for files in a project, as part of the REUSE specification. It contains no executable code, no network operations, no file modifications, and no obfuscated content. The listed paths are standard files in an AUR package repository (PKGBUILD, .SRCINFO, etc.). There is no indication of malicious behavior—this is a routine configuration file that serves a documentation purpose only.
</details>
<evidence></evidence>
<summary>Standard REUSE configuration file, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, vscode-powershell.install...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE configuration file, no malicious content.
LLM auditresponse for vscode-powershell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation hook that simply outputs informational messages to the user. It contains no network requests, file modifications, execution of external programs, obfuscated code, or any other operations beyond harmless `echo` statements. The messages merely inform the user about the PowerShell extension being built-in and advise on proper uninstallation procedures. There is no evidence of malicious, suspicious, or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Harmless post-install message script; no security concerns.</summary>
</security_assessment>

[9/10] Reviewing PKGBUILD...
+ Reviewed vscode-powershell.install. Status: SAFE -- Harmless post-install message script; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Node.js-based Visual Studio Code extension. The upstream source tarball is pinned with both `sha512sums` and `b2sums`, ensuring integrity at download. Network requests are limited to the project&#39;s own GitHub archive URL and the official npm registry (`registry.npmjs.org`) for dependency restoration, both legitimate destinations directly tied to the package&#39;s stated purpose.

The `prepare()` function uses `sed` to adapt the test configuration (`vscode-test.mjs`) to run against the system’s Code – OSS Electron binary instead of downloading a pre-built VS Code Insiders, a normal and expected modification for a distribution package. The `npm ci` command is invoked with standard flags (`--no-audit`, `--no-fund`) to reduce build-time noise, which is a hygiene choice rather than a security concern. No dangerous commands such as `eval`, `base64`, `curl|bash`, or `git pull` overrides are present. Installation steps use `install` and `cp` within `$pkgdir`, exactly as packaging guidelines mandate. No obfuscation, exfiltration, backdoors, or tampering with unrelated system files is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,364
  Completion Tokens: 9,966
  Total Tokens: 39,330
  Total Cost: $0.004486
  Execution Time: 54.01 seconds

Final Status: SAFE


No issues found.
