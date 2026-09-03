---
package: linuxqq-appimage
pkgver: 3.2.33_20260902
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 39682
completion_tokens: 9866
total_tokens: 49548
cost: 0.00508227356
execution_time: 73.42
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T15:20:04Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no threats.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: .gitlab-ci.yml
    status: safe
    summary: Standard CI pipeline, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with no malicious indicators.
  - file: download.sh
    status: safe
    summary: Legitimate download helper for QQ signed URLs.
  - file: get_latest.bak
    status: safe
    summary: Safe helper script fetching upstream config from official domain.
  - file: package-lock.json
    status: safe
    summary: Standard npm lockfile, no malicious content.
  - file: package.json
    status: safe
    summary: Inert JSON manifest, no malicious code.
  - file: get_latest
    status: safe
    summary: A benign script to fetch QQ version info from upstream CDN.
  - file: update_pkgbuild.sh
    status: safe
    summary: Standard AUR maintainer helper script, no malicious code.
  - file: update.sh
    status: safe
    summary: Standard AUR maintainer update script, no malicious code found.
  - file: updpkgsums.sh
    status: safe
    summary: Standard AUR checksum update helper; no malicious behavior.
---

Cloning https://aur.archlinux.org/linuxqq-appimage.git...
Cloned linuxqq-appimage
Analyzing linuxqq-appimage AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only defines variables and arrays, with no command substitutions or dangerous operations. The `source` array contains a single local file (`download.sh`) that is fetched from the AUR repository itself, which is standard. The `pkgver` is set statically, and there is no `pkgver()` function to execute. The `prepare()`, `build()`, and `package()` functions contain potentially interesting operations (downloading an AppImage, extracting it, etc.), but these are **not executed** by the two commands in question (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). Running these commands only fetches the declared source (`download.sh`) and sources the PKGBUILD, which is safe. No malicious code is triggered during this stage.
</details>
<evidence></evidence>
<summary>Safe: No code runs during source fetch or sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: No code runs during source fetch or sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 12 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, .gitlab-ci.yml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for the AUR package `linuxqq-appimage`. It contains only package metadata such as description, version, dependencies, and source file references. The file itself does not contain any executable code, obfuscated content, network requests, or security-sensitive operations. The source entry `download.sh` is a script that will be analyzed separately, but the .SRCINFO is benign. The provided sha256sum for the source file is present, which is normal practice. There are no indications of malicious behavior in this file.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata, no threats.</summary>
</security_assessment>

