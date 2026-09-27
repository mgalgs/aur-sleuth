---
package: trackmania-forever
pkgver: 2.11.26
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 66573
completion_tokens: 9164
total_tokens: 75737
cost: 0.0039818569
execution_time: 145.06
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T19:07:13Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no security issues.
  - file: EULA
    status: safe
    summary: Standard EULA document, no security issues.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore; no malicious content.
  - file: EULA-us
    status: safe
    summary: Standard EULA text, no malicious content found.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: EULA-uk
    status: safe
    summary: Plain EULA license text with no executable or malicious content; safe.
  - file: EULA-fr
    status: safe
    summary: French EULA license text only; no executable or dangerous content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Wine game; no malicious code found.
  - file: mimetypes.xml
    status: safe
    summary: Static MIME metadata with magic-byte definitions; no malicious behavior.
  - file: nations.desktop
    status: safe
    summary: Standard desktop launcher for the TrackMania game; no malicious behavior found.
  - file: united.desktop
    status: safe
    summary: Standard game desktop launcher; no malicious behavior present.
  - file: launch-script.sh
    status: safe
    summary: Benign Wine launcher; no network, obfuscation, or malicious behavior found.
---

Materializing trackmania-forever from local mirror...
Materialized trackmania-forever
Analyzing trackmania-forever AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions. No command substitutions, backticks, or other executable constructs exist in the global scope. The `prepare()`, `build()`, and `package()` functions contain commands, but these are not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, EULA...
[0/12] Reviewing .SRCINFO, EULA, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain-text metadata file for an AUR package. It contains no code or executable instructions. All source URLs point to legitimate domains (ubi.com and trackmaniaforever.com). SHA256 checksums are provided, which is standard practice. No suspicious or malicious behavior is present.</details>
<evidence>
</evidence>
<summary>Standard package metadata file, no security issues.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, EULA, .gitignore, EULA-fr...
[1/12] Reviewing EULA, .gitignore, EULA-fr...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no security issues.
LLM auditresponse for EULA:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text End User License Agreement (EULA) for TrackMania Forever. It contains standard legal clauses, copyright notices, privacy policy references, and contact information. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from what would be expected in a software license document. The URLs and XML-like escaped tags are purely informational and do not represent any active or malicious behavior. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard EULA document, no security issues.</summary>
</security_assessment>

[2/12] Reviewing .gitignore, EULA-fr...
+ Reviewed EULA. Status: SAFE -- Standard EULA document, no security issues.
[2/12] Reviewing .gitignore, EULA-fr, EULA-uk...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It only lists file patterns to include or exclude from version control. No code, commands, network requests, or obfuscated content is present. The file is benign and follows typical packaging practices.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore; no malicious content.</summary>
</security_assessment>

[2/12] Reviewing .gitignore, EULA-fr, EULA-uk, EULA-us...
[3/12] Reviewing EULA-fr, EULA-uk, EULA-us...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore; no malicious content.
LLM auditresponse for EULA-us:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard End User License Agreement (EULA) for TrackMania Forever, provided by Ubisoft. It is a plain text document containing legal terms, conditions, and disclaimers. There are no scripts, commands, network requests, or any executable logic present. The only external reference is a URL pointing to the official Ubisoft EULA page for potential updates, which is normal for license documents. There is no evidence of obfuscated code, data exfiltration, or any malicious activity. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard EULA text, no malicious content found.</summary>
</security_assessment>

[4/12] Reviewing EULA-fr, EULA-uk...
+ Reviewed EULA-us. Status: SAFE -- Standard EULA text, no malicious content found.
[4/12] Reviewing EULA-fr, EULA-uk, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (ISC-style permissive license) with no executable code, network requests, system modifications, or obfuscated content. It contains only standard legal text granting permission to use the software. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/12] Reviewing EULA-fr, EULA-uk, LICENSE, PKGBUILD...
[5/12] Reviewing EULA-fr, EULA-uk, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for EULA-uk:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file contains the End User License Agreement (EULA) text for the TrackMania Forever / TrackMania United online service, presumably included as license documentation in the AUR package. It is plain legal text: it defines the license grant, restrictions, warranty disclaimers, privacy notices, and liability limitations for UBISOFT's game and online service.

No executable code, shell commands, network calls, file operations, or package build logic is present. The content is entirely a license agreement and contains no obfuscated data, no suspicious downloads, no exfiltration attempts, and no backdoor or system-modification behavior. The privacy-related statements are part of UBISOFT's upstream EULA and are a legal disclosure, not an injected supply-chain attack.

While the EULA indicates that the online service may collect usage information and that UBISOFT may alter or terminate the service, these are upstream vendor terms and privacy practices, not malicious packaging behavior. The file is consistent with a normal license file included alongside a game package. Therefore it is assessed as SAFE.
</details>
<evidence></evidence>
<summary>Plain EULA license text with no executable or malicious content; safe.</summary>
</security_assessment>

[5/12] Reviewing EULA-fr, EULA-uk, PKGBUILD, launch-script.sh...
[6/12] Reviewing EULA-fr, PKGBUILD, launch-script.sh...
+ Reviewed EULA-uk. Status: SAFE -- Plain EULA license text with no executable or malicious content; safe.
LLM auditresponse for EULA-fr:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a French-language End User License Agreement (EULA) for the game Trackmania Forever, originally published by Ubisoft/Nadeo. It is purely textual legal content describing license terms, online service conditions, user obligations, and disclaimers. There is no executable code, no network requests, no file operations, no obfuscated content, and no system modification of any kind.

