---
package: brave-origin-bin
pkgver: 1.94.119
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 15634
completion_tokens: 2280
total_tokens: 17914
cost: 0.001696296
execution_time: 267.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T19:05:34Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD, no malicious behavior found.
  - file: brave-origin-bin.sh
    status: safe
    summary: Standard wrapper script; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: brave-origin.desktop
    status: safe
    summary: Standard desktop file; no security issues.
---

Cloning https://aur.archlinux.org/brave-origin-bin.git...
Cloned brave-origin-bin
Analyzing brave-origin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous code in its global scope or `pkgver()` function (which is absent). The `source` array downloads official Brave binary releases from `github.com/brave/brave-browser/releases` — a legitimate upstream source. The zip archives are listed under `noextract`, so they are not even extracted during the source-fetch step; extraction would only occur in `prepare()` which is skipped by `--noprepare`. The local files (`brave-origin-bin.sh`, `.desktop`) are standard packaging artifacts. There are no obfuscated commands, no unexpected network destinations, and no code that could exfiltrate data or execute untrusted payloads. Both commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) are safe to run.
</details>
<evidence/>
<summary>Safe source fetch, no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe source fetch, no malicious execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-bin.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PKGBUILD for the brave-origin-bin binary package. It downloads the official upstream release from GitHub (brave/brave-browser) with pinned checksums for all sources. The prepare() and package() functions perform routine extraction, file installation, and set the chrome-sandbox setuid bit (normal for Chromium-based browsers). There is no obfuscated code, no unexpected network requests, and no exfiltration or backdoor mechanisms. The file follows standard Arch packaging conventions and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-bin.sh, brave-origin.desktop...
[1/4] Reviewing .SRCINFO, brave-origin-bin.sh, brave-origin.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD, no malicious behavior found.
LLM auditresponse for brave-origin-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Brave browser. It reads a user-defined flags configuration file from `~/.config/brave-origin-flags.conf` and passes those flags (excluding comments and blank lines) to the `brave-origin` binary located at `/opt/brave-origin-bin/brave-origin`. 

There are no network requests, obfuscated code, dangerous commands (eval, curl, wget), or any file modifications. The script simply reads a local config file and executes the browser binary with the provided flags. The `CHROME_VERSION_EXTRA` environment variable is set to `stable`, which is normal for Chromium-based browsers.

No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, brave-origin.desktop...
+ Reviewed brave-origin-bin.sh. Status: SAFE -- Standard wrapper script; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file used by AUR packages to declare sources, checksums, dependencies, and build options. It contains no executable code, no obfuscated strings, and no instructions that could lead to a supply-chain attack. The listed source URLs point to the official Brave GitHub releases repository (`github.com/brave/brave-browser`), and each source file has a pinned SHA-256 checksum, verifying integrity. There are no unexpected network destinations, no `curl|bash` patterns, no encoded commands, and no file operations outside the scope of packaging. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing brave-origin.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for brave-origin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Brave Origin web browser. It contains only metadata such as application name, description, translations, supported MIME types, and desktop actions (new window, incognito window). The `Exec` lines invoke the `brave-origin` binary with normal arguments (`%U` for URLs and `--incognito` for private browsing). There are no network requests, encoded commands, file operations, or any other indicators of malicious activity. The file follows standard freedesktop.org desktop entry specifications and is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop file; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin.desktop. Status: SAFE -- Standard desktop file; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,634
  Completion Tokens: 2,280
  Total Tokens: 17,914
  Total Cost: $0.001696
  Execution Time: 267.04 seconds

Final Status: SAFE


No issues found.
