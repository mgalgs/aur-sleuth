---
package: ttf-twemoji
pkgver: 17.0.2
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15278
completion_tokens: 2949
total_tokens: 18227
cost: 0.00181435968
execution_time: 131.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 4
upstream_named_files: 0
unpinned_sources: 2
date: 2026-08-29T03:39:44Z
file_verdicts:
  - file: 75-twemoji.conf
    status: safe
    summary: Standard fontconfig config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard font PKGBUILD; no malicious behavior or suspicious operations found.
  - file: .SRCINFO
    status: safe
    summary: No security issues; standard AUR metadata file.
  - file: ttf-twemoji.install
    status: safe
    summary: Benign install script with informational messages only.
---

Cloning https://aur.archlinux.org/ttf-twemoji.git...
Cloned ttf-twemoji
Analyzing ttf-twemoji AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and a `package()` function. All source URLs are HTTPS from the expected maintainer and upstream repositories. There is no top-level command substitution, `pkgver()` function, or other code that could execute during source fetching or sourcing. The `sha256sums` include SKIP entries, but that is a trust/hygiene matter, not a threat. No malicious code is present that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://raw.githubusercontent.com/jdecked/twemoji/v17.0.2/LICENSE-GRAPHICS, LICENSE-BUILD::https://github.com/JoeBlakeB/ttf-twemoji-aur/blob/17.0.2/LICENSE
Reviewing the 4 file(s) in the AUR repository. The 4 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, 75-twemoji.conf...
[0/4] Reviewing .SRCINFO, 75-twemoji.conf, PKGBUILD...
LLM auditresponse for 75-twemoji.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard fontconfig XML configuration file for the ttf-twemoji package. It contains no executable code, no network requests, no obfuscated commands, and no file operations beyond what fontconfig expects (modifying font family mappings, altering charset ranges to remove conflicting emoji glyphs from other fonts). The file is purely declarative and performs its intended function: ensuring Twemoji is used as the emoji font in applications. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard fontconfig config; no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed 75-twemoji.conf. Status: SAFE -- Standard fontconfig config; no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, ttf-twemoji.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward font packaging script. It fetches the Twemoji TTF release from the package maintainer&#39;s GitHub releases, a fontconfig configuration file, and two license files, then installs them into `$pkgdir`. There are no suspicious network calls during `prepare()` or `build()`, no encoded/obfuscated commands, no use of `eval`, `curl` piping to a shell, or unexpected file operations outside the package directory.

The `sha256sums` for the two license sources are set to `SKIP`. This is a reproducibility/hygiene concern but not evidence of malice per the assessment criteria. The sources themselves are the package maintainer&#39;s GitHub and the upstream project&#39;s repository, which are consistent with the package&#39;s declared purpose. The `package()` function only installs fonts, fontconfig configuration, and license files using normal `install` commands.

Overall, no injected malicious code, data exfiltration, backdoors, or supply-chain red flags were found. The package is consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard font PKGBUILD; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ttf-twemoji.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font PKGBUILD; no malicious behavior or suspicious operations found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a static metadata file for the AUR package ttf-twemoji. It defines the package name, version, dependencies, and sources. All sources are standard: a prebuilt TTF from the package maintainer&#39;s GitHub release (with a SHA256 checksum), a configuration file, and license files (one with SKIP checksum, which is acceptable for raw URLs). There are no executable instructions, obfuscated code, network requests beyond standard source downloads, or system modifications. The use of a third-party GitHub release for the font is typical for AUR packages that build from upstream SVG sources and provide a precompiled TTF; the checksum ensures integrity. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>No security issues; standard AUR metadata file.</summary>
</security_assessment>

[3/4] Reviewing ttf-twemoji.install...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues; standard AUR metadata file.
LLM auditresponse for ttf-twemoji.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ttf-twemoji.install` is a standard Arch Linux package install script. It contains only informational `echo` statements and a version comparison using `awk` and `printf` (which is benign). There are no network requests, no execution of downloaded code, no obfuscated commands, no file writes or modifications, and no dangerous operations like `eval`, `curl`, `wget`, or `base64`. The script merely prints instructions to the user regarding manual font configuration. The version comparison is used to notify users about a change in font config file location during upgrades, which is a typical packaging practice. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Benign install script with informational messages only.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ttf-twemoji.install. Status: SAFE -- Benign install script with informational messages only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,278
  Completion Tokens: 2,949
  Total Tokens: 18,227
  Total Cost: $0.001814
  Execution Time: 131.88 seconds

Final Status: SAFE


No issues found.
