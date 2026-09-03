---
package: linuxqq-appimage
pkgver: 3.2.33_20260902
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 39648
completion_tokens: 8235
total_tokens: 47883
cost: 0.004972391508
execution_time: 168.23
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:35:43Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable content.
  - file: .gitlab-ci.yml
    status: safe
    summary: Standard CI pipeline, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksums, no malice found.
  - file: get_latest
    status: safe
    summary: Script fetches version info from official upstream; no malicious behavior.
  - file: download.sh
    status: safe
    summary: Legitimate download script from official QQ servers.
  - file: package-lock.json
    status: safe
    summary: Standard npm lockfile; no malicious content.
  - file: package.json
    status: safe
    summary: Standard package.json, no security concerns.
  - file: update.sh
    status: safe
    summary: Standard AUR update script, no malicious behavior.
  - file: updpkgsums.sh
    status: safe
    summary: Legitimate maintainer script for checksum updates.
  - file: get_latest.bak
    status: safe
    summary: Script fetches official config for LinuxQQ; no malice.
  - file: update_pkgbuild.sh
    status: safe
    summary: Standard AUR PKGBUILD update helper script, no malicious activity.
---

Cloning https://aur.archlinux.org/linuxqq-appimage.git...
Cloned linuxqq-appimage
Analyzing linuxqq-appimage AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a standard source array in its top-level scope. There is no `pkgver()` function. No command substitutions, backticks, or other executable constructs appear at parse time. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --verifysource --nodeps` or `makepkg --printsrcinfo`. The sole source file (`download.sh`) has a pinned SHA-256 checksum and will be verified. No malicious code can execute during the requested operations.
</details>
<evidence></evidence>
<summary>No top-level execution risk; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; sourcing is safe.
Downloading sources...
makepkg --verifysource --nodeps successful
Reviewing the 12 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, .gitlab-ci.yml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR packaging to exclude build artifacts, package files, and generated directories from version control. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, .gitlab-ci.yml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
[1/12] Reviewing .SRCINFO, .gitlab-ci.yml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package: name, version, dependencies, source file (`download.sh`), and its SHA-256 checksum. It contains no executable code, no network requests, no obfuscated instructions, and no system modifications. The presence of a pinned checksum (not `SKIP`) indicates the maintainer intended to verify the download script. There are no signs of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata file, no executable content.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, .gitlab-ci.yml, PKGBUILD, download.sh...
[2/12] Reviewing .gitlab-ci.yml, PKGBUILD, download.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable content.
LLM auditresponse for .gitlab-ci.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitlab-ci.yml` file defines a standard CI/CD pipeline for automating package updates and deployment to a Git repository. The "update" job installs required tools (pacman-contrib, jq, curl) and runs `./update.sh` as a non-root user (deploy). The "deploy-git" job sets up SSH authentication and commits/pushes changes to the project's remote. No obfuscated commands, unexpected network requests, data exfiltration, or backdoor mechanisms are present. All operations are typical for automated AUR package maintenance. The pipeline does not execute code from untrusted sources or deviate from expected packaging workflows.
</details>
<evidence>
</evidence>
<summary>Standard CI pipeline, no malicious content.</summary>
</security_assessment>

