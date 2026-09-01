---
package: tmodloader-bin
pkgver: 2026.07.3.0_1.4.5.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 20373
completion_tokens: 4550
total_tokens: 24923
cost: 0.00238495516
execution_time: 111.11
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T11:09:07Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious behavior.
  - file: tmodloader-familyshare.sh
    status: safe
    summary: Standard launcher script for tModLoader; no malicious behavior.
  - file: tmodloader-server.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: tmodloader.sh
    status: safe
    summary: Standard launcher, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: setup.sh
    status: safe
    summary: Standard post-install setup script with no malicious behavior.
---

Cloning https://aur.archlinux.org/tmodloader-bin.git...
Cloned tmodloader-bin
Analyzing tmodloader-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and arrays. No command substitutions, obfuscated code, or scripts execute at global scope. There is no `pkgver()` function. The `source` array uses standard HTTPS URLs to the official tModLoader GitHub repository and a pinned-commit LICENSE file from raw.githubusercontent.com. Checksums are provided and not skipped. The `noextract` line prevents the zip archive from being extracted during source fetching. The `prepare()` and `package()` functions are defined but are not executed by the two commands in scope (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Safe: no malicious code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executed during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 8 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text attributed to "Rizzzi Git". It contains no executable code, no network requests, no obfuscation, and no system commands. The content is purely a legal notice. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard MIT license file, no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security concerns.
[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the `tmodloader-bin` AUR package. It defines package metadata, dependencies, and source URLs. The sources are fetched from the official tModLoader GitHub repository over HTTPS, and both source archives are accompanied by SHA-256 checksums. There are no embedded scripts, no obfuscated commands, no network requests beyond the declared upstream URLs, and no operations that deviate from normal packaging practices. The file contains only declarative metadata and poses no security threat.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
[2/8] Reviewing .gitignore, PKGBUILD, setup.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the official tModLoader release zip from GitHub (pinned with a SHA-256 checksum) and the project&#39;s LICENSE file from a specific commit. The build process creates symlinks in /usr/bin and installs the zip, helper shell scripts, and license into the target directory.  

The helper `.sh` scripts are referenced via `$startdir` but are not listed in the `source` array — they are expected to be provided alongside the PKGBUILD in the AUR repository. While this means the scripts are not checksum-verified, this is a trust/transparency concern rather than evidence of malicious injection. There is no obfuscated code, unexpected network requests, or execution of unchecked content from mutable sources. All operations are confined to the package&#39;s intended installation paths.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned source; no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD, setup.sh, tmodloader-familyshare.sh...
[3/8] Reviewing .gitignore, setup.sh, tmodloader-familyshare.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious behavior.
LLM auditresponse for tmodloader-familyshare.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple launcher for tModLoader. It first runs `/opt/tModLoader/setup.sh` (an expected initialization script from the package) and then executes the application's own start script (`start-tModLoader-FamilyShare.sh`) from the user's local data directory. There are no network requests, obfuscation, or suspicious file operations. The script only invokes binaries shipped by the package itself, which is standard packaging practice for game launchers.
</details>
<evidence></evidence>
<summary>Standard launcher script for tModLoader; no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, setup.sh, tmodloader-familyshare.sh, tmodloader-server.sh...
[4/8] Reviewing .gitignore, setup.sh, tmodloader-server.sh...
+ Reviewed tmodloader-familyshare.sh. Status: SAFE -- Standard launcher script for tModLoader; no malicious behavior.
LLM auditresponse for tmodloader-server.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher that executes the package's own setup script (`/opt/tModLoader/setup.sh`) and then runs the game server from the user's data directory. No obfuscation, network requests, or dangerous commands (eval, base64, curl, wget) are present. The script only invokes known package components and passes command-line arguments to the server. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[4/8] Reviewing .gitignore, setup.sh, tmodloader-server.sh, tmodloader.sh...
[5/8] Reviewing .gitignore, setup.sh, tmodloader.sh...
+ Reviewed tmodloader-server.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for tmodloader.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script for tModLoader. It executes a system-wide setup script (`/opt/tModLoader/setup.sh`) and then runs the user-level start script (`start-tModLoader.sh`) from the user's local data directory. No dangerous commands (e.g., `curl`, `eval`, base64), no obfuscation, no exfiltration, and no unexpected network or file operations. The script follows typical AUR packaging patterns for game launchers. There is no evidence of malicious content in this file.
</details>
<evidence>
</evidence>
<summary>Standard launcher, no malicious content.</summary>
</security_assessment>

[6/8] Reviewing .gitignore, setup.sh...
+ Reviewed tmodloader.sh. Status: SAFE -- Standard launcher, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR packages to prevent build artifacts (like the `pkg` and `src` directories, zip archives, package archives, and other temporary files) from being committed to the repository. No malicious or suspicious content (e.g., network requests, obfuscated code, dangerous commands) is present. It serves only as a git exclusion pattern list.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[7/8] Reviewing setup.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for setup.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script performs standard post-install setup for a tModLoader installation. It checks for the existence of a user data directory and compares version files between the system-wide install (`/opt/tModLoader`) and the user directory. If an update is needed, it extracts `tml.zip` from `/opt/tModLoader` into the user's directory and sets executable permissions on `start-*.sh` scripts. The script contains no network calls, no obfuscated code, no dangerous commands (eval, curl, wget, etc.), and no attempt to access or exfiltrate sensitive data. All operations are confined to the package's own directories under `/opt` and `~/.local/share/tModLoader`. This is expected behavior for a binary package that needs to copy per-user files or update them on version changes.
</details>
<evidence></evidence>
<summary>Standard post-install setup script with no malicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed setup.sh. Status: SAFE -- Standard post-install setup script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,373
  Completion Tokens: 4,550
  Total Tokens: 24,923
  Total Cost: $0.002385
  Execution Time: 111.11 seconds

Final Status: SAFE


No issues found.
