---
package: chromium-snapshot-bin
pkgver: 151.0.7901.0.r1649546
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 77065
completion_tokens: 8862
total_tokens: 85927
cost: 0.00853101
execution_time: 180.44
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T09:20:40Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: chromium-snapshot-bin.install
    status: safe
    summary: No malicious or suspicious behavior detected; purely informational.
  - file: PKGBUILD
    status: safe
    summary: Standard snapshot PKGBUILD with no malicious behavior found.
  - file: chromium-snapshot-bin.desktop
    status: safe
    summary: Standard desktop entry file with no security concerns.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js
    status: safe
    summary: Standard Chromium content script, no malicious behavior.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js
    status: safe
    summary: Legitimate Chromium extension script for Docs accessibility, no malicious behavior found.
  - file: src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json
    status: safe
    summary: Standard extension manifest, no malicious behavior.
  - file: src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat
    status: safe
    summary: Standard attestation list; no security concerns.
  - file: src/chrome-linux/resources/inspector_overlay/main.js
    status: safe
    summary: DevTools overlay code with no malicious behavior.
  - file: src/chrome-linux/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD configuration file, no malicious content.
  - file: src/chrome-linux/MEIPreload/manifest.json
    status: safe
    summary: Standard Chromium component manifest, no security issues.
  - file: chromium-snapshot-bin.sh
    status: safe
    summary: Standard Chromium launcher script for AUR package.
  - file: src/chrome-linux/chrome-wrapper
    status: safe
    summary: Standard upstream Chromium wrapper script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/chromium-snapshot-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oc2j8bd3...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oc2j8bd3
Analyzing chromium-snapshot-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oc2j8bd3) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, only the global scope and `pkgver()` are executed. The global scope contains a `curl` command to fetch a revision number from a Google-hosted URL (`commondatastorage.googleapis.com`), which is standard for snapshot packages and does not execute arbitrary code. The fetched string is stored in a variable and used solely for constructing source URLs. The `pkgver()` function runs `chrome-linux/chrome --version`, which only reads a local binary after extraction and produces a version string. No obfuscated commands, unexpected network requests, or code that downloads and runs payloads are present in the relevant scope. The setup is consistent with normal AUR packaging practices.
</details>
<summary>No malicious code in source-time scope; safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in source-time scope; safe to run.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, LICENSE...
[0/3] Reviewing PKGBUILD, LICENSE, chromium-snapshot-bin.install...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD-style license from the Chromium project. It contains no executable code, commands, or any content that could pose a security risk. It is simply a legal notice distributed with the package.
</details>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, chromium-snapshot-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for chromium-snapshot-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It contains only informational messages printed during installation/upgrade using colored output functions (common in makepkg). There are no network requests, file operations, execution of untrusted code, or any system modifications. The content is entirely benign and follows normal packaging conventions.
</details>
<summary>No malicious or suspicious behavior detected; purely informational.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed chromium-snapshot-bin.install. Status: SAFE -- No malicious or suspicious behavior detected; purely informational.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows the standard pattern for a Chromium snapshot binary package from the official Google build archive. The `_build` variable is fetched dynamically from `commondatastorage.googleapis.com` and used to construct the source URLs — this is the intended upstream source for Chromium snapshots, not an unexpected or malicious host. Checksums for the two large zip archives are set to `SKIP`, which is typical for such dynamic-source packages. All other files have explicit sha1sums.