[1/12] Reviewing .gitignore, .gitlab-ci.yml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no threats.
[1/12] Reviewing .gitignore, .gitlab-ci.yml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package git repositories. It contains typical patterns — `*.AppImage`, `pkg`, `src`, `*.pkg.tar.zst`, `*.old`, and `node_modules` — to prevent built artifacts, source directories, and other temporary files from being tracked by version control. No executable code, network requests, obfuscation, or system modifications are present. The file serves solely a configuration purpose and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[1/12] Reviewing .gitignore, .gitlab-ci.yml, PKGBUILD, download.sh...
[2/12] Reviewing .gitlab-ci.yml, PKGBUILD, download.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
LLM auditresponse for .gitlab-ci.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard GitLab CI/CD pipeline configuration for automatically updating and deploying an AUR package. It performs routine operations: updating the mirrorlist, installing build dependencies, creating a deploy user, and running a helper script (`./update.sh`) for version detection and source updates. The deploy stage uses SSH keys (provided via CI variables) to commit and push changes to the project's repository. There are no hardcoded suspicious hosts, no obfuscated commands, no data exfiltration, and no execution of untrusted remote code. The use of `./update.sh` is expected as part of the package's maintenance workflow and does not by itself indicate malice.
</details>
<evidence>
</evidence>
<summary>Standard CI pipeline, no malicious behavior found.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, download.sh...
+ Reviewed .gitlab-ci.yml. Status: SAFE -- Standard CI pipeline, no malicious behavior found.
[3/12] Reviewing PKGBUILD, download.sh, get_latest...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging recipe for the Linux QQ AppImage. It downloads the official binary from Tencent's verified domain (`qqdl.gtimg.cn`) with a hardcoded SHA-256 checksum for verification. The only external script referenced is `download.sh`, which is included in the source array with its own checksum. All operations (`chmod`, `--appimage-extract`, `sed`, `install`, `cp`, `ln`) are normal packaging steps. There is no obfuscated code, no execution of untrusted fetched content (the AppImage is verified before extraction), no data exfiltration, and no commands that deviate from routine AUR packaging practice. A minor typo (`${startdir}` instead of `${srcdir}`) is a packaging bug but not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AppImage PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, download.sh, get_latest, get_latest.bak...
[4/12] Reviewing download.sh, get_latest, get_latest.bak...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with no malicious indicators.
LLM auditresponse for download.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper to obtain a signed download URL from the official QQ API (im.qq.com). It creates a temporary cookie, fetches a signing token, then uses that token to request a signed URL for the given download target. The URL is then used with `curl` to perform the actual download. All network requests are to the official im.qq.com domain, which is the expected upstream for the linuxqq-appimage package. There is no exfiltration of data, no execution of fetched code, no obfuscation, and no system modifications. The script passes user-supplied arguments via `$@` to `curl` without sanitization, but this is a user-responsibility concern and not indicative of malicious supply-chain behavior. The package maintainer intends this script as a convenience tool for downloading files that require URL signing, which is standard practice for this application.
</details>
<evidence></evidence>
<summary>Legitimate download helper for QQ signed URLs.</summary>
</security_assessment>

[4/12] Reviewing download.sh, get_latest, get_latest.bak, package-lock.json...
[5/12] Reviewing get_latest, get_latest.bak, package-lock.json...
+ Reviewed download.sh. Status: SAFE -- Legitimate download helper for QQ signed URLs.
LLM auditresponse for get_latest.bak:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a development helper that fetches the latest LinuxQQ configuration from the official Tencent server (im.qq.com). It retrieves a JavaScript configuration file, loads it via sea.js, and prints the version and download URLs for the specified architectures. All network requests target the package's own upstream domain, and no code is executed from untrusted sources. The use of `seajs.use()` to load the config is the intended mechanism for reading the upstream configuration; it does not introduce arbitrary code execution. The script writes a temporary file and deletes it afterward, leaving no persistent system changes. There is no obfuscation, exfiltration of local data, backdoors, or suspicious system modifications. This is a standard maintainer helper script for updating the PKGBUILD, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe helper script fetching upstream config from official domain.</summary>
</security_assessment>

