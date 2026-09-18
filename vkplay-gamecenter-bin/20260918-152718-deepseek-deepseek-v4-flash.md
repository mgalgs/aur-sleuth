---
package: vkplay-gamecenter-bin
pkgver: 1.21
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9848
completion_tokens: 5414
total_tokens: 15262
cost: 0.00103049184
execution_time: 145.55
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:27:18Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum and official source; no signs of malicious behavior.
  - file: vkplay-gamecenter-bin.install
    status: safe
    summary: Standard install hook registering a URL scheme handler; no malicious behavior found.
---

Materializing vkplay-gamecenter-bin from local mirror...
Materialized vkplay-gamecenter-bin
Analyzing vkplay-gamecenter-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions (`prepare()` and `package()`) at top-level scope. There are no command substitutions, no calls to external tools, and no code that executes during sourcing. The `source` array uses a straightforward URL from what appears to be the official domain (`static.gc.vkplay.ru`). No dangerous or obfuscated content is present that would execute during `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>No dangerous code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, vkplay-gamecenter-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source is downloaded from the official VK Play domain (static.gc.vkplay.ru) and its integrity is verified via a fixed SHA-256 checksum. The `prepare()` function simply extracts the data tarball from the `.deb` archive, and `package()` copies the contents into the package directory. There are no dangerous commands, obfuscation, unexpected network requests, or exfiltration attempts. The use of a `.install` file is normal for post-install scripts. No concerns.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksum; no suspicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, vkplay-gamecenter-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no suspicious behavior.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `vkplay-gamecenter-bin` package. It declares a fixed version (`1.21`, `pkgrel=1`), a single prebuilt `.deb` source fetched from `https://static.gc.vkplay.ru/` — the official VK Play gamecenter distribution host — and a pinned SHA-256 checksum (`ed921cd1...`). There is nothing suspicious here: no obfuscated content, no unexpected network commands, no downloading from unrelated hosts, and no post-install code in this file.

The source URL matches the package’s stated purpose (VK Play gamecenter for Linux) and the checksum is pinned rather than `SKIP`, which is a good supply-chain hygiene signal. The `install = vkplay-gamecenter-bin.install` field references a separate install script that is not visible in this file; nothing in the `.SRCINFO` itself indicates malice. Standard packaging metadata fields such as `depends`, `arch`, and `options` are all normal for this type of binary gaming package.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksum and official source; no signs of malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing vkplay-gamecenter-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum and official source; no signs of malicious behavior.
LLM auditresponse for vkplay-gamecenter-bin.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file is a standard Arch Linux package hook for the VK Play game center desktop application. `post_install()` performs two routine, expected cache refreshes (`update-desktop-database` and `gtk-update-icon-cache`, both with `|| true` guards as is conventional) and then registers the `vkplay://` URL scheme handler via `xdg-mime default GameCenterShowcase.desktop x-scheme-handler/vkplay` for the invoking user (or first regular user found in `/etc/passwd`). This is ordinary desktop-application functionality — the app must own its URL scheme.

The `/etc/passwd` iteration in `post_remove()` is properly guarded: it only considers non-root users with UID in the 1000–65534 range, and the `sed -i` operation touches only `$HOME_DIR/.config/mimeapps.list`, deleting solely lines beginning with `x-scheme-handler/vkplay=`. That is cleanup of the application's own MIME association inside each user's own config directory — outside its own scope is nothing more than the app's own handler registration. The command suppresses errors and exits non-fatally.

There is no network activity, no download-and-execute, no obfuscated or encoded content, no `eval`, no exfiltration of sensitive files, and no modification of system files. The entity-encoded characters (`&quot;`, `&amp;`, `&gt;`, `&apos;`) are just the XML presentation of ordinary shell quoting, ampersands, and redirections. This is consistent with benign packaging practice for a desktop game client, so the file is SAFE.
</details>
<evidence></evidence>
<summary>Standard install hook registering a URL scheme handler; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed vkplay-gamecenter-bin.install. Status: SAFE -- Standard install hook registering a URL scheme handler; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,848
  Completion Tokens: 5,414
  Total Tokens: 15,262
  Total Cost: $0.001030
  Execution Time: 145.55 seconds

Final Status: SAFE


No issues found.
