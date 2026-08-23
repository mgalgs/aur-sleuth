---
package: powerline-fonts-git
pkgver: r215.a029626
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 56215
completion_tokens: 7968
total_tokens: 64183
cost: 0.00649359
execution_time: 132.37
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:04:23Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package, no malicious indicators.
  - file: powerline-fonts-git.install
    status: safe
    summary: Standard font cache update script, no security issues.
  - file: src/fonts/Terminus/BDF/ter-powerline-x16b.bdf
    status: safe
    summary: Font file; no malicious content found.
  - file: src/fonts/Terminus/BDF/ter-powerline-x14b.bdf
    status: safe
    summary: Font file contains no executable code or malicious content.
  - file: src/fonts/Terminus/BDF/ter-powerline-x18b.bdf
    status: safe
    summary: Standard BDF font file, no security issues.
  - file: src/fonts/fontconfig/50-enable-terminess-powerline.conf
    status: safe
    summary: Safe fontconfig configuration file, no security concerns.
  - file: src/fonts/AnonymousPro/fonts.scale
    status: safe
    summary: Inert font metadata file, no security concerns.
  - file: src/fonts/Terminus/BDF/ter-powerline-x12b.bdf
    status: safe
    summary: Standard font file, no malicious content.
  - file: src/fonts/install.ps1
    status: safe
    summary: Safe - standard font installer, no malicious behavior.
  - file: src/fonts/AnonymousPro/fonts.dir
    status: safe
    summary: Standard font directory index, no security issues.
  - file: src/fonts/uninstall.sh
    status: safe
    summary: Standard uninstall script, no malicious behavior.
  - file: src/fonts/install.sh
    status: safe
    summary: Standard font install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/powerline-fonts-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f04wjdw3...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f04wjdw3
Analyzing powerline-fonts-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f04wjdw3) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources from the official `powerline/fonts` repository via a standard `git+https` URL. The top-level code consists only of variable declarations and a `pkgver()` function that reads git metadata from the cloned repo – no dangerous commands. The `install` file is not processed during source fetching or `pkgver()`. No obfuscation, network exfiltration, or unexpected operations are present. The `sha1sums` of `SKIP` is normal for VCS sources. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only clone the repo and evaluate the PKGBUILD without executing `prepare()`, `build()`, or `package()`, which is safe.
</details>
<summary>Standard VCS PKGBUILD, no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard VCS PKGBUILD, no malicious code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, powerline-fonts-git.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard AUR package for powerline fonts cloned from the official upstream GitHub repository (`github.com/powerline/fonts`). The `sha1sums` are set to `SKIP`, which is required for VCS (`git+`) sources and is normal practice.

The `package()` function uses `find` and `install` to copy font files (`.ttf`, `.otf`, `.pcf.gz`, `.psf.gz`) into system directories under `$pkgdir`. This is expected behavior for a font package. There is no obfuscated code, no network requests during build/install, no execution of untrusted external scripts, and no manipulation of files outside the package's own installation scope.

