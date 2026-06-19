---
package: helium-browser-bin
pkgver: 0.13.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 80227
completion_tokens: 6742
total_tokens: 86969
cost: 0.00843399
execution_time: 73.71
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:10:03Z
file_verdicts:
  - file: LICENSE.ungoogled_chromium
    status: safe
    summary: License file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of malicious code.
  - file: src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info
    status: safe
    summary: Empty file, no malicious content.
  - file: src/helium-0.13.4.1-x86_64_linux/helium.desktop
    status: safe
    summary: Standard browser .desktop file, no malicious content.
  - file: 0002-align-desktop-entry.patch
    status: safe
    summary: Standard desktop file alignment patch, no security concerns.
  - file: src/helium-0.13.4.1-x86_64_linux/helium-wrapper
    status: safe
    summary: Standard browser wrapper, no malicious behavior found.
  - file: src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info
    status: safe
    summary: Benign localization resource mapping file; no threats.
  - file: src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json
    status: safe
    summary: Benign Vulkan ICD JSON configuration file.
  - file: src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info
    status: safe
    summary: Empty file; no content to analyze.
  - file: 0001-update-wrapper-arch.patch
    status: safe
    summary: Patch adds config file support with sanitization; no malicious behavior.
  - file: src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info
    status: safe
    summary: Empty file, no content to analyze; safe.
  - file: src/helium-0.13.4.1-x86_64_linux/apparmor.cfg
    status: safe
    summary: Standard AppArmor profile, no malicious behavior.
---