The ellipses ([…]) appear to be from the AUR maintainer truncating the license for brevity, which is a normal and accepted practice when including license files in packages. The URLs referenced (trackmania.ubi.com and massiveincorporated.com) are the official upstream and original developer domains relevant to this game. No evidence of injected malicious code, exfiltration, backdoors, or supply-chain tampering exists in this file.
</details>
<evidence></evidence>
<summary>French EULA license text only; no executable or dangerous content found.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, launch-script.sh...
+ Reviewed EULA-fr. Status: SAFE -- French EULA license text only; no executable or dangerous content found.
[7/12] Reviewing PKGBUILD, launch-script.sh, mimetypes.xml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `trackmania-forever` packages a Wine-based retro racing game. It downloads the two official Windows setup executables from the upstream CDN and the game's own website, verifying them with pinned SHA-256 checksums. The build process uses standard tools (innoextract, cabextract, icoutils) to extract game files, icons, and a DirectX library; no network activity occurs outside the declared sources. There are no invocations of `eval`, `curl`, `wget`, or any other mechanism that would fetch or execute untrusted code at build time. All file operations are confined to the expected build directory and standard package install paths. The use of HTTP for the second source is a minor hygiene consideration but is mitigated by the checksum verification and does not constitute malicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD for Wine game; no malicious code found.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, launch-script.sh, mimetypes.xml, nations.desktop...
[8/12] Reviewing launch-script.sh, mimetypes.xml, nations.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Wine game; no malicious code found.
LLM auditresponse for mimetypes.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a freedesktop.org shared-mime-info XML definition. It only declares a custom MIME type for TrackMania Forever replay files and provides magic-byte matching rules to identify `.GBX` files. The content contains static byte patterns, offsets, priorities, icons, and comments — no executable code, no scripts, no network requests, no file operations, and no obfuscation.

The MIME type uses standard `magic` matching against the file header to recognize the application's replay format. This is legitimate packaging metadata, consistent with how desktop applications register file types on Linux. There are no indicators of malicious behavior, and nothing in this file deviates from expected packaging practices.
</details>
<evidence>
</evidence>
<summary>Static MIME metadata with magic-byte definitions; no malicious behavior.</summary>
</security_assessment>

[8/12] Reviewing launch-script.sh, mimetypes.xml, nations.desktop, united.desktop...
[9/12] Reviewing launch-script.sh, nations.desktop, united.desktop...
+ Reviewed mimetypes.xml. Status: SAFE -- Static MIME metadata with magic-byte definitions; no malicious behavior.
LLM auditresponse for nations.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for the TrackMania Nations Forever game. It defines a desktop entry that launches the game binary (`TmForever.exe`) with a configuration file argument (`/ini='Nadeo.Nations.ini'`), sets a working directory (`Path=/opt/TmForever`), registers game-related MIME types and a custom URL scheme (`tmtp://`), and provides a secondary launcher action. Nothing in this file fetches network content, executes code outside the game's own binaries, touches system configuration, or performs any obfuscated operation. The quoted `/ini=` argument is simply how the game (a Wine-based title) accepts its own config file reference. The file contains no malicious or suspicious behavior whatsoever — it is purely a standard application launcher entry.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher for the TrackMania game; no malicious behavior found.</summary>
</security_assessment>

[10/12] Reviewing launch-script.sh, united.desktop...
+ Reviewed nations.desktop. Status: SAFE -- Standard desktop launcher for the TrackMania game; no malicious behavior found.
LLM auditresponse for united.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop `.desktop` launcher file for the TrackMania United Forever game. It defines the application name, icon, categories, working directory (`Path=/opt/TmForever`), and executes the game binary with arguments. The `%u` placeholder in the `Exec` line is used to pass a URL from the registered `tmtp://` URL scheme or associated MIME types (replay/challenge files) to the game — this is normal, expected behavior for a file association and protocol handler, not a code injection vector. The `Launcher` action simply runs the game's launcher executable.

No suspicious network requests, obfuscated code, encoded strings, downloads, file-system manipulation, or shell escaping tricks are present. The file does nothing beyond launching the application, which is entirely consistent with ordinary packaging for a game installed via an Arch package.
</details>
<evidence>
</evidence>
<summary>Standard game desktop launcher; no malicious behavior present.</summary>
</security_assessment>

[11/12] Reviewing launch-script.sh...
+ Reviewed united.desktop. Status: SAFE -- Standard game desktop launcher; no malicious behavior present.
LLM auditresponse for launch-script.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Wine launcher script for the trackmania-forever package. It normalizes command-line arguments with `shift`/`set --`, converts file paths and `tmtp://` URLs into Wine/Windows-friendly arguments, creates a per-user data directory, and launches the game through Wine. It performs no network downloads, no evaluation of encoded content, no obfuscated commands, and no writes outside the expected per-user Wine/game data locations.

The use of `winepath`, `xdg-user-dir`, `WINEPREFIX`, and `WINEDLLOVERRIDES` is consistent with running a Windows game under Wine. Environment variables such as `TMF_WINE` and `TMF_USER_DIR` are user-controlled and intended to configure the launcher. No malicious supply-chain behavior is present.
</details>
<evidence></evidence>
<summary>
Benign Wine launcher; no network, obfuscation, or malicious behavior found.
</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed launch-script.sh. Status: SAFE -- Benign Wine launcher; no network, obfuscation, or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 66,573
  Completion Tokens: 9,164
  Total Tokens: 75,737
  Total Cost: $0.003982
  Execution Time: 145.06 seconds

Final Status: SAFE


No issues found.
