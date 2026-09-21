---
package: welink-wine
pkgver: 7.60.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23217
completion_tokens: 7790
total_tokens: 31007
cost: 0.003437646982
execution_time: 164.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T11:30:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Wine packaging, no malicious code detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with only typical build-artifact ignore patterns; no malicious behavior.
  - file: welink-wine.install
    status: safe
    summary: Pure informational echoes; no malicious code.
  - file: welink-mkfont.py
    status: safe
    summary: No security issues; standard font alias generator.
  - file: welink-wine.sh
    status: safe
    summary: "Benign Wine launcher: prefix migration, font setup, local logging, no malice found."
---

Materializing welink-wine from local mirror...
Materialized welink-wine
Analyzing welink-wine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable and array assignments, comments, and function definitions at the top level. No command substitutions, backticks, eval, or any other code that would execute during sourcing. The `sha256sums` array includes 'SKIP' entries, but that is not executed during `makepkg --printsrcinfo`. All potentially dangerous operations are inside `prepare()` and `package()` functions, which are not sourced by this command. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>No top-level malicious code to execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code to execute.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for an AUR package that wraps the Huawei WeLink Windows client with Wine. The source URL points to Huawei&#x27;s official domain (welink.huaweicloud.com) and includes a SHA-256 checksum for the executable. The two scripts (welink-wine.sh and welink-mkfont.py) have SKIP checksums, which is common for local files bundled in the AUR repository; this is not a security issue. There is no obfuscated code, unexpected network requests, or dangerous commands. The dependencies and install file are typical for a Wine-based package. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, welink-mkfont.py...
[1/6] Reviewing .gitignore, PKGBUILD, welink-mkfont.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a Wine-based Windows application. It downloads the official installer from the legitimate Huawei Cloud domain (welink.huaweicloud.com) with a valid SHA-256 checksum, extracts embedded 7z archives and icons using standard tools (7z, wrestool, icotool), and installs wrapper scripts and a desktop file. No suspicious network requests, obfuscated code, eval, or unexpected system modifications are present. The `SKIP` checksums for the shell script and Python script are a hygiene concern but not evidence of a supply-chain attack; they are typical for locally-maintained helper scripts in AUR packages. No genuinely malicious behavior (exfiltration, backdoors, remote code execution) was identified.
</details>
<evidence></evidence>
<summary>Standard Wine packaging, no malicious code detected.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, PKGBUILD, welink-mkfont.py, welink-wine.install...
[2/6] Reviewing .gitignore, welink-mkfont.py, welink-wine.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Wine packaging, no malicious code detected.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file containing four common ignore patterns: `*.exe`, `*.pkg.tar.*`, `src/`, and `pkg/`. These patterns are typical for AUR package repositories, where built binary artifacts (`.pkg.tar.*`), source directories (`src/`), and package staging directories (`pkg/`) are deliberately excluded from version control. There is no executable content, no network activity, no file manipulation, no obfuscation, and no deviation from standard packaging practices. The file is completely benign.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with only typical build-artifact ignore patterns; no malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing welink-mkfont.py, welink-wine.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with only typical build-artifact ignore patterns; no malicious behavior.
[3/6] Reviewing welink-mkfont.py, welink-wine.install, welink-wine.sh...
LLM auditresponse for welink-wine.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only informational echo statements in post-install, post-upgrade, and post-remove hooks. No commands are executed, no network access, no file modifications, no obfuscation, and no suspicious behavior. It simply prints messages to the user about the package&#39;s behavior and data locations. This is standard packaging practice.
</details>
<evidence></evidence>
<summary>Pure informational echoes; no malicious code.</summary>
</security_assessment>

[4/6] Reviewing welink-mkfont.py, welink-wine.sh...
+ Reviewed welink-wine.install. Status: SAFE -- Pure informational echoes; no malicious code.
LLM auditresponse for welink-mkfont.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script generates font aliases for the WeLink application within a Wine container. It reads system CJK fonts (Noto Sans/Serif CJK), modifies their name records to include Windows font family names (Microsoft YaHei, SimSun, etc.), and adjusts vertical metrics to match the original fonts. The script performs no network requests, does not execute any external commands (beyond library calls to fontTools), and does not read or exfiltrate sensitive data. All file operations are confined to the specified output directory and standard system font paths. The code is transparent, well-documented, and follows standard packaging practices for a font alias generation tool. There is no evidence of malicious behavior such as obfuscation, backdoors, or supply-chain attack vectors.
</details>
<evidence>
</evidence>
<summary>No security issues; standard font alias generator.</summary>
</security_assessment>

[5/6] Reviewing welink-wine.sh...
+ Reviewed welink-mkfont.py. Status: SAFE -- No security issues; standard font alias generator.
LLM auditresponse for welink-wine.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The visible script is a routine Wine launcher for WeLink. It initializes a per-user WINEPREFIX under ${XDG_DATA_HOME:-~/.local/share}/welink-wine, optionally migrates an older ~/.deepinwine/Spark-Welink prefix via `mv`, deploys the package's bundled payload from /opt/welink-wine/payload, and finally runs `wine "C:/Program Files/WeLink/WeLink.exe"` with `exec`. All filesystem writes (mkdir, the legacy-prefix move, the version-marker truncation, and log redirection to ${DATA}/welink.log) stay within the user's own data directories or the package's own /opt path.

The font-handling code invokes ${PKGDIR}/welink-mkfont.py (the package's own helper, installed to /opt/welink-wine) to generate/alias CJK fonts locally, and writes font-replacement registry values only into the user's WINEPREFIX (HKCU\Software\Wine\Fonts and HKCU\Software\Wine\Fonts\Replacements). The DPI/locale logic reads xrdb, kscreen-doctor, and `wine reg query`, then writes settings back into the same prefix. Passing `--no-sandbox --disable-gpu` to the guest Windows app is a common Chromium-under-Wine compatibility workaround and does not affect host security.

No network transfers, no curl/wget pipes, no base64/hex decoding, no eval, no obfuscated strings, no credential access, and no writes outside the application's own scope were present in the visible content. The submitted excerpt is heavily truncated with literal `[…]` markers and is syntactically incomplete, so the entire file cannot be fully audited; however, the observable code shows only ordinary launcher behavior, with no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Benign Wine launcher: prefix migration, font setup, local logging, no malice found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed welink-wine.sh. Status: SAFE -- Benign Wine launcher: prefix migration, font setup, local logging, no malice found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,217
  Completion Tokens: 7,790
  Total Tokens: 31,007
  Total Cost: $0.003438
  Execution Time: 164.14 seconds

Final Status: SAFE


No issues found.
