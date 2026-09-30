---
package: throne-bin
pkgver: 1.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16549
completion_tokens: 3765
total_tokens: 20314
cost: 0.0018372277
execution_time: 91.96
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T23:04:28Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text; no executable or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official GitHub sources. No security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no security concerns found.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: Throne.sh
    status: safe
    summary: Standard config management and launcher script.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior found.
---

Materializing throne-bin from local mirror...
Materialized throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable and array definitions, along with a `package()` function. No command substitutions, `eval`, `curl`, `wget`, or other code execution occurs in the global scope during sourcing. The `_appver` variable is set via parameter expansion, which is a safe string operation. Running `makepkg --printsrcinfo` will only source this PKGBUILD and print metadata; no malicious code executes at this stage.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text ISC-style license authored by Arch Linux Contributors. It contains only standard license terms and contains no code, no commands, no network operations, and no file system modifications. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Plain license text; no executable or suspicious content found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no executable or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a standard Arch User Repository metadata file for a prebuilt binary package (`throne-bin`). It declares the package name, version, architecture, license, upstream URL, and two source files with pinned SHA-256 checksums: `Throne.desktop` and `Throne.sh`, plus architecture-specific release archives downloaded from the project's official GitHub releases (`https://github.com/throneproj/Throne/releases/download/...`). The checksums are present and not skipped, and the download host is the package's own upstream project, which is expected behavior.

There is no obfuscated code, no dynamic or mutable source fetching, no suspicious network endpoints, and no build or install commands in this file. The `conflicts` entries are ordinary package metadata. Nothing in this file deviates from standard packaging practice or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official GitHub sources. No security issues found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, Throne.desktop...
[2/6] Reviewing .gitignore, PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official GitHub sources. No security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by the AUR package maintainer to keep build artifacts and generated files out of the git repository. The patterns `pkg/` and `src/` ignore the standard makepkg build directories, `/*.png` ignores root-level screenshots (commonly used on AUR pages), and `*.zip` / `*.tar.zst` ignore downloaded source archives and built package artifacts.

There is no executable code, no network activity, no obfuscation, and no file manipulation beyond standard git ignore patterns. Nothing in this file deviates from ordinary AUR packaging workflow or poses any security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no security concerns found.</summary>
</security_assessment>

[2/6] Reviewing .gitignore, PKGBUILD, Throne.desktop, Throne.sh...
[3/6] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no security concerns found.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Throne application. It contains only metadata such as the executable name (`throne`), icon, categories, and startup properties. There are no commands, network requests, or any other operations that could execute arbitrary code. The file does not exhibit any signs of malicious behavior or supply-chain compromise. It follows the standard freedesktop.org desktop entry specification.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that manages application configuration directories and runs the binary. It performs migration from an older related application (nekoray), backsup old JSON configs, and removes broken symlinks. No network requests, no arbitrary code execution, no data exfiltration, and no obfuscated commands. The operations are consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard config management and launcher script.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed Throne.sh. Status: SAFE -- Standard config management and launcher script.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a `-bin` package. It downloads the project's own upstream release artifacts from `https://github.com/throneproj/Throne/releases` (the declared `url`), provides pinned SHA-256 checksums for all artifacts (including arch-specific ones), and installs the prebuilt binaries, launcher script, desktop file, and icon into the package directory. The `_appver` parameter expansion is a standard version-string conversion, not obfuscation.

The `package()` function performs only routine operations: `install` of binaries into `/opt/Throne/`, `install` of support files under `$srcdir/Throne/usr`, and installation of the launcher/desktop/icon into standard paths. The `find ... -printf` loop installs files from the upstream bundle into `$pkgdir`; it is a common (if slightly unrobust against spaces in filenames) packaging idiom and does not touch anything outside the build/package tree. There are no network requests at build time beyond the declared source fetch, no `eval`/`base64`/`curl|bash`, no credential or data exfiltration, and no modification of system files. No genuinely malicious or injected behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,549
  Completion Tokens: 3,765
  Total Tokens: 20,314
  Total Cost: $0.001837
  Execution Time: 91.96 seconds

Final Status: SAFE


No issues found.
