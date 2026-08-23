---
package: harbor-stremio-bin
pkgver: 0.9.13
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 22c0a2e54859658da241d46306aa39ea23049265
prompt_tokens: 16125
completion_tokens: 2753
total_tokens: 18878
cost: 0.00194679
execution_time: 59.92
files_reviewed: 6
files_skipped: 1
date: 2026-06-20T18:35:09Z
file_verdicts:
  - file: Harbor_0.9.13-4_amd64.deb
    status: skipped
    summary: "Skipping binary file: Harbor_0.9.13-4_amd64.deb"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no malicious behavior found.
  - file: src/control
    status: safe
    summary: Standard package metadata file, no security issues.
  - file: src/usr/share/applications/Harbor.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
  - file: src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt
    status: safe
    summary: Standard open-source font license text, no security risk.
  - file: src/md5sums
    status: safe
    summary: Standard checksum file with no security concerns.
  - file: src/usr/bin/yt-dlp
    status: safe
    summary: Standard yt-dlp entry point – no malicious behavior.
---

Cloning https://aur.archlinux.org/harbor-stremio-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e3yypbvh...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e3yypbvh
Analyzing harbor-stremio-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e3yypbvh) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on this PKGBUILD is safe. The only actions performed are downloading a single `.deb` file from a GitHub releases URL (https://github.com/AdityaHebballe/harbor-linux-builds/releases/download/v${pkgver}/Harbor_0.9.13_amd64.deb) and verifying its SHA-256 checksum. There are no top-level command substitutions, `pkgver()` functions, or other code that executes during sourcing. The `package()` function (which contains extraction logic) does not run during these commands, so it poses no risk at this stage. The source URL is an HTTPS download from GitHub with a pinned checksum, which is standard for binary AUR packages. No obfuscation, unexpected network requests, or malicious code is present in the PKGBUILD's frontmatter.
</details>
<summary>Source fetch and PKGBUILD sourcing are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Source fetch and PKGBUILD sourcing are safe.[/]
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Harbor_0.9.13-4_amd64.deb...
[1/2] Reviewing PKGBUILD...
! Reviewed Harbor_0.9.13-4_amd64.deb. Status: SKIPPED -- Skipping binary file: Harbor_0.9.13-4_amd64.deb
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary release. The source is a Debian package from a GitHub release with a pinned SHA-256 checksum, ensuring integrity. The `package()` function extracts the Debian archive, removes bundled binaries (ffmpeg, ffprobe, yt-dlp) to avoid conflicts with system packages, and creates a symlink. There is no obfuscated code, unexpected network requests, dangerous commands (eval, base64, curl|bash), or any attempt to exfiltrate data or modify system files outside the package&#x27;s scope. The use of a fork repository instead of the official upstream is a trust/decision choice by the maintainer, not evidence of a supply-chain attack — the checksum provides verification. The file is consistent with benign, ordinary packaging.
</details>
<summary>Standard PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 5 additional files: src/md5sums, src/control, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt, src/usr/bin/yt-dlp, src/usr/share/applications/Harbor.desktop
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing src/control...
[0/5] Reviewing src/control, src/md5sums...
[0/5] Reviewing src/control, src/md5sums, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt...
[0/5] Reviewing src/control, src/md5sums, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt, src/usr/bin/yt-dlp...
[0/5] Reviewing src/control, src/md5sums, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt, src/usr/bin/yt-dlp, src/usr/share/applications/Harbor.desktop...
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Debian control file containing package metadata (name, version, architecture, dependencies, description). No executable code, scripts, network requests, or obfuscation is present. The dependencies listed (libmpv, libwebkit2gtk, etc.) are typical for a multimedia application like a Stremio client. There are no signs of malicious or unexpected behavior.
</details>
<summary>Standard package metadata file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing src/md5sums, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt, src/usr/bin/yt-dlp, src/usr/share/applications/Harbor.desktop...
+ Reviewed src/control. Status: SAFE -- Standard package metadata file, no security issues.
LLM auditresponse for Harbor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` entry file that defines the launcher for the Harbor application. It contains only desktop entry metadata (name, icon, exec command, MIME types) and does not include any executable code, network requests, or suspicious operations. No security concerns are present.
</details>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[2/5] Reviewing src/md5sums, src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt, src/usr/bin/yt-dlp...
+ Reviewed src/usr/share/applications/Harbor.desktop. Status: SAFE -- Standard .desktop file with no security issues.
LLM auditresponse for LICENSE-OFL-NotoSansJP.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a verbatim copy of the SIL Open Font License 1.1, which is the standard license for the Noto Sans JP font. It contains no executable code, no network requests, no file operations, and no obfuscated or suspicious content. It is a plain text license file that is completely benign.
</details>
<summary>Standard open-source font license text, no security risk.</summary>
</security_assessment>

[3/5] Reviewing src/md5sums, src/usr/bin/yt-dlp...
+ Reviewed src/usr/lib/Harbor/fonts/LICENSE-OFL-NotoSansJP.txt. Status: SAFE -- Standard open-source font license text, no security risk.
LLM auditresponse for md5sums:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an md5 checksum list for the package's contents. It contains only lines with a checksum followed by a file path. There is no executable code, no network operations, no obfuscation, and no commands. The file paths refer to legitimate binaries and resources typical for the Harbor application (e.g., harbor, ffmpeg, ffprobe, icons, font license). This is a standard packaging artifact for verifying file integrity and does not exhibit any malicious behavior.
</details>
<summary>Standard checksum file with no security concerns.</summary>
</security_assessment>

[4/5] Reviewing src/usr/bin/yt-dlp...
+ Reviewed src/md5sums. Status: SAFE -- Standard checksum file with no security concerns.
LLM auditresponse for yt-dlp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python entry-point script for the `yt-dlp` package. It imports the `main` function from the `yt_dlp` module and executes it, which is the expected behaviour for running the yt-dlp command-line tool. There are no network requests, no obfuscated code, no file system manipulations outside the application's normal operation, and no attempts to execute arbitrary or untrusted commands. The script simply adjusts `sys.argv[0]` and calls `sys.exit(main())`. There is no evidence of malicious or suspicious activity.
</details>
<summary>Standard yt-dlp entry point – no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed src/usr/bin/yt-dlp. Status: SAFE -- Standard yt-dlp entry point – no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Harbor_0.9.13-4_amd64.deb)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,125
  Completion Tokens: 2,753
  Total Tokens: 18,878
  Total Cost: $0.001947
  Execution Time: 59.92 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-harbor-stremio-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e3yypbvh/Harbor_0.9.13-4_amd64.deb: [SKIPPED] Skipping binary file: Harbor_0.9.13-4_amd64.deb
