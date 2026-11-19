---
package: claude-desktop-extra
pkgver: 2.31226.1
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18908
completion_tokens: 3898
total_tokens: 22806
cost: 0.00555668
execution_time: 38.72
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T15:06:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no executable or malicious content found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook; no malicious behavior; decision safe.
  - file: PKGBUILD
    status: safe
    summary: Conventional binary PKGBUILD with pinned checksums; no malicious or obfuscated behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations at the top level. There are no command substitutions (`$(...)` or backticks), no `eval` or `source` of untrusted content, and no calls to `curl`, `wget`, or other network tools in the global scope. The `source` and `sha256sums` arrays are simple string assignments with normal variable expansion. The `package()` function contains installation logic, but it is **not** executed during `makepkg --printsrcinfo` — only the top-level scope is sourced. No malicious code can run at parse time.
</details>
<evidence></evidence>
<summary>Top-level scope is safe; no executable code outside functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no executable code outside functions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It declares a package based on an official-looking Claude Desktop Linux build, hosted as a GitHub release from the same repository that maintains this AUR package. Both `x86_64` and `aarch64` sources have pinned SHA-256 checksums, which is a good supply-chain hygiene practice.

The file contains no executable code, no network-fetching commands, no obfuscation, and no file operations. The `optdepends` descriptions mention that the Claude Desktop application itself may auto-download a checksum-verified Claude Code CLI at runtime; this is a description of upstream application behavior, not a packaging script action, and no download or execution is performed by this file. The `!strip`, `!emptydirs`, and `install` entries are normal packaging metadata for a prebuilt Electron-based application.

No evidence of malicious or dangerous behavior was found. This file is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no executable or malicious content found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no executable or malicious content found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install hook performs routine package post-install tasks: setting the SUID bit on the Chromium sandbox helper, writing an AppArmor userns profile, refreshing desktop/icon caches, and printing informational notes about optional dependencies and a legacy repository name transition. All file modifications are limited to the package's own files (`/usr/lib/claude-desktop/`, `/etc/apparmor.d/claude-desktop`) and standard system caches.

There is no obfuscated code, no network download or execution, no exfiltration of local data, and no backdoor or reverse shell. The script reads `/etc/pacman.conf` only with `grep` to detect an old repository section and prints a notice; it does not modify the file or execute the commands it recommends. The `pacman -Sy` advice in the printed note is poor package-management hygiene (partial upgrade risk), but it is informational text rather than malicious behavior. The AppArmor `flags=(unconfined)` profile is a normal, documented pattern for Chromium-based applications and does not install a backdoor.

Overall, this is consistent with standard packaging and post-install behavior. No genuinely malicious or dangerous activity was found.
</details>
<evidence></evidence>
<summary>
Standard install hook; no malicious behavior; decision safe.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook; no malicious behavior; decision safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary-package recipe. The source tarballs for both x86_64 and aarch64 are downloaded from the maintainer's own GitHub releases page (matching the declared `url` and repository) and both have pinned `sha256sums` — no `SKIP`, no mutable URLs. The `package()` function only performs conventional install operations: copying the application tree to `/usr/lib/claude-desktop`, installing a launcher, desktop entry, icons, a GNOME search provider, a MIME definition, and the license file. There are no network calls at build time beyond the declared source fetch, no `curl|bash`, no `eval`, no base64/hex-encoded payloads, no writes outside the package's own directories, and no data exfiltration.

Setting SUID 4755 on the bundled `chrome-sandbox` is the standard, required setup for Chromium/Electron applications on Linux and is replicated by many packaged browsers and Electron apps; the `.install` hook re-asserting root ownership is likewise normal. The defensive checks that abort if upstream's search-provider/MIME layout changes (`ERROR: ... upstream layout changed; re-audit`) are a good practice, not a red flag. The package does ship a maintainer-patched `app.asar` with extra features, which is its stated purpose and is covered by the pinned checksums; trusting the maintainer's prebuilt artifact is inherent to this package type, but nothing in the PKGBUILD itself performs malicious or obfuscated actions.

The only thing worth noting is a general trust consideration, not a threat: the package distributes pre-built, patched binaries rather than building from source, so the supply-chain trust rests on the maintainer and GitHub release integrity (mitigated by pinned SHA-256 hashes). The runtime auto-download of a Claude Code CLI mentioned in `optdepends` is upstream application behavior, not something this PKGBUILD executes.
</details>
<evidence>
</evidence>
<summary>
Conventional binary PKGBUILD with pinned checksums; no malicious or obfuscated behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional binary PKGBUILD with pinned checksums; no malicious or obfuscated behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,908
  Completion Tokens: 3,898
  Total Tokens: 22,806
  Total Cost: $0.005557
  Execution Time: 38.72 seconds

Final Status: SAFE


No issues found.