[5/12] Reviewing get_latest, get_latest.bak, package-lock.json, package.json...
[6/12] Reviewing get_latest, package-lock.json, package.json...
+ Reviewed get_latest.bak. Status: SAFE -- Safe helper script fetching upstream config from official domain.
LLM auditresponse for package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package-lock.json` generated by npm. It contains dependency metadata for the `linuxqq-appimage` package, listing resolved URLs and integrity hashes from the official npm registry (`registry.npmjs.org`). There are no commands, scripts, or any executable content. The dependencies `seajs` and `sync-request` are legitimate packages. No obfuscation, suspicious network destinations, or system-modifying operations are present. The file is a data file used to lock dependency versions and does not execute any code.
</details>
<evidence>
</evidence>
<summary>
Standard npm lockfile, no malicious content.
</summary>
</security_assessment>

[6/12] Reviewing get_latest, package-lock.json, package.json, update.sh...
[7/12] Reviewing get_latest, package.json, update.sh...
+ Reviewed package-lock.json. Status: SAFE -- Standard npm lockfile, no malicious content.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `package.json` manifest listing two npm dependencies: `seajs` and `sync-request`. There is no executable code, no network requests, no obfuscation, and no system-level operations. The file is simply a metadata declaration and does not contain any malicious behavior. It is consistent with a normal packaging or build tool dependency listing.
</details>
<evidence>
</evidence>
<summary>
Inert JSON manifest, no malicious code.</summary>
</security_assessment>

[7/12] Reviewing get_latest, package.json, update.sh, update_pkgbuild.sh...
[8/12] Reviewing get_latest, update.sh, update_pkgbuild.sh...
+ Reviewed package.json. Status: SAFE -- Inert JSON manifest, no malicious code.
LLM auditresponse for get_latest:
<security_assessment>
<decision>SAFE</decision>
<details>
The script fetches a JSON configuration from the official QQ CDN (`qq-web.cdn-go.cn`) to retrieve the latest version, update date, and AppImage download URLs for Linux. All operations are standard: `curl` to an HTTPS URL, JSON parsing via `jq`, and outputting values. There is no execution of downloaded content, no obfuscation, no data exfiltration, and no unexpected network destinations. This is a routine metadata retrieval script for a package maintainer’s workflow and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>A benign script to fetch QQ version info from upstream CDN.</summary>
</security_assessment>

[8/12] Reviewing get_latest, update.sh, update_pkgbuild.sh, updpkgsums.sh...
[9/12] Reviewing update.sh, update_pkgbuild.sh, updpkgsums.sh...
+ Reviewed get_latest. Status: SAFE -- A benign script to fetch QQ version info from upstream CDN.
LLM auditresponse for update_pkgbuild.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR maintainer helper that updates version variables in a PKGBUILD. It uses `eval` on the output of a local `./get_latest` script to parse version information, which is a common pattern for automating version bumps. There are no malicious actions: no network requests, no obfuscated code, no exfiltration, no backdoors. The `eval` usage is a minor hygiene concern but not evidence of a supply-chain attack, as the output is expected to come from a controlled local script. The file only modifies the PKGBUILD file in place, which is normal for this type of helper.
</details>
<evidence></evidence>
<summary>Standard AUR maintainer helper script, no malicious code.</summary>
</security_assessment>

[10/12] Reviewing update.sh, updpkgsums.sh...
+ Reviewed update_pkgbuild.sh. Status: SAFE -- Standard AUR maintainer helper script, no malicious code.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR maintainer helper script that automates the routine process of updating a PKGBUILD for a binary AppImage package. It fetches the latest version metadata via `get_latest`, downloads the corresponding AppImage (if not already present) using `download.sh`, computes a SHA‑256 checksum, and updates the PKGBUILD fields. It then regenerates the `.SRCINFO` file.  

All operations are confined to the package’s own files and its declared upstream source. The script does not exfiltrate data, execute arbitrary code from the internet, install backdoors, or perform any obfuscated actions. The use of `eval` is limited to evaluating the package’s own `PKGBUILD` and the output of the companion `get_latest` script – both routine in AUR tooling. There is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR maintainer update script, no malicious code found.</summary>
</security_assessment>

[11/12] Reviewing updpkgsums.sh...
+ Reviewed update.sh. Status: SAFE -- Standard AUR maintainer update script, no malicious code found.
LLM auditresponse for updpkgsums.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper that automates updating the SHA-256 checksums in a PKGBUILD after downloading the upstream AppImage files. It extracts variables (`_Pkgname`, `_version`, `_update_date`, `_image_url_${arch}`) from the PKGBUILD using `sed` and `grep`, then for each architecture it downloads the corresponding AppImage via a local `download.sh` wrapper (if not already present) and updates the checksum line in the PKGBUILD with `sha256sum`. There is no execution of the downloaded AppImage, no obfuscation, no exfiltration, and no tampering with system files. The use of `eval` is limited to parsing the `arch` array from the PKGBUILD, which is normal for this type of script. All operations are confined to the package source directory and the PKGBUILD itself, consistent with safe packaging workflow automation.
</details>
<evidence></evidence>
<summary>Standard AUR checksum update helper; no malicious behavior.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed updpkgsums.sh. Status: SAFE -- Standard AUR checksum update helper; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,682
  Completion Tokens: 9,866
  Total Tokens: 49,548
  Total Cost: $0.005082
  Execution Time: 73.42 seconds

Final Status: SAFE


No issues found.
