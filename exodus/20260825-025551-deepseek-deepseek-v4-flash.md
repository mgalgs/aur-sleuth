---
package: exodus
pkgver: 26.8.26
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 50593
completion_tokens: 4075
total_tokens: 54668
cost: 0.005204982258
execution_time: 70.65
files_reviewed: 10
files_skipped: 0
files_unauditable: 71
unpinned_sources: 0
date: 2026-08-25T02:55:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Non-executable license text, no security risk.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/Exodus-linux-x64/version
    status: safe
    summary: Version file with no security issues.
  - file: exodus.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: ake
    status: safe
    summary: Standard AUR helper script, no security concerns.
  - file: src/Exodus-linux-x64/exodus.desktop
    status: safe
    summary: Desktop launcher is benign; uses standard cd-and-run pattern.
  - file: src/Exodus-linux-x64/LICENSES.chromium.html
    status: safe
    summary: Static license file, no executable or malicious content.
  - file: src/Exodus-linux-x64/LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: src/Exodus-linux-x64/install-desktop-file.sh
    status: safe
    summary: Benign desktop file installer for Exodus application.
  - file: src/Exodus-linux-x64/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD JSON for SwiftShader.
---

Cloning https://aur.archlinux.org/exodus.git...
Cloned exodus
Analyzing exodus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and a `package()` function. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will fetch the source array (download from exodus.com and AUR) and source the PKGBUILD, but no malicious code executes at the top level or in a `pkgver()` function (none exists). The `package()` function is not executed during these commands. All source URLs point to expected locations (the project's own downloads and the AUR). The sha256sums are provided and not SKIP. There is no obfuscated code, network exfiltration, or dangerous command execution in the global scope. The custom DLAGENTS is benign (only sets a user-agent). Therefore, running these commands is safe for this audit step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard license agreement (Terms of Use) for Exodus software. It contains only legal text, no executable code, no commands, no network requests, and no system modifications. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Non-executable license text, no security risk.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Non-executable license text, no security risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt binary from the official Exodus releases domain (downloads.exodus.com) and auxiliary files (icon, desktop file, license) from the official Arch AUR git repository. All sources are pinned with SHA-256 checksums. The package function performs standard installation steps: copying files into /opt, creating a symlink in /usr/bin, installing a desktop file, icon, and license. No obfuscation, unexpected network requests, system modifications beyond the package scope, or other indicators of a supply-chain attack are present. The custom DLAGENTS user-agent is benign. This PKGBUILD follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 71 compiled/archived file(s) cannot be audited as text and were not reviewed (exodus-linux-x64-26.8.26.zip, src/Exodus-linux-x64/snapshot_blob.bin, src/Exodus-linux-x64/chrome_100_percent.pak and 68 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 8 additional files: ake, exodus.desktop, src/Exodus-linux-x64/version, src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop, src/Exodus-linux-x64/LICENSES.chromium.html, src/Exodus-linux-x64/LICENSE, src/Exodus-linux-x64/vk_swiftshader_icd.json
Reviewing additional files...
Reviewing additional files...
[0/8] Reviewing ake...
[0/8] Reviewing ake, exodus.desktop...
[0/8] Reviewing ake, exodus.desktop, src/Exodus-linux-x64/version...
LLM auditresponse for version:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only a version string (`41.0.3`) and does not include any executable code, network requests, obfuscation, or system commands. It is a standard metadata file with no security concerns.
</details>
<evidence></evidence>
<summary>Version file with no security issues.</summary>
</security_assessment>

[1/8] Reviewing ake, exodus.desktop...
+ Reviewed src/Exodus-linux-x64/version. Status: SAFE -- Version file with no security issues.
[1/8] Reviewing ake, exodus.desktop, src/Exodus-linux-x64/install-desktop-file.sh...
LLM auditresponse for exodus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux .desktop entry file with no executable code, network requests, or obfuscation. It simply provides metadata for the Exodus application launcher. The `Exec` line calls the binary `exodus` with an optional file argument (`%f`), which is normal desktop behavior. No signs of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing ake, exodus.desktop, src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop...
[2/8] Reviewing ake, src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop...
+ Reviewed exodus.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for ake:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper. The default action (no argument) runs `updpkgsums` and updates `.SRCINFO`, which are routine packaging tasks. The `download` action fetches the official Exodus binary from the project's own domain (`downloads.exodus.com`) over HTTPS. It does not execute the downloaded file or perform any unexpected operations. No obfuscated code, exfiltration, or system modifications are present. The script is entirely benign and aligns with normal AUR maintenance workflows.
</details>
<evidence></evidence>
<summary>Standard AUR helper script, no security concerns.</summary>
</security_assessment>

[2/8] Reviewing ake, src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop, src/Exodus-linux-x64/LICENSES.chromium.html...
[3/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop, src/Exodus-linux-x64/LICENSES.chromium.html...
+ Reviewed ake. Status: SAFE -- Standard AUR helper script, no security concerns.
LLM auditresponse for exodus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop launcher file for the Exodus desktop application. The Exec line uses `bash -c` to change into the directory containing the .desktop file (`dirname %k`) and run the bundled `./Exodus` binary, passing any URL arguments from the system (`%u`). This pattern is common for portable applications that need to set their working directory to their installation location. No network calls, encoded content, file manipulation outside the application's own scope, or unusual commands are present. The File icon is not referenced, but that is a cosmetic omission, not a security concern.

The HTML entities (`&quot;`, `&amp;`, ``) are an artifact of the file being displayed as XML; in the actual desktop file these would be literal quotes and an ampersand, which is exactly what the Exec key expects. There is nothing here that deviates from ordinary packaging or that indicates an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Desktop launcher is benign; uses standard cd-and-run pattern.</summary>
</security_assessment>

[3/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/exodus.desktop, src/Exodus-linux-x64/LICENSES.chromium.html, src/Exodus-linux-x64/LICENSE...
[4/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/LICENSES.chromium.html, src/Exodus-linux-x64/LICENSE...
+ Reviewed src/Exodus-linux-x64/exodus.desktop. Status: SAFE -- Desktop launcher is benign; uses standard cd-and-run pattern.
LLM auditresponse for LICENSES.chromium.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Chromium license credits page (`LICENSES.chromium.html`), bundled as part of the Exodus application (a Electron-based wallet). It is a static HTML document containing license texts for all third-party open-source components used by Chromium. The file does not contain any executable code, network calls, obfuscated commands, or system modifications. The matches for patterns like "base64" and "curl" within the file refer to library names (e.g., `@bufbuild/protobuf`, `modp base64 decoder`) or are part of license boilerplate (e.g., license references to Apache 2.0, MIT). None of these are actual commands or executed code. This file serves a purely informational purpose and poses no security risk.
</details>
<evidence></evidence>
<summary>Static license file, no executable or malicious content.</summary>
</security_assessment>

[4/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/LICENSES.chromium.html, src/Exodus-linux-x64/LICENSE, src/Exodus-linux-x64/vk_swiftshader_icd.json...
[5/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/LICENSE, src/Exodus-linux-x64/vk_swiftshader_icd.json...
+ Reviewed src/Exodus-linux-x64/LICENSES.chromium.html. Status: SAFE -- Static license file, no executable or malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text MIT License, attributed to Electron contributors and GitHub Inc. (2013-2020). It contains no executable code, no network requests, no file operations, and no obfuscated content. It is a standard open-source license file commonly included in binary distributions. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[6/8] Reviewing src/Exodus-linux-x64/install-desktop-file.sh, src/Exodus-linux-x64/vk_swiftshader_icd.json...
+ Reviewed src/Exodus-linux-x64/LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for install-desktop-file.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script installs a desktop file for the Exodus application. It reads the current working directory and constructs an `Exec` line pointing to the local Exodus binary. While the path handling uses `$PWD` without proper escaping of characters like double quotes (which could theoretically allow command injection if an attacker controlled the directory name), this is a standard, user‑trusted directory. There is no malicious behavior such as exfiltration, code downloads, or system tampering. The script performs only routine desktop‑file installation tasks.
</details>
<evidence>

</evidence>
<summary>Benign desktop file installer for Exodus application.</summary>
</security_assessment>

[7/8] Reviewing src/Exodus-linux-x64/vk_swiftshader_icd.json...
+ Reviewed src/Exodus-linux-x64/install-desktop-file.sh. Status: SAFE -- Benign desktop file installer for Exodus application.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan Installable Client Driver (ICD) JSON manifest for SwiftShader, a software GPU implementation. It simply declares the library path (`./libvk_swiftshader.so`) and API version. There is no embedded code, no network access, no obfuscation, and no deviation from expected packaging practices. Exodus bundles SwiftShader for its graphics rendering, which is normal for an Electron-based application.
</details>
<evidence></evidence>
<summary>Standard Vulkan ICD JSON for SwiftShader.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed src/Exodus-linux-x64/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD JSON for SwiftShader.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,593
  Completion Tokens: 4,075
  Total Tokens: 54,668
  Total Cost: $0.005205
  Execution Time: 70.65 seconds

Final Status: SAFE


No issues found.
