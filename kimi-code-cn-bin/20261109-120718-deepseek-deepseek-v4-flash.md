---
package: kimi-code-cn-bin
pkgver: 1.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17287
completion_tokens: 3177
total_tokens: 20464
cost: 0.002151331
execution_time: 29.8
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T12:07:17Z
file_verdicts:
  - file: kimi-code-cn.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD; all sources pinned, no malicious activity.
  - file: kimi-code-cn.sh
    status: safe
    summary: Clean launcher script with no malicious indicators.
  - file: patch-region.js
    status: safe
    summary: Safe AUR helper script for version isolation.
---

Materializing kimi-code-cn-bin from local mirror...
Materialized kimi-code-cn-bin
Analyzing kimi-code-cn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable and array definitions (pkgname, pkgver, source, sha256sums, etc.) and comments. There are no command substitutions, backtick executions, or function calls that would execute during `makepkg --printsrcinfo`. All file operations and code execution (e.g., `bsdtar`, `asar`, `node`, `cp`, `chmod`) are confined within the `prepare()` and `package()` functions, which are not sourced during this step. Therefore, there is no risk of malicious code running from simply sourcing this PKGBUILD.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-cn.desktop...
LLM auditresponse for kimi-code-cn.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for launching a desktop application. The `Exec` line runs `kimi-code-cn %U`, which is normal for handling URL schemes. There are no embedded commands, network requests, obfuscation, or malicious operations. The file only registers the application in the desktop environment.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-cn.desktop, kimi-code-cn.sh...
[1/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-cn.sh...
+ Reviewed kimi-code-cn.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file describing the package, its dependencies, sources, and checksums. It contains no executable code, no network requests, no file operations, and no obfuscated content. The sources point to the official upstream binary and auxiliary packaging files, all with provided SHA-256 checksums. This file conforms to standard AUR packaging practices and shows no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, kimi-code-cn.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
[2/5] Reviewing PKGBUILD, kimi-code-cn.sh, patch-region.js...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads an official upstream binary from `code.kimi.com`, extracts it, applies a region‑pinning patch via a helper script (`patch-region.js`), repacks the application asar, and installs it into `/opt/kimi-code-cn/`.  

All sources have pinned SHA‑256 checksums. No obfuscated code, unexpected network requests, `eval`, `curl|bash`, or any operation that exfiltrates data or modifies system files outside the package’s own prefix. The only modifications are the region patch and renaming the binary/custom protocol to avoid conflict with the international version.  

The `patch-region.js` script is not shown in this file, but its integrity is verified by a checksum, and the PKGBUILD does nothing dangerous with it. The `chmod 4755 chrome-sandbox` is standard for Electron applications requiring setuid sandboxing.  

No evidence of supply‑chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD; all sources pinned, no malicious activity.</summary>
</security_assessment>

[3/5] Reviewing kimi-code-cn.sh, patch-region.js...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD; all sources pinned, no malicious activity.
LLM auditresponse for kimi-code-cn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script that sets environment variables for the Kimi Code application (China mainland version) and then executes the main binary. The script exports paths and API endpoints to official `kimi.com` domains, sets a region marker, and runs the binary from `/opt/kimi-code-cn/kimi-code-cn` with all passed arguments. There is no obfuscated code, no network downloads, no dangerous commands (eval, curl, wget), and no file operations beyond the expected exec of the application binary. The behavior is consistent with a normal AUR package that launches an upstream application with its own configuration.
</details>
<evidence></evidence>
<summary>Clean launcher script with no malicious indicators.</summary>
</security_assessment>

[4/5] Reviewing patch-region.js...
+ Reviewed kimi-code-cn.sh. Status: SAFE -- Clean launcher script with no malicious indicators.
LLM auditresponse for patch-region.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper that patches the Kimi Code application's extracted ASAR directory to separate the mainland-cn and global versions. It performs three routine modifications: (1) rewrites `package.json` to set distinct `name` and `desktopName` for configuration directory and WM_CLASS isolation; (2) locates and replaces the region-detection function `Ei` with a constant value derived from the command-line argument; and (3) for the mainland-cn variant, patches the custom URL protocol from `kimi-code` to `kimi-code-cn` to avoid XDG conflicts. All operations are confined to files within the provided directory (`root`), use no external network requests, no obfuscation, and no execution of downloaded or arbitrary code. The logic is transparent and directly serves the stated goal of maintaining two non-overlapping installs of the same application. This is a standard AUR packaging script, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Safe AUR helper script for version isolation.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed patch-region.js. Status: SAFE -- Safe AUR helper script for version isolation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,287
  Completion Tokens: 3,177
  Total Tokens: 20,464
  Total Cost: $0.002151
  Execution Time: 29.80 seconds

Final Status: SAFE


No issues found.
