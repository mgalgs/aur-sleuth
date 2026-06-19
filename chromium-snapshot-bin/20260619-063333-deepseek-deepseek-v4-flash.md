---
package: chromium-snapshot-bin
pkgver: 151.0.7901.0.r1649501
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 77065
completion_tokens: 10346
total_tokens: 87411
cost: 0.00879813
execution_time: 115.26
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T06:33:32Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: chromium-snapshot-bin.install
    status: safe
    summary: Non-malicious install script with only user notes.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Chromium snapshot; no malicious behavior found.
  - file: src/chrome-linux/MEIPreload/manifest.json
    status: safe
    summary: Standard Chrome extension manifest with no malicious content.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js
    status: safe
    summary: Standard Chrome extension content script; no security issues found.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js
    status: safe
    summary: Legitimate Chromium extension script for Docs a11y.
  - file: src/chrome-linux/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD manifest, no security issues.
  - file: src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat
    status: safe
    summary: Legitimate privacy sandbox data file, no malicious content.
  - file: chromium-snapshot-bin.sh
    status: safe
    summary: Standard Chromium wrapper, no malicious behavior.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json
    status: safe
    summary: Standard extension manifest, no malicious content.
  - file: chromium-snapshot-bin.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: src/chrome-linux/chrome-wrapper
    status: safe
    summary: Standard upstream Chromium wrapper; no malicious behavior found.
  - file: src/chrome-linux/resources/inspector_overlay/main.js
    status: safe
    summary: No malicious code found; standard DevTools overlay.
---

Cloning https://aur.archlinux.org/chromium-snapshot-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_1asad6...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_1asad6
Analyzing chromium-snapshot-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_1asad6) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope sets `_build` via a `curl` to Google's official API (`commondatastorage.googleapis.com`), which is standard for Chromium snapshot packages and does not execute arbitrary code. The `source` array downloads from the same trusted upstream and includes proper checksums for static files. The `pkgver()` function runs `chrome-linux/chrome --version`, which executes the upstream binary after extraction. While executing a binary from an untrusted source carries inherent supply-chain risk, this is the official upstream application; the PKGBUILD itself does not inject any malicious code or deviate from normal packaging practices. No obfuscation, exfiltration, or unexpected network destinations are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch sources and execute the above, which is safe given the scope of this gate.
</details>
<summary>Standard AUR snapshot PKGBUILD with no injected malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR snapshot PKGBUILD with no injected malicious code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing chromium-snapshot-bin.install...
[0/3] Reviewing chromium-snapshot-bin.install, LICENSE...
[0/3] Reviewing chromium-snapshot-bin.install, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD-style license file from the Chromium project. It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is a routine license file included with the package and poses no security risk.
</details>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing chromium-snapshot-bin.install, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for chromium-snapshot-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script that only prints informational messages to the user during package installation or upgrade. It defines colored output helpers (`msg_blue`, `note`) and a `post_install` function that outputs notes about Pepper Flash auto-detection, the location of custom flags, and the launcher name. There are no network requests, no dangerous commands (curl, wget, eval, base64), no file modifications, no data exfiltration, and no hidden or obfuscated code. The script is completely benign and conforms to normal AUR packaging practices.
</details>
<summary>Non-malicious install script with only user notes.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed chromium-snapshot-bin.install. Status: SAFE -- Non-malicious install script with only user notes.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Chromium snapshot binary package. It fetches the latest build number from Google's official Chromium snapshot server (`commondatastorage.googleapis.com`) and downloads the corresponding `chrome-linux.zip` and `chromedriver_linux64.zip` archives. The `sha1sums` for those archives are set to `SKIP`, which is expected for mutable snapshot sources and not an indicator of malice. All other files (scripts, icons, desktop entry, license) have verified checksums.

