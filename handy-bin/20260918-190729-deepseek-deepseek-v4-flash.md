---
package: handy-bin
pkgver: 0.9.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 18936
completion_tokens: 3615
total_tokens: 22551
cost: 0.001282134
execution_time: 145.16
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:07:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text; no malicious or suspicious content found.
  - file: LICENSE
    status: safe
    summary: License file contains only standard ISC license text; no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker config; points to package's own upstream repo. No malicious behavior."
  - file: REUSE.toml
    status: safe
    summary: Declarative REUSE config file. No security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard, checksum-pinned binary package from upstream; no malicious behavior found.
---

Materializing handy-bin from local mirror...
Materialized handy-bin
Analyzing handy-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, array definitions, and function definitions. No command substitutions, `eval`, backticks, or any other code execution occurs at global scope. The `source` and `b2sums` arrays use simple string interpolation, which is standard and safe during sourcing. The `package()` function is defined but not executed. There is no code that could run during `makepkg --printsrcinfo` that would fetch, execute, or exfiltrate data.
</details>
<evidence></evidence>
<summary>
No dangerous top-level code present.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata descriptor for the AUR package. It declares upstream sources from the official GitHub repository (cjpais/Handy), includes a license file, and lists standard dependencies for a GTK-based offline speech-to-text application. The checksums (b2sums) are provided for both source files. No executable code, obfuscated content, or suspicious operations are present. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
[1/7] Reviewing .gitignore, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain-text license file (ISC-style license) attributed to "Arch Linux Contributors". It contains only standard license grant and warranty disclaimer language. There is no executable code, no network activity, no file operations, no obfuscation, and no references to any build, install, or post-install behavior. Nothing in this file deviates from ordinary packaging practice or poses any security risk.
</details>
<evidence></evidence>
<summary>Standard ISC license text; no malicious or suspicious content found.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text; no malicious or suspicious content found.
[2/7] Reviewing .gitignore, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains the standard ISC license text, which is a common permissive software license. It is a verbatim license declaration for the package and contains no executable code, network requests, file operations, obfuscation, or any other behavior that could pose a security risk. There is nothing malicious or suspicious in this content.
</details>
<evidence>
</evidence>
<summary>
License file contains only standard ISC license text; no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[3/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file contains only standard ISC license text; no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used for AUR git repository management. It ignores all files by default (`*`) and then un-ignores the specific files needed for AUR packaging and REUSE compliance: `.nvchecker.toml` (the nvchecker auto-updater config), `.SRCINFO` (the generated AUR metadata), `PKGBUILD` (the build script), `REUSE.toml` (REUSE compliance configuration), and the license files (`LICENSE`, `LICENSES/`).

There are no network requests, no encoded or obfuscated content, no dangerous commands, no file operations outside the repository, and no attempt to hide anything. This is purely a whitelist for version-controlled files in a standard AUR git workflow.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore whitelisting packaging files; no security issues found.</summary>
</security_assessment>

[3/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, REUSE.toml...
[4/7] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no security issues found.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to automate upstream version detection for the `handy-bin` package. It declares the source type as `git` and points to the project's own upstream repository (`https://github.com/cjpais/Handy.git`), which is the legitimate upstream of the packaged application. The `prefix = &quot;v&quot;` line simply tells nvchecker to strip a leading `v` from version tags, a completely ordinary convention for version checking.

There is no evidence of injected or malicious behavior: no network requests to unrelated hosts, no code execution, no obfuscation, no file manipulation, and no dangerous commands. This file is only a metadata descriptor for a version-checking tool; it is not executed as a script and contains no logic that could exfiltrate data or tamper with the system. Fetching from the package's own upstream git repository is expected behavior for this type of helper configuration.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config; points to package's own upstream repo. No malicious behavior.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; points to package's own upstream repo. No malicious behavior.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `REUSE.toml` configuration used to declare copyright and license information for repository files in the REUSE specification format. It only contains a version number, a list of file path globs, and SPDX copyright/license metadata. There is no executable code, no network activity, no file operations, and no reference to external commands. The content is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>
Declarative REUSE config file. No security issues found.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative REUSE config file. No security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR binary-package conventions (`-bin`). The source tarball and license are both fetched from the upstream project&apos;s own GitHub repository (cjpais/Handy), matching the declared `url`. Both source files have pinned `b2sums` (not SKIP), so the downloaded artifacts are checksum-verified at build time.

The `package()` function merely extracts the `.deb`&apos;s `data.tar.gz` into `$pkgdir`, installs the license, and applies a trivial `sed` to the packaged `.desktop` file to insert a `Categories=` value. There are no network requests at build time beyond the declared `source=` files, no use of `eval`, `base64`, `curl|bash`, or other shell tricks, no writes outside `$pkgdir`, and no runtime hooks or services that could exfiltrate data or execute attacker-controlled code.

The provided dependencies and `optdepends` (wtype/xdotool for virtual input) are consistent with the stated purpose of a speech-to-text application on Linux. Nothing in this file indicates injected, obfuscated, or supply-chain-malicious behavior. At most, it is an unpinned-by-version-commit binary release, but since checksums are pinned, this is a standard and acceptable packaging practice for an AUR `-bin` package.
</details>
<evidence>
</evidence>
<summary>Standard, checksum-pinned binary package from upstream; no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard, checksum-pinned binary package from upstream; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,936
  Completion Tokens: 3,615
  Total Tokens: 22,551
  Total Cost: $0.001282
  Execution Time: 145.16 seconds

Final Status: SAFE


No issues found.