The `chmod 4755 chrome_sandbox` line sets the setuid bit on the Chrome sandbox binary, which is standard and necessary for Chromium’s sandbox to function — this is an upstream design choice, not a supply-chain attack. No obfuscation, backdoors, data exfiltration, or unexpected network destinations are present. The only notable practice is fetching the build number outside of `pkgver()`, but this does not introduce malicious behavior.
</details>
<summary>Standard snapshot PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard snapshot PKGBUILD with no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 241 files available for selection; offering the 50 highest-priority to the model. 190 lower-priority file(s) were not offered.
LLM response for file selection:
chromium-snapshot-bin.desktop
chromium-snapshot-bin.sh
src/chrome-linux/chrome-wrapper
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js
src/chrome-linux/resources/inspector_overlay/main.js
src/chrome-linux/MEIPreload/manifest.json
src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json
src/chrome-linux/vk_swiftshader_icd.json
src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat
Decided to review 10 additional files: chromium-snapshot-bin.desktop, chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/vk_swiftshader_icd.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing chromium-snapshot-bin.sh...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat...
[0/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, chromium-snapshot-bin.desktop, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
LLM auditresponse for chromium-snapshot-bin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry file for the Chromium Snapshot browser. It contains only metadata such as application name, translations, icon path, executable command, MIME type associations, and category tags. No executable code, network requests, obfuscation, or system modifications are present. The file follows standard packaging practices for desktop integration and poses no security risk.
</details>
<summary>Standard desktop entry file with no security concerns.</summary>
</security_assessment>

[1/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed chromium-snapshot-bin.desktop. Status: SAFE -- Standard desktop entry file with no security concerns.
LLM auditresponse for content.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a content script for the Chrome (Chromium) browser, specifically for the Reading Mode GDocs helper feature. It creates a script element and injects `reading_mode_gdocs_helper/gdocs_script.js` into the page. The URL is obtained via `chrome.runtime.getURL()`, which refers to a script packaged within the extension itself. This is a standard and expected pattern for Chrome extensions to load their own resources; it does not connect to any external or unexpected network host, does not exfiltrate data, and does not execute arbitrary code. The code is straightforward, unobfuscated, and consistent with Chromium's usual functionality. No malicious behavior is present.
</details>
<summary>Standard Chromium content script, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/content.js. Status: SAFE -- Standard Chromium content script, no malicious behavior.
LLM auditresponse for gdocs_script.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Chromium extension script for enabling accessibility annotations in Google Docs Canvas. It sets a window variable with the extension ID to signal the Docs page to enable annotated rendering. The use of `eval` is scoped within a Trusted Types policy (`trustedTypes.createPolicy`) to create a script from a template string, which is a controlled and intentional mechanism for injecting the extension ID into the page context. No network requests, exfiltration, obfuscation, or unexpected system modifications are present. The code is consistent with legitimate upstream Chromium extension behavior and does not indicate a supply-chain attack.
</details>
<summary>
Legitimate Chromium extension script for Docs accessibility, no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper/gdocs_script.js. Status: SAFE -- Legitimate Chromium extension script for Docs accessibility, no malicious behavior found.
LLM auditresponse for reading_mode_gdocs_helper_manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chromium extension manifest (`reading_mode_gdocs_helper_manifest.json`) for the Reading Mode Google Docs Helper, included as part of the Chromium snapshot package. The file contains no executable code—it is a declarative JSON configuration defining a content script that runs on Google Docs pages to support the Reading Mode feature. The `key` field is a base64-encoded public key for the extension, which is normal for signed Chromium extensions. There are no suspicious network requests, obfuscation, or system modifications. This file is perfectly consistent with legitimate upstream Chromium packaging and does not indicate any supply-chain attack.
</details>
<summary>Standard extension manifest, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed src/chrome-linux/resources/accessibility/reading_mode_gdocs_helper_manifest.json. Status: SAFE -- Standard extension manifest, no malicious behavior.
LLM auditresponse for privacy-sandbox-attestations.dat:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `privacy-sandbox-attestations.dat` contains a binary-length-prefixed list of HTTPS URLs, primarily from ad-tech companies, analytics services, and Google's demo/test domains. This data file is a standard component of Chromium's Privacy Sandbox feature, which uses attestation lists to control access to relevant APIs. There is no executable code, no suspicious patterns (curl, wget, eval, base64, exec, etc.), and no attempts to exfiltrate, modify files, or perform any harmful operations. The content is purely declarative data and aligns with the stated purpose of the Chromium package.
</details>
<summary>Standard attestation list; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/resources/inspector_overlay/main.js, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed src/chrome-linux/PrivacySandboxAttestationsPreloaded/privacy-sandbox-attestations.dat. Status: SAFE -- Standard attestation list; no security concerns.
LLM auditresponse for main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified JavaScript overlay for Chrome DevTools, part of the chromium-snapshot-bin package. It implements features for highlighting grid, flexbox, container queries, scroll snap, isolated elements, source order, and viewport size overlays. The code interacts exclusively with `window.InspectorOverlayHost` for communication with the browser host process, which is standard for DevTools overlays. No external network requests, obfuscated code, eval-like constructs, or attempts to access sensitive system resources are present. The only minor anomaly is a copyright comment for "2026" in one stylesheet, but this is a typo and not malicious. All other stylesheets and logic are consistent with the Chromium DevTools codebase.
</details>
<summary>DevTools overlay code with no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json, src/chrome-linux/vk_swiftshader_icd.json...
+ Reviewed src/chrome-linux/resources/inspector_overlay/main.js. Status: SAFE -- DevTools overlay code with no malicious behavior.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan ICD (Installable Client Driver) JSON configuration snippet for SwiftShader, a software Vulkan implementation. It contains only a file format version, a library path (pointing to a local `.so` file), and an API version. There are no network requests, obfuscated code, dangerous commands, or any deviation from expected packaging content. The escaped quotes are likely an artifact of how the file was stored for review; the actual content is a simple JSON structure.
</details>
<summary>Standard Vulkan ICD configuration file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper, src/chrome-linux/MEIPreload/manifest.json...
+ Reviewed src/chrome-linux/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD configuration file, no malicious content.
LLM auditresponse for manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Chrome extension manifest for "MEI Preload", a legitimate built-in component of Chromium that contains preloaded media engagement data. The JSON content is properly structured, with an update URL pointing to the official Google update server. No malicious code, obfuscation, or unexpected behavior is present. The file is purely metadata and does not execute any commands or perform any network operations beyond declaring the update endpoint. It is a standard part of the Chromium source and does not deviate from expected packaging practices.
</details>
<summary>Standard Chromium component manifest, no security issues.</summary>
</security_assessment>

[8/10] Reviewing chromium-snapshot-bin.sh, src/chrome-linux/chrome-wrapper...
+ Reviewed src/chrome-linux/MEIPreload/manifest.json. Status: SAFE -- Standard Chromium component manifest, no security issues.
LLM auditresponse for chromium-snapshot-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching Chromium Snapshot. It reads optional user flags from a config file, detects Pepper Flash, sets environment variables (including well-known public Google API keys), and launches the binary. There are no suspicious network requests, obfuscated code, data exfiltration, or unexpected file operations. The script follows common AUR packaging practices for browser wrappers and does not contain any malicious behavior.
</details>
<summary>Standard Chromium launcher script for AUR package.</summary>
</security_assessment>

[9/10] Reviewing src/chrome-linux/chrome-wrapper...
+ Reviewed chromium-snapshot-bin.sh. Status: SAFE -- Standard Chromium launcher script for AUR package.
LLM auditresponse for chrome-wrapper:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chromium wrapper script from the upstream Chromium project (copyright 2011 The Chromium Authors). It performs legitimate operations to launch the browser from a build directory: sets up environment variables (`LD_LIBRARY_PATH`, `CHROME_WRAPPER`, `CHROME_DESKTOP`), checks for missing system libraries and creates symlinks in the local directory to resolve them, creates or updates the user's desktop file configuration in `~/.local/share/applications`, and finally executes the `chrome` binary. There are no network requests, no downloads, no obfuscated commands, no eval or base64 usage, and no attempts to exfiltrate data or modify unrelated system files. All operations are confined to the application's own directory and the user's XDG data directories, which is expected behavior for a portable browser installation.
</details>
<summary>Standard upstream Chromium wrapper script, no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/chrome-linux/chrome-wrapper. Status: SAFE -- Standard upstream Chromium wrapper script, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 77,065
  Completion Tokens: 8,862
  Total Tokens: 85,927
  Total Cost: $0.008531
  Execution Time: 180.44 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-chromium-snapshot-bin.txt
Final Status: SAFE


No issues found.