The `package()` function performs routine installation steps: creating directories, setting permissions (including `chmod 4755` on the sandbox binary, which is required by Chromium), placing binaries, icons, a desktop file, a man page, and the license. There are no suspicious network requests to untrusted hosts, no obfuscated commands, no eval/base64 tricks, and no attempts to exfiltrate or tamper with system data. The sole external network interaction is with the official Chromium build server, which is the package's declared upstream. While the unpinned source and dynamic version fetch introduce a supply-chain risk in principle, they are typical for snapshot packages and do not constitute malicious or dangerous behavior by the AUR maintainer.
</details>
<summary>Standard AUR PKGBUILD for Chromium snapshot; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Chromium snapshot; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 241 files available for selection; offering the 50 highest-priority to the model. 190 lower-priority file(s) were not offered.
LLM response for file selection:
chromium-snapshot-bin.desktop
chromium-snapshot-bin.sh
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js
src/chrome-linux/resources/inspector_overlay/main.js
src/chrome-linux/MEIPreload/manifest.json
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json
src/chrome-linux/vk_swiftshader_icd.json
src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat
src/chrome-linux/chrome-wrapper
Decided to review 10 additional files: chromium-snapshot-bin.desktop, chromium-snapshot-bin.sh, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/chrome-wrapper
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing chromium-snapshot-bin.sh...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
[0/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/chrome-wrapper...
LLM auditresponse for manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Chrome extension manifest for "MEI Preload" (Media Engagement preloaded data). It contains only standard manifest fields: name, version, description, and a Chrome update URL (`clients2.google.com`). There is no executable code, no obfuscation, and no indication of malicious activity. The use of HTML entity encoding for quotes is simply a formatting choice and does not hide any dangerous content. This file is part of the Chromium browser's built-in component and is harmless.
</details>
<summary>Standard Chrome extension manifest with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/MEIPreload/manifest.json. Status: SAFE -- Standard Chrome extension manifest with no malicious content.
LLM auditresponse for content.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Chrome extension content script. It creates a `<script>` element pointing to a resource within the extension itself using `chrome.runtime.getURL`, then appends it to the document. This is normal behavior for injecting extension scripts into web pages. There is no obfuscation, no external network requests, no system file operations, and no deviation from standard Chromium extension practices. The code is consistent with the upstream Chromium project and serves the legitimate purpose of enabling reading mode in Google Docs.
</details>
<summary>Standard Chrome extension content script; no security issues found.</summary>
</security_assessment>

[2/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js. Status: SAFE -- Standard Chrome extension content script; no security issues found.
LLM auditresponse for gdocs_script.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Google Docs Canvas annotation script included with Chromium. It sets a window variable (`_docs_annotate_canvas_by_ext`) to the extension ID, enabling Google Docs accessibility features. The use of `eval` is mitigated by a Trusted Types policy, which is a security best practice. No suspicious behavior, external requests, or obfuscation is present. It serves the stated purpose of enabling a11y annotations for Google Docs when running as a Chrome extension.
</details>
<summary>Legitimate Chromium extension script for Docs a11y.</summary>
</security_assessment>

[3/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js. Status: SAFE -- Legitimate Chromium extension script for Docs a11y.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan ICD manifest for SwiftShader, a software Vulkan implementation. It contains only a JSON object with a library path and API version. There are no executable commands, network requests, obfuscated code, or any other suspicious patterns. The content is consistent with its expected purpose and does not indicate any supply-chain attack or malicious behavior.
</details>
<summary>Standard Vulkan ICD manifest, no security issues.</summary>
</security_assessment>

[4/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD manifest, no security issues.
LLM auditresponse for privacy-sandbox-attestations.dat:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `privacy-sandbox-attestations.dat` is a data file containing a list of HTTPS URLs of ad-tech and related domains, likely used by Chromium's Privacy Sandbox for attestation purposes. The content is a binary serialization of these URLs, with no executable code, scripts, or suspicious patterns (e.g., no curl, wget, eval, base64, or exec). This is a standard component of the Chromium browser and does not indicate a supply-chain attack or malicious behavior.
</details>
<summary>Legitimate privacy sandbox data file, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing chromium-snapshot-bin.sh, chromium-snapshot-bin.desktop, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat. Status: SAFE -- Legitimate privacy sandbox data file, no malicious content.
LLM auditresponse for chromium-snapshot-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Chromium snapshot binary. It reads optional user flags from `~/.config/chromium-flags.conf`, detects Pepper Flash if installed, sets environment variables (including public Google API keys that are routinely included in Arch Chromium packages), and then executes the main binary. There are no network requests, no obfuscated code, and no unexpected file operations. All commands (`grep`, `cut`, `readlink`, `exec`) serve legitimate packaging purposes. The script does not download or execute any code from untrusted sources, nor does it exfiltrate data. It is entirely consistent with normal AUR packaging practices.
</details>
<summary>Standard Chromium wrapper, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing chromium-snapshot-bin.desktop, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/chrome-wrapper...
+ Reviewed chromium-snapshot-bin.sh. Status: SAFE -- Standard Chromium wrapper, no malicious behavior.
LLM auditresponse for reading_mode_gdocs_helper_manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chrome extension manifest JSON file (part of Chromium's built-in Reading Mode Google Docs Helper). It defines content scripts and web accessible resources for interacting with Google Docs, which is expected upstream functionality. The `key` field is a base64-encoded public key used for extension updates—common and not suspicious. No malicious commands, obfuscation, or network fetch instructions are present.
</details>
<summary>Standard extension manifest, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing chromium-snapshot-bin.desktop, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json. Status: SAFE -- Standard extension manifest, no malicious content.
LLM auditresponse for chromium-snapshot-bin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for launching the Chromium Snapshot browser. It contains only localized metadata (name, comment) and launch configuration (`Exec=chromium-snapshot-bin %U`, icon, categories, MIME types). There is no executable code, no network operations, no system modifications, and no obfuscation. It follows normal packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/chrome-wrapper...
+ Reviewed chromium-snapshot-bin.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
LLM auditresponse for chrome-wrapper:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Chromium wrapper script (`chrome-wrapper`) from the upstream Chromium source. It performs normal desktop integration tasks: checking for an existing desktop file, generating one if missing, setting up the library path, and creating symlinks for missing libraries (e.g., libbz2.so.1.0, NSS libraries) from the system into the application directory. All file operations are limited to the user's local `.local/share/applications` directory and the Chromium installation directory. There are no network requests, no obfuscated code, no execution of untrusted content, and no data exfiltration. The script is entirely consistent with expected Chromium packaging and does not exhibit any signs of a supply-chain attack.
</details>
<summary>Standard upstream Chromium wrapper; no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/chrome-linux/resources/inspector_overlay/main.js...
+ Reviewed src/chrome-linux/chrome-wrapper. Status: SAFE -- Standard upstream Chromium wrapper; no malicious behavior found.
LLM auditresponse for main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main JavaScript bundle for Chromium DevTools overlay functionality. It implements rendering of grid/flexbox/source-order highlights, tooltips, pause overlay, screenshot selection, and window controls overlay. All communication is through the standard `window.InspectorOverlayHost` interface. There are no external network requests, eval, base64-decode of external payloads, file system access, or exfiltration. The code is minified but appears to be legitimate upstream DevTools content. No evidence of injected malicious behavior.
</details>
<summary>No malicious code found; standard DevTools overlay.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/chrome-linux/resources/inspector_overlay/main.js. Status: SAFE -- No malicious code found; standard DevTools overlay.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 77,065
  Completion Tokens: 10,346
  Total Tokens: 87,411
  Total Cost: $0.008798
  Execution Time: 115.26 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-chromium-snapshot-bin.txt
Final Status: SAFE


No issues found.
