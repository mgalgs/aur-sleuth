---
package: handy
pkgver: 0.9.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19283
completion_tokens: 10969
total_tokens: 30252
cost: 0.00192749396
execution_time: 276.58
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:50:11Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with build artifact exclusions; no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: LICENSE
    status: safe
    summary: License text only; no code or malicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and valid checksums.
  - file: LICENSE
    status: safe
    summary: Benign license file with no security-relevant content.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE license configuration; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate pinned-source Tauri PKGBUILD; no malicious or unexpected behavior.
---

Materializing handy from local mirror...
Materialized handy
Analyzing handy AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, dependencies, source array, etc.) and no command substitutions, function calls, or other executable code in its global scope. The `source` array is a pinned git tag with a SHA256 checksum provided. There are no dangerous operations (curl, wget, eval, base64 decoding, etc.) at the top level that would execute during `makepkg --printsrcinfo`. The `build()` and `package()` functions contain commands like `bun install` and `bun tauri build`, but these are not invoked during the metadata generation step. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for a package build directory. It contains only patterns to exclude build artifacts (`src`, `pkg`), compressed package files (`*.tar.xz`, `*.tar.gz`, `*.tar.zst`), log files, and generated `handy-*` outputs. There is no executable code, no network activity, no file manipulation outside normal build artifacts, and no attempt to hide malicious behavior. This is consistent with ordinary Arch packaging workflows.
</details>
<evidence></evidence>
<summary>Standard .gitignore with build artifact exclusions; no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with build artifact exclusions; no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which is used to automatically check for new upstream releases. It contains only benign configuration keys: `source`, `github`, `use_max_tag`, and `prefix`. There is no code, no obfuscation, and no network or file operations within the file itself. The configuration points to the legitimate upstream GitHub repository `cjpais/Handy`. This is standard and safe.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[2/7] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the ISC-style license text for the Arch Linux Contributors. It is a standard permissive software license and contains no executable code, no network operations, no file manipulation, and no packaging logic. There is nothing in this content that could constitute a supply-chain attack or otherwise introduce security risk.

Since the content is purely a license declaration, there is no evidence of obfuscation, suspicious commands, or unexpected behavior. The file is safe.
</details>
<evidence></evidence>
<summary>License text only; no code or malicious behavior present.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[3/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License text only; no code or malicious behavior present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata descriptor. It contains only declarative fields: package name, version, description, dependencies, source URL, and checksums. The source points to the official upstream GitHub repository pinned to a specific commit with a matching SHA-256 checksum. There are no SKIP checksums, no suspicious URLs, no executable commands, and no network requests beyond the expected source fetch. All dependencies are standard system libraries. The file exhibits no signs of malicious or injected code; it follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned source and valid checksums.</summary>
</security_assessment>

[4/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and valid checksums.
[4/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license commonly included in Arch Linux packaging. It contains only the copyright notice and permissive license terms. There is no executable code, no network operations, no file manipulation, no obfuscated content, and no evidence of malicious or supply-chain behavior. It does not deviate from standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign license file with no security-relevant content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Benign license file with no security-relevant content.
LLM auditresponse for REUSE.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [REUSE](https://reuse.software/) specification configuration (version 1 format) used to declare copyright and license metadata for files in a source repository. It contains only a single `[[annotations]]` block listing common Arch User Repository (AUR) packaging file patterns (`PKGBUILD`, `README.md`, `.SRCINFO`, `*.install`, `*.service`, `*.tmpfiles`, etc.) and assigns them the SPDX license identifier `0BSD` with the copyright line &quot;Arch Linux contributors&quot;.

There is no executable code, no network activity, no file-manipulation logic, no obfuscation, and no reference to external hosts. The file only describes which license metadata applies to which patterns for the REUSE compliance checker. It contains nothing that deviates from ordinary packaging-practice configuration and presents no security concern.
</details>
<evidence></evidence>
<summary>Standard REUSE license configuration; no security issues.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE license configuration; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Reviewing this PKGBUILD shows a normal source build for the Handy Tauri application. The upstream source is fetched from the project's own GitHub repository and pinned to a specific commit hash via `_tag`; there is no `git pull`, `git fetch`, or `git reset --hard` during the build, and there are no downloads from unrelated hosts. `bun install` and `bun tauri build --bundles deb` are ordinary build steps for a Bun/Tauri project, and dependency fetching through the project's own build system is not a supply-chain indicator by itself.

The one-shot Tauri signing key generated with `bun tauri signer generate` and `pwgen` is a known workaround for Tauri's signing requirement; the key is used only during the build and is not installed into the package or exfiltrated. The `package()` function only copies the built `.deb` data, icons, license, and desktop file into `$pkgdir`, which is standard packaging behavior. No obfuscated commands, suspicious network activity, or unsafe system modifications are present.
</details>
<evidence></evidence>
<summary>Legitimate pinned-source Tauri PKGBUILD; no malicious or unexpected behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate pinned-source Tauri PKGBUILD; no malicious or unexpected behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,283
  Completion Tokens: 10,969
  Total Tokens: 30,252
  Total Cost: $0.001927
  Execution Time: 276.58 seconds

Final Status: SAFE


No issues found.