The only potential concern is that the `install=${pkgname}.install` line references an `.install` file whose content is not provided. However, `.install` files in AUR packages are conventionally used for post-installation tasks like running `fc-cache` or `mkfontscale`, which are standard and expected for font packages. Without evidence to the contrary, this is not a security threat. Overall, the PKGBUILD appears benign and consistent with normal packaging practices.
</details>
<summary>Standard AUR font package, no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing powerline-fonts-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package, no malicious indicators.
LLM auditresponse for powerline-fonts-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script for a font package. It contains three functions (`post_install`, `post_upgrade`, `post_remove`) that update the system font cache by calling `mkfontscale`, `mkfontdir`, and `fc-cache` on standard font directories (`/usr/share/fonts/TTF`, `/usr/share/fonts/OTF`, `/usr/share/fonts/misc`). These are routine, expected operations for a font package and involve no network requests, no dangerous commands (e.g., `eval`, `curl`, `wget`, `bash`), no obfuscated code, and no data exfiltration. The script does nothing outside its intended scope of refreshing font caches. It is safe.
</details>
<summary>Standard font cache update script, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed powerline-fonts-git.install. Status: SAFE -- Standard font cache update script, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 148 files available for selection; offering the 50 highest-priority to the model. 15 lower-priority file(s) were not offered.
LLM response for file selection:
src/fonts/install.sh
src/fonts/install.ps1
src/fonts/uninstall.sh
src/fonts/fontconfig/50-enable-terminess-powerline.conf
src/fonts/AnonymousPro/fonts.dir
src/fonts/AnonymousPro/fonts.scale
src/fonts/Terminus/BDF/ter-powerline-x12b.bdf
src/fonts/Terminus/BDF/ter-powerline-x14b.bdf
src/fonts/Terminus/BDF/ter-powerline-x16b.bdf
src/fonts/Terminus/BDF/ter-powerline-x18b.bdf
Decided to review 10 additional files: src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.dir, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/Terminus/BDF/ter-powerline-x14b.bdf, src/fonts/Terminus/BDF/ter-powerline-x16b.bdf, src/fonts/Terminus/BDF/ter-powerline-x18b.bdf
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/fonts/install.sh...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir, src/fonts/Terminus/BDF/ter-powerline-x14b.bdf...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir, src/fonts/Terminus/BDF/ter-powerline-x14b.bdf, src/fonts/Terminus/BDF/ter-powerline-x16b.bdf...
[0/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir, src/fonts/Terminus/BDF/ter-powerline-x14b.bdf, src/fonts/Terminus/BDF/ter-powerline-x16b.bdf, src/fonts/Terminus/BDF/ter-powerline-x18b.bdf...
LLM auditresponse for ter-powerline-x16b.bdf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BDF (Bitmap Distribution Format) font file containing glyph bitmap data. No evidence of executable code, obfuscated commands, network requests, or system modifications. All content consists of ASCII hex bitmap representations for font characters, typical for terminal font packages. No suspicious patterns (curl, wget, eval, base64, exec) are present. This is a legitimate font resource for the powerline-fonts package.</details>
<summary>Font file; no malicious content found.</summary>
</security_assessment>

[1/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir, src/fonts/Terminus/BDF/ter-powerline-x14b.bdf, src/fonts/Terminus/BDF/ter-powerline-x18b.bdf...
+ Reviewed src/fonts/Terminus/BDF/ter-powerline-x16b.bdf. Status: SAFE -- Font file; no malicious content found.
LLM auditresponse for ter-powerline-x14b.bdf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BDF bitmap font file (part of the Terminess Powerline font collection). It contains only glyph bitmap data (hexadecimal rows) and font metadata. There are no executable instructions, no network requests (curl, wget), no obfuscation (base64, eval), and no file operations outside of what a font file normally contains. The Powerline-specific glyphs (e.g., uniE0A0–uniE0B3) are standard patched-in symbols for powerline statusline rendering and are not suspicious. The content is purely data, with no evidence of any injected malicious code or supply-chain attack.</details>
<summary>Font file contains no executable code or malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir, src/fonts/Terminus/BDF/ter-powerline-x18b.bdf...
+ Reviewed src/fonts/Terminus/BDF/ter-powerline-x14b.bdf. Status: SAFE -- Font file contains no executable code or malicious content.
LLM auditresponse for ter-powerline-x18b.bdf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ter-powerline-x18b.bdf` is a standard BDF (Bitmap Distribution Format) font file. It contains only glyph metrics, metadata, and hexadecimal bitmap data. There are no executable scripts, network commands (curl, wget), obfuscated code, or any system-modifying operations present. The file is purely font data used to define glyph shapes for the Terminess Powerline font. No supply-chain attack indicators or malicious behavior are evident.
</details>
<summary>Standard BDF font file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/fontconfig/50-enable-terminess-powerline.conf, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir...
+ Reviewed src/fonts/Terminus/BDF/ter-powerline-x18b.bdf. Status: SAFE -- Standard BDF font file, no security issues.
LLM auditresponse for 50-enable-terminess-powerline.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard fontconfig configuration file that simply whitelists the font family &quot;terminess powerline&quot; for the fontconfig system. It contains no executable code, no network requests, and no operations beyond defining a font pattern. It is entirely benign and follows expected packaging practices for font packages.
</details>
<summary>
Safe fontconfig configuration file, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/AnonymousPro/fonts.scale, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir...
+ Reviewed src/fonts/fontconfig/50-enable-terminess-powerline.conf. Status: SAFE -- Safe fontconfig configuration file, no security concerns.
LLM auditresponse for fonts.scale:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `fonts.scale` is a standard X11 font scale file. It contains no executable code, no network requests, no obfuscation, and no system-modifying operations. It simply lists font filenames (Anonymice Powerline TTF variants) and their corresponding X Logical Font Descriptions (XLFD) for various encodings and styles. This is a normal configuration file used by the X font system to index available fonts. There is no evidence of malicious behavior or supply-chain attack vectors.
</details>
<summary>Inert font metadata file, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/Terminus/BDF/ter-powerline-x12b.bdf, src/fonts/AnonymousPro/fonts.dir...
+ Reviewed src/fonts/AnonymousPro/fonts.scale. Status: SAFE -- Inert font metadata file, no security concerns.
LLM auditresponse for ter-powerline-x12b.bdf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BDF (Bitmap Distribution Format) font file containing glyph bitmaps. It consists solely of font metadata (header, properties) and hex-encoded pixel data for each character. No executable code, scripts, network requests, obfuscated commands, or other malicious patterns are present. The file follows the standard BDF format and contains no evidence of supply chain injection.
</details>
<summary>Standard font file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/fonts/install.sh, src/fonts/install.ps1, src/fonts/uninstall.sh, src/fonts/AnonymousPro/fonts.dir...
+ Reviewed src/fonts/Terminus/BDF/ter-powerline-x12b.bdf. Status: SAFE -- Standard font file, no malicious content.
LLM auditresponse for install.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PowerShell script for installing fonts on Windows. It searches for .ttf and .otf files in the script directory and copies them to the system font folder using the `shell.application` COM object. There are no network requests, no obfuscated code, no execution of downloaded content, and no operations outside the intended scope of font installation. The script is part of the upstream powerline-fonts project and is included in the AUR package's source; it is not invoked during building or installation of the Arch package itself. No supply-chain attack indicators are present.
</details>
<summary>Safe - standard font installer, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/fonts/install.sh, src/fonts/uninstall.sh, src/fonts/AnonymousPro/fonts.dir...
+ Reviewed src/fonts/install.ps1. Status: SAFE -- Safe - standard font installer, no malicious behavior.
LLM auditresponse for fonts.dir:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `fonts.dir` is a standard X11 font directory index. It contains a header line with the count of font entries, followed by lines associating font filenames (like `Anonymice powerline bold italic.ttf`) with their X Logical Font Description (XLFD) strings across multiple encodings. This is normal, expected data for a font package and contains no executable code, network requests, obfuscation, or any other suspicious behavior. There are no security concerns.
</details>
<summary>Standard font directory index, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/fonts/install.sh, src/fonts/uninstall.sh...
+ Reviewed src/fonts/AnonymousPro/fonts.dir. Status: SAFE -- Standard font directory index, no security issues.
LLM auditresponse for uninstall.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard uninstaller for Powerline fonts. It removes font files (`.otf`, `.ttf`, `.pcf.gz`) from the user's font directory by finding matching files in the script's own directory. It then optionally resets the font cache using `fc-cache`. There are no network requests, obfuscated code, or suspicious commands. The only file operations are removal of font files from the user's fonts directory, which is expected behavior for an uninstallation script. No evidence of malicious activity.
</details>
<summary>Standard uninstall script, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/fonts/install.sh...
+ Reviewed src/fonts/uninstall.sh. Status: SAFE -- Standard uninstall script, no malicious behavior.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs only standard font installation tasks: it copies `.otf`, `.ttf`, and `.pcf.gz` font files from the repository directory to the user's font directory (either `~/Library/Fonts` on macOS or `~/.local/share/fonts` on Linux), and optionally resets the font cache using `fc-cache` on Linux. There are no network requests, no downloads, no obfuscated commands, no use of `eval`, `curl`, `wget`, or any other mechanisms that could introduce malicious behavior. The operations are entirely local and confined to the expected directories for font installation. This is a benign, conventional install script commonly seen in font packages, including the powerline-fonts project.
</details>
<summary>
Standard font install script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/fonts/install.sh. Status: SAFE -- Standard font install script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,215
  Completion Tokens: 7,968
  Total Tokens: 64,183
  Total Cost: $0.006494
  Execution Time: 132.37 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-powerline-fonts-git.txt
Final Status: SAFE


No issues found.