[2/12] Reviewing .gitlab-ci.yml, PKGBUILD, download.sh, get_latest...
[3/12] Reviewing PKGBUILD, download.sh, get_latest...
+ Reviewed .gitlab-ci.yml. Status: SAFE -- Standard CI pipeline, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing an AppImage. The upstream AppImage is downloaded from the official Tencent QQ server (`qqdl.gtimg.cn`) with verified sha256sums pinned directly in the file. The `download.sh` helper script is also pinned with a checksum. No obfuscated code, `eval`, `curl|bash`, or unexpected network destinations are present. The only network operation downloads the official binary and checks its integrity before extraction. There is no evidence of exfiltration, backdoors, or unauthorized system modifications.
</details>
<evidence></evidence>
<summary>Standard AppImage PKGBUILD with pinned checksums, no malice found.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, download.sh, get_latest, get_latest.bak...
[4/12] Reviewing download.sh, get_latest, get_latest.bak...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksums, no malice found.
LLM auditresponse for get_latest:
<security_assessment>
<decision>SAFE</decision>
<details>
The `get_latest` script fetches a JSON configuration file from the official QQ (Tencent) CDN (`qq-web.cdn-go.cn`) to obtain the latest version and download URLs for the Linux QQ AppImage. It uses `curl` to retrieve the file and `jq` to extract relevant fields (version, update date, and architecture-specific download URLs). No code from the fetched JSON is executed; the script only outputs variable assignments (`echo version=...`, etc.). There is no obfuscation, no downloads of executables from untrusted sources, no exfiltration of local data, and no deviation from the package's stated purpose of providing the latest QQ AppImage metadata. The network request is to the application's own upstream infrastructure, which is expected and legitimate. This is a standard helper script for maintaining an AUR package that tracks upstream releases.
</details>
<evidence></evidence>
<summary>Script fetches version info from official upstream; no malicious behavior.</summary>
</security_assessment>

[4/12] Reviewing download.sh, get_latest, get_latest.bak, package-lock.json...
[5/12] Reviewing download.sh, get_latest.bak, package-lock.json...
+ Reviewed get_latest. Status: SAFE -- Script fetches version info from official upstream; no malicious behavior.
LLM auditresponse for download.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a download helper for the linuxqq-appimage package. It obtains a signed download URL from Tencent&#x27;s official API (`im.qq.com/http2rpc/...`) and then uses `curl` to download the actual file. The domain `im.qq.com` is the legitimate upstream source for QQ. There is no obfuscation, no exfiltration of data, no execution of attacker-controlled code, and no deviation from the package&#x27;s stated purpose. The use of a temporary cookie file and parsing with `jq` is standard for this type of API interaction. While the script passes user-provided arguments to the second `curl` call, that is expected usage (e.g., to specify output file) and does not constitute a supply-chain attack. No malicious indicators found.
</details>
<evidence></evidence>
<summary>Legitimate download script from official QQ servers.</summary>
</security_assessment>

