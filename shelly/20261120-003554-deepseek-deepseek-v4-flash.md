---
package: shelly
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 30493
completion_tokens: 9054
total_tokens: 39547
cost: 0.00437409
execution_time: 55.07
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-20T00:35:54Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop launcher for Shelly package manager; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no executable code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: shellybuild.conf
    status: safe
    summary: Configuration file with no executable or malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Flatpak integration script, no malicious behavior.
---

Materializing shelly from local mirror...
Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (pkgbase, pkgname, pkgver, source, sha256sums, arch, url, license, makedepends), a simple parameter expansion for a build option (`_shelly_libalpm`), a validation guard (`case ... return 1`), and function stubs for build/check/package. There are no top-level command substitutions, eval calls, network requests, or obfuscated commands that would execute during `makepkg --printsrcinfo`. The `source` array and checksum array are straightforward variable assignments. All potentially suspicious operations (downloads, compilation, installation) reside inside the `build()` and `package_*()` functions, which are explicitly out of scope for the `--printsrcinfo` gate.
</details>
<evidence></evidence>
<summary>Safe top-level packaging logic.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe top-level packaging logic.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD...
[0/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD, .SRCINFO...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Shelly package manager&#8217;s notification service. It only defines metadata (name, comment, categories, keywords) and points to a legitimate executable (`/usr/bin/shelly-notifications`). There is no obfuscated code, network requests, file manipulation, or any other suspicious activity. The file follows the freedesktop.org Desktop Entry Specification and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD, .SRCINFO, com.shellyorg.shelly.desktop...
[1/6] Reviewing PKGBUILD, .SRCINFO, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Shelly Arch package manager. It defines a main desktop entry and three desktop actions that invoke `/usr/bin/shelly-ui` with different page arguments for Flatpak install/update/remove operations. There are no network operations, no encoded or obfuscated commands, no file modification logic, and no unusual execution patterns. The file contains only declarative configuration metadata (names, comments, keywords, MIME types, and `Exec` lines that call the package's own installed binary). This is consistent with normal packaging practice and contains no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .desktop launcher for Shelly package manager; no security issues found.
</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop launcher for Shelly package manager; no security issues found.
[2/6] Reviewing PKGBUILD, .SRCINFO, shelly-flatpak-integrate...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR metadata file (`.SRCINFO`) generated by `makepkg --printsrcinfo`. It contains no executable code, scripts, or commands of any kind—it is purely declarative, listing package metadata such as version, architecture, dependencies, and source checksums.

The sources reference the upstream project&#39;s official tarball and local configuration files, and all source entries are backed by pinned SHA256 checksums, which enhances supply-chain integrity by fixing the expected content. The dependencies listed (e.g., `pacman`, `gtk4`, `curl`, `gnupg`, `git`) are typical and expected for a graphical package manager. There is no evidence of obfuscation, no suspicious network destinations, no command execution, and no logic that could exfiltrate data or install backdoors.

Because the file contains only descriptive metadata and no executable content, it poses no direct security risk.
</details>
<evidence></evidence>
<summary>Standard metadata file, no executable code.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no executable code.
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It fetches the upstream source from a pinned GitHub release with verified SHA‑256 checksums, builds the multiple components using Zig, and installs the resulting binaries, configuration files, icons, translations, and a polkit policy into the package directory. There are no network requests at build time beyond the declared source download, no obfuscated code, no use of `eval`, `base64`, `curl`, or `wget` in unexpected contexts, and no attempt to exfiltrate data or run attacker-controlled code. The polkit policy grants administrative rights only to the package’s own binary (`/usr/bin/shelly`), which is expected for a system package manager. No evidence of supply‑chain injection or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a TOML configuration file (`shellybuild.conf`) for the Shelly AUR builder. It contains only configuration keys, comments, and commented-out example values. There are no executable commands, no network requests (curl/wget), no obfuscated code, no base64, no eval, and no file operations that could exfiltrate data or install backdoors. The file is deliberately inert — all settings are commented out, serving as documentation for system administrators. The content is consistent with a standard, well-documented build system configuration and presents no supply-chain security concerns.
</details>
<evidence></evidence>
<summary>Configuration file with no executable or malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Configuration file with no executable or malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a shell script that adds a "ShellyManage" action to Flatpak desktop entries. It safely iterates over Flatpak export directories, creates temporary files, modifies Desktop Entry files by adding an Actions line and a new Desktop Action section, and atomically replaces the target files using mktemp and mv. No network access, no code execution from untrusted sources, no obfuscation, and no system modifications outside the intended user-local application directory. The operations are consistent with the package's stated purpose of integrating Shelly with Flatpak applications.
</details>
<evidence></evidence>
<summary>Flatpak integration script, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Flatpak integration script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,493
  Completion Tokens: 9,054
  Total Tokens: 39,547
  Total Cost: $0.004374
  Execution Time: 55.07 seconds

Final Status: SAFE


No issues found.
