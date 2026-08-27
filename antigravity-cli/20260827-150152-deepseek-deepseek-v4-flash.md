---
package: antigravity-cli
pkgver: 1.1.22_5711547746615296
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 18145
completion_tokens: 4121
total_tokens: 22266
cost: 0.00209829424
execution_time: 94.55
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T15:01:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license file with no executable content; no security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums; no malicious content.
  - file: antigravity-cli.install
    status: safe
    summary: Benign post-install message, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no malicious indicators found.
  - file: .nvchecker.toml
    status: safe
    summary: No malicious behavior in this config file
---

Cloning https://aur.archlinux.org/antigravity-cli.git...
Cloned antigravity-cli
Analyzing antigravity-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope and pkgver() (which is not defined) contain no dangerous commands. All operations are standard variable assignments, source arrays pointing to official Google Cloud Storage HTTPS URLs, and an install script reference that is not executed during `makepkg --nobuild --nodeps --noprepare`. No `eval`, `curl`, `wget`, or obfuscated code is present. The source fetches from `storage.googleapis.com` are legitimate for this upstream package.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD safe for source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD safe for source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .nvchecker.toml...
[0/5] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text LICENSE document describing the BSD Zero Clause License for the AUR packaging scripts and a proprietary notice for the upstream Antigravity CLI application. It contains no executable code, no network requests, no file operations, no obfuscation, and no commands of any kind. The content is consistent with standard packaging metadata and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Plain license file with no executable content; no security concerns found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license file with no executable content; no security concerns found.
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It contains only package metadata: version, dependencies, architecture, source URLs, and SHA256 checksums. No executable code, no scripted commands, no network requests beyond declaring upstream download URLs from the official Google Cloud Storage domain (`storage.googleapis.com/antigravity-public/`). The checksums are pinned and not set to SKIP, providing integrity verification. There is no evidence of obfuscation, data exfiltration, or any behavior outside normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[2/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums; no malicious content.
[2/5] Reviewing .nvchecker.toml, PKGBUILD, antigravity-cli.install...
LLM auditresponse for antigravity-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `antigravity-cli.install` contains only a standard post-install function that prints an informational message to the user, suggesting they run `agy install` to configure their shell environment. There are no network requests, obfuscated code, dangerous file operations, or any behavior beyond echoing text. This is benign and aligns with normal packaging practices.
</details>
<evidence></evidence>
<summary>Benign post-install message, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed antigravity-cli.install. Status: SAFE -- Benign post-install message, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file `.nvchecker.toml` configures the nvchecker tool to obtain version information from a non-standard Google Cloud Run endpoint (`https://antigravity-cli-auto-updater-974169037036.us-central1.run.app/manifests/linux_amd64.json`) instead of the official upstream release page. This endpoint is controlled by an external party and is unrelated to the package's stated upstream. An attacker with access to this endpoint could return an arbitrary version string, which the package's build process might use to download and execute code from a malicious source. This pattern is a known supply chain attack vector and represents a serious security concern.
</details>
<evidence>
[antigravity-cli]
source = &quot;jq&quot;
url = &quot;https://antigravity-cli-auto-updater-974169037036.us-central1.run.app/manifests/linux_amd64.json&quot;
filter = &quot;.url | split(\&quot;/\&quot;)[5]&quot;
from_pattern = &quot;-&quot;
to_pattern = &quot;_&quot;
</evidence>
<summary>Suspicious custom version checker URL</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for distributing a prebuilt binary CLI tool. The source tarballs are fetched from Google Cloud Storage under `antigravity-public/antigravity-cli/`, which is the expected upstream location for the antigravity-cli product. Checksums are explicitly pinned for both architectures, ensuring integrity of the downloaded artifacts. The `package()` function performs only routine installation of the binary to `/usr/bin/agy` and its license file. No obfuscated code, no suspicious commands (curl, wget, eval), no exfiltration attempts, and no modifications to system files outside the package's own scope are present.
</details>
<evidence></evidence>
<summary>Standard binary package; no malicious indicators found.</summary>
</security_assessment>

[4/5] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no malicious indicators found.
Second look for .nvchecker.toml (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration for nvchecker, a tool that checks for new upstream versions. It specifies a URL on Google Cloud Run and a jq filter to extract a version string. While the URL is not the official upstream release page, it is named after the package and could be an official auto-updater service. There is no evidence of data exfiltration, remote code execution, obfuscated commands, or other genuinely malicious behavior in this file. Using a custom update server is a supply-chain risk (unpinned source), but the file itself does not download or execute code; it only retrieves version metadata. This is a hygiene concern, not an indicator of malice.
</details>
<evidence></evidence>
<summary>No malicious behavior in this config file</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- No malicious behavior in this config file
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,145
  Completion Tokens: 4,121
  Total Tokens: 22,266
  Total Cost: $0.002098
  Execution Time: 94.55 seconds

Final Status: SAFE


No issues found.
