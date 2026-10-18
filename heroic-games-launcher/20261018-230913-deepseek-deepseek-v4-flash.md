---
package: heroic-games-launcher
pkgver: 2.22.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10434
completion_tokens: 2153
total_tokens: 12587
cost: 0.001341340
execution_time: 20.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-18T23:09:13Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Appears to be a standard, benign AUR metadata file.
  - file: heroic.sh
    status: safe
    summary: Standard Electron app launcher wrapper; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-tag AUR PKGBUILD; no malicious behavior detected.
---

Materializing heroic-games-launcher from local mirror...
Materialized heroic-games-launcher
Analyzing heroic-games-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD at global scope only. This PKGBUILD contains only standard variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, dependency lists, etc.) and function definitions (`prepare`, `build`, `package`). None of the function bodies execute during `--printsrcinfo`. There are no top-level command substitutions, no curl/wget/eval/base64 usage, no network requests, and no file-modifying operations at global scope. The `source` array references the project's official GitHub repository, which is normal for this package. No malicious or suspicious code executes during this narrow gate.
</details>
<evidence>
</evidence>
<summary>
No top-level dangerous code; printsrcinfo only sources safe variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; printsrcinfo only sources safe variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, heroic.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata manifest for the heroic-games-launcher AUR package. It declares a git source from the official upstream GitHub repository pinned to tag v2.22.4, plus a local `heroic.sh` helper script. Both entries have explicit sha256 checksums. There are no network downloads beyond the declared upstream source, no encoded/obfuscated commands, no file manipulation logic, and no custom build/install steps — the file only defines package metadata and dependencies. The dependency list and optional dependencies are consistent with an Electron-based game launcher. No supply-chain red flags are present in this file.
</details>
<evidence>
</evidence>
<summary>
Appears to be a standard, benign AUR metadata file.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, heroic.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Appears to be a standard, benign AUR metadata file.
LLM auditresponse for heroic.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard application launcher wrapper for the Heroic Games Launcher. It uses `exec` to replace the shell process with the Electron runtime and loads the packaged application from `/usr/lib/heroic/app.asar`, passing through any user-provided arguments. The `@ELECTRON@` placeholder is a normal packaging substitution that will be replaced with the correct Electron binary path during package build/install.

There are no suspicious network requests, no downloads, no encoded or obfuscated commands, and no file operations outside of launching the application. This is consistent with ordinary packaging practice and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Electron app launcher wrapper; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed heroic.sh. Status: SAFE -- Standard Electron app launcher wrapper; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional AUR PKGBUILD for the Heroic Games Launcher. It fetches the upstream source from the project's official GitHub repository using a pinned release tag (`v${pkgver}`), applies a simple `sed` substitution to a wrapper script, installs dependencies with `pnpm install --ignore-scripts`, runs upstream build tasks, and installs the resulting application files into `$pkgdir`. Nothing here exfiltrates data, downloads or executes code from unexpected hosts, uses obfuscated commands, or modifies files outside the package's own scope.

The `pnpm run download-helper-binaries` and `pnpm run dist:linux` commands are upstream build steps provided by the Heroic project itself. They are not evidence of an injected supply-chain attack: running the upstream project's build system and installing its output is standard packaging practice. The `--ignore-scripts` flag actually reduces risk by preventing arbitrary package install scripts during dependency installation. No genuinely malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard pinned-tag AUR PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-tag AUR PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,434
  Completion Tokens: 2,153
  Total Tokens: 12,587
  Total Cost: $0.001341
  Execution Time: 20.99 seconds

Final Status: SAFE


No issues found.