Cloning https://aur.archlinux.org/helium-browser-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7alhzon4...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7alhzon4
Analyzing helium-browser-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7alhzon4) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous code in its global/top-level scope. The `source` array and arch-specific source arrays all reference the package's own upstream GitHub repository (imputnet/helium-linux) and raw.githubusercontent.com for a license file—these are normal, expected download locations for an AUR package. There is no `pkgver()` function, and no command substitutions, `eval`, or any obfuscated calls that could execute untrusted content during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed with the specified `--nobuild --nodeps --noprepare` flags. All checksums are provided (with `SKIP` for the `.asc` signature file, which is standard practice). No evidence of malicious behavior such as exfiltration, backdoors, or fetching code from unexpected hosts.
</details>
<summary>Safe: no dangerous code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no dangerous code executed during source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE.ungoogled_chromium...
LLM auditresponse for LICENSE.ungoogled_chromium:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD 3-Clause license text for the ungoogled-chromium project. It contains no executable code, no instructions, no network requests, no obfuscation, and no system modifications. It is purely a legal document distributed with the package. There are no security concerns.
</details>
<summary>License file with no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE.ungoogled_chromium. Status: SAFE -- License file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a browser distributed as a pre-built binary archive. It fetches all sources from the official GitHub releases of the project (imputnet/helium-linux), includes PGP signature verification, and applies two patches to adapt the wrapper and desktop file for Arch Linux. There is no obfuscated code, no unexpected network requests, no execution of downloaded content from untrusted sources, and no tampering with system files outside the package's own installation paths. The `sha256sums` for the detached ASCII-armored signature files are set to `SKIP`, which is normal practice because signatures are not checksummed the same way as binary tarballs. All operations are consistent with a benign, correctly maintained AUR package.
</details>
<summary>Standard AUR PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 227 files available for selection; offering the 50 highest-priority to the model. 177 lower-priority file(s) were not offered.
LLM response for file selection:
0001-update-wrapper-arch.patch
0002-align-desktop-entry.patch
src/helium-0.13.4.1-x86_64_linux/helium.desktop
src/helium-0.13.4.1-x86_64_linux/apparmor.cfg
src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json
src/helium-0.13.4.1-x86_64_linux/helium-wrapper
src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info
src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info
src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info
src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info
Decided to review 10 additional files: 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing 0001-update-wrapper-arch.patch...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info...
[0/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
LLM auditresponse for af_FEMININE.pak.info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `af_FEMININE.pak.info` appears to be an empty file (no content). As such, there is no code, instructions, or data to analyze for malicious behavior. Empty files are common in packaging as placeholders or metadata. No security issues detected.
</details>
<summary>Empty file, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/helium.desktop, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/locales/af_FEMININE.pak.info. Status: SAFE -- Empty file, no malicious content.
LLM auditresponse for helium.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Chromium-based browser (Helium). It contains only desktop entry metadata (name, translations, categories, MIME types) and three launcher commands: `helium %U`, `helium`, and `helium --incognito` — all of which are normal for a web browser. No executable code, obfuscated strings, network requests, or any other potentially malicious content is present. The file follows standard freedesktop.org desktop entry specification and poses no security risk.
</details>
<summary>Standard browser .desktop file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing 0001-update-wrapper-arch.patch, 0002-align-desktop-entry.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/helium.desktop. Status: SAFE -- Standard browser .desktop file, no malicious content.
LLM auditresponse for 0002-align-desktop-entry.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch simply updates the `helium.desktop` file to change the executable and icon names from `helium` to `helium-browser`, aligning the desktop entry with the expected binary name after installation. There is no obfuscated code, no network requests, no unexpected file operations, and no deviation from standard packaging practices. It is a benign and routine change.
</details>
<summary>Standard desktop file alignment patch, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing 0001-update-wrapper-arch.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/helium-wrapper, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed 0002-align-desktop-entry.patch. Status: SAFE -- Standard desktop file alignment patch, no security concerns.
LLM auditresponse for helium-wrapper:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for a Chromium-based browser (Helium). It sets `CHROME_VERSION_EXTRA` to assist with bug reporting, resolves its own path to define `CHROME_WRAPPER` and `HERE`, adjusts `LD_LIBRARY_PATH` to include the bundled library directories, and then executes the main `helium` binary with any passed arguments. No network requests, obfuscation, or dangerous operations are present. The script follows normal packaging practices for browser wrappers.

Potential concerns (none malicious):  
- `CHROME_VERSION_EXTRA` is hardcoded to `"custom"` instead of a distro identifier, but this is a placeholder meant to be replaced during packaging (as noted in the comment).  
- `LD_LIBRARY_PATH` modifications are typical for self-contained browser packages that ship their own libraries.  
- The script does not verify any signatures or checksums, but that is consistent with the AUR model where trust is placed in the package source.

No evidence of supply-chain attack or injected malicious code.
</details>
<summary>Standard browser wrapper, no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing 0001-update-wrapper-arch.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/helium-wrapper. Status: SAFE -- Standard browser wrapper, no malicious behavior found.
LLM auditresponse for af.pak.info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `af.pak.info` is a Chromium localization string mapping file. It consists entirely of lines mapping string identifiers (e.g., `IDS_SETTINGS_ABOUT_PROGRAM`) to resource IDs and source `.grd`/`.grdp` file paths. There is no executable code, no network requests (curl/wget), no obfuscation (base64/eval), and no system manipulation. The content is standard for Chromium-based browsers and poses no security risk.
</details>
<summary>Benign localization resource mapping file; no threats.</summary>
</security_assessment>

[5/10] Reviewing 0001-update-wrapper-arch.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/locales/af.pak.info. Status: SAFE -- Benign localization resource mapping file; no threats.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan ICD (Installable Client Driver) JSON manifest for SwiftShader. The content, once decoded from HTML entity-escaped quotes, is `{"file_format_version": "1.0.0", "ICD": {"library_path": "./libvk_swiftshader.so", "api_version": "1.0.5"}}`. It defines a relative path to the SwiftShader library, which is typical for bundled Vulkan implementations. There is no executable code, network requests, obfuscation, or any behavior that deviates from normal packaging. The HTML entity encoding is likely an artifact of the file truncation or display, not an attempt at obfuscation.
</details>
<summary>Benign Vulkan ICD JSON configuration file.</summary>
</security_assessment>

[6/10] Reviewing 0001-update-wrapper-arch.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/vk_swiftshader_icd.json. Status: SAFE -- Benign Vulkan ICD JSON configuration file.
LLM auditresponse for af_NEUTER.pak.info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `af_NEUTER.pak.info` is empty. There is no code or data to analyze, so no security issues exist.
</details>
<summary>Empty file; no content to analyze.</summary>
</security_assessment>

[7/10] Reviewing 0001-update-wrapper-arch.patch, src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/locales/af_NEUTER.pak.info. Status: SAFE -- Empty file; no content to analyze.
LLM auditresponse for 0001-update-wrapper-arch.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds support for reading browser flags from system and user configuration files (`/etc/helium-browser-flags.conf` and `~/.config/helium-browser-flags.conf`) and an environment variable `HELIUM_USER_FLAGS`. It includes sanitization to block command substitution (`$()` and backticks) and escapes `$` and `~` before using `eval` to parse quoted flags. While `eval` is inherently risky, the sanitization measures are typical for robust shell configuration parsing and do not introduce a supply-chain attack. The additional redirection of file descriptors (`exec < /dev/null`, etc.) is a standard hardening technique referenced from Chromium bug 376567. No malicious behavior such as data exfiltration, backdoors, or downloading/executing code from unexpected sources is present.
</details>
<summary>Patch adds config file support with sanitization; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/helium-0.13.4.1-x86_64_linux/apparmor.cfg, src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info...
+ Reviewed 0001-update-wrapper-arch.patch. Status: SAFE -- Patch adds config file support with sanitization; no malicious behavior.
LLM auditresponse for af_MASCULINE.pak.info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `af_MASCULINE.pak.info` is empty. There is no code, script, or configuration to analyze. An empty file cannot contain malicious logic, obfuscated commands, or any other security threat. This is a standard packaging artifact with no security implications.
</details>
<summary>Empty file, no content to analyze; safe.</summary>
</security_assessment>

[9/10] Reviewing src/helium-0.13.4.1-x86_64_linux/apparmor.cfg...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/locales/af_MASCULINE.pak.info. Status: SAFE -- Empty file, no content to analyze; safe.
LLM auditresponse for apparmor.cfg:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AppArmor profile for the helium browser binary located at `/opt/helium/helium`. It includes the AppArmor abi and global tunables, and sets the profile with `flags=(default_allow)`, which allows actions unless specifically denied. The rule `userns` grants permission to use user namespaces, a common requirement for modern browser sandboxing (e.g., Chromium-based browsers). The `include if exists` directive pulls in any local customizations from `/etc/apparmor.d/local/helium-bin`. There is no obfuscation, no external network requests, no execution of untrusted commands, and no deviation from standard packaging practices for an AppArmor configuration file. The content is benign and serves only to define security policy for the application.
</details>
<summary>Standard AppArmor profile, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/helium-0.13.4.1-x86_64_linux/apparmor.cfg. Status: SAFE -- Standard AppArmor profile, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 80,227
  Completion Tokens: 6,742
  Total Tokens: 86,969
  Total Cost: $0.008434
  Execution Time: 73.71 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-helium-browser-bin.txt
Final Status: SAFE


No issues found.