[5/12] Reviewing download.sh, get_latest.bak, package-lock.json, package.json...
[6/12] Reviewing get_latest.bak, package-lock.json, package.json...
+ Reviewed download.sh. Status: SAFE -- Legitimate download script from official QQ servers.
LLM auditresponse for package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package-lock.json` for a Node.js project. It lists dependencies (`seajs`, `sync-request`) and their transitive dependencies, all resolved from the official npm registry (`registry.npmjs.org`). Each entry includes an `integrity` hash. There is no executable code, no commands, no network requests to unexpected hosts, no obfuscation, and no system-modifying operations. The file is a static dependency lockfile with no runtime behavior. The use of `&quot;` (HTML entity for double quotes) is simply an encoding artifact, not obfuscation. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard npm lockfile; no malicious content.</summary>
</security_assessment>

[6/12] Reviewing get_latest.bak, package-lock.json, package.json, update.sh...
[7/12] Reviewing get_latest.bak, package.json, update.sh...
+ Reviewed package-lock.json. Status: SAFE -- Standard npm lockfile; no malicious content.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `package.json` is a standard Node.js dependency manifest listing two packages: `seajs` and `sync-request`. There is no embedded code, no network requests, no obfuscation, and no system modifications. It simply declares dependencies. This is normal packaging practice and does not exhibit any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard package.json, no security concerns.</summary>
</security_assessment>

[7/12] Reviewing get_latest.bak, package.json, update.sh, update_pkgbuild.sh...
[8/12] Reviewing get_latest.bak, update.sh, update_pkgbuild.sh...
+ Reviewed package.json. Status: SAFE -- Standard package.json, no security concerns.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR maintainer helper script that automates updating the PKGBUILD with the latest upstream release information. It retrieves the current version and architecture-specific URLs via a companion script (`get_latest`), downloads the AppImage using another helper (`download.sh`), computes its SHA256 checksum, and updates the PKGBUILD accordingly. The `eval` calls are used to read variables from the PKGBUILD itself, which is under the maintainer&#x27;s control. There is no obfuscation, no execution of downloaded binaries, no exfiltration of data, and no unexpected network requests. The script performs routine packaging operations (version bump, checksum update, .SRCINFO regeneration) and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR update script, no malicious behavior.</summary>
</security_assessment>

[8/12] Reviewing get_latest.bak, update.sh, update_pkgbuild.sh, updpkgsums.sh...
[9/12] Reviewing get_latest.bak, update_pkgbuild.sh, updpkgsums.sh...
+ Reviewed update.sh. Status: SAFE -- Standard AUR update script, no malicious behavior.
LLM auditresponse for updpkgsums.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine maintainer helper script for the linuxqq-appimage AUR package. It automates updating SHA-256 checksums in the PKGBUILD after downloading new upstream AppImage releases. The script extracts the package name, version, and image URLs from the PKGBUILD itself, then for each architecture, downloads the AppImage if not already present (via `download.sh`, presumably a companion script that uses curl), computes its SHA-256 hash, and writes the new checksum back into the PKGBUILD. All operations are confined to the package&#x27;s own declared upstream sources and its own PKGBUILD file. There is no obfuscation, no exfiltration of data, no execution of downloaded binaries, and no network requests to unexpected hosts. The use of `eval` to source the `arch` array from PKGBUILD is a minor hygiene concern (common in older shell scripts) but not evidence of malice—it operates on the package&#x27;s own metadata. The script performs exactly the function implied by its name: updating package checksums.
</details>
<evidence>
</evidence>
<summary>Legitimate maintainer script for checksum updates.</summary>
</security_assessment>

[10/12] Reviewing get_latest.bak, update_pkgbuild.sh...
+ Reviewed updpkgsums.sh. Status: SAFE -- Legitimate maintainer script for checksum updates.
LLM auditresponse for get_latest.bak:
<security_assessment>
<decision>SAFE</decision>
<details>
This script fetches the latest download URL for the LinuxQQ AppImage from the official QQ website (im.qq.com) and a fallback CDN (cdn-go.cn). It writes the fetched configuration JavaScript to a temporary directory, loads it via the `seajs` module loader, and prints the version and architecture-specific download URLs. The network requests target only official, package-related hosts. There is no obfuscated code, no data exfiltration, no backdoors, and no unexpected system modifications. The temporary file is cleaned up after use. The script performs exactly its stated purpose and follows standard packaging practices for fetching dynamic configuration from the upstream project.
</details>
<evidence></evidence>
<summary>Script fetches official config for LinuxQQ; no malice.</summary>
</security_assessment>

[11/12] Reviewing update_pkgbuild.sh...
+ Reviewed get_latest.bak. Status: SAFE -- Script fetches official config for LinuxQQ; no malice.
LLM auditresponse for update_pkgbuild.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR maintainer helper that updates version strings and image URLs within a PKGBUILD file. It sources the PKGBUILD's `arch` array, calls a local helper script `./get_latest` to obtain new version metadata, and then uses `sed` to patch the PKGBUILD. There is no evidence of malicious behavior such as network requests to unexpected hosts, obfuscated code, or exfiltration of data. The use of `eval` is a common pattern in shell scripting, though it does rely on the PKGBUILD and the local `./get_latest` script being trustworthy. This is a typical pattern for AUR helper scripts and does not constitute a supply‑chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD update helper script, no malicious activity.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update_pkgbuild.sh. Status: SAFE -- Standard AUR PKGBUILD update helper script, no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,648
  Completion Tokens: 8,235
  Total Tokens: 47,883
  Total Cost: $0.004972
  Execution Time: 168.23 seconds

Final Status: SAFE


No issues found.
