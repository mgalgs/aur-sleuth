---
package: shelly
pkgver: 3.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29933
completion_tokens: 5608
total_tokens: 35541
cost: 0.003744559
execution_time: 49.9
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T04:09:13Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Desktop entry file is benign; defines only metadata and a standard Exec path.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate Flatpak desktop integration script with no malicious behavior found.
  - file: shellybuild.conf
    status: safe
    summary: Inert commented TOML config template; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and normal Zig build/install; no malicious behavior found.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry, no malicious behavior.
---

Materializing shelly from local mirror...
Materialized shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous top-level code exists in this PKGBUILD. The global scope only defines variables (pkgbase, pkgname, etc.), sets the source array, performs a simple case statement to choose dependency lists based on an environment variable, and defines function stubs. No command substitutions, no network calls, and no obfuscated code appear at the top level. Sourcing this file for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution found</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution found
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Shelly Notifications application. It defines metadata such as name, comment, icon, categories, and keywords, and specifies `Exec=/usr/bin/shelly-notifications`. There are no arbitrary commands, network operations, encoded payloads, or file manipulations. Running a packaged binary from `/usr/bin` via a desktop entry is normal and expected behavior. `NoDisplay=true` simply hides the entry from application menus, which is consistent with a background notification service. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Desktop entry file is benign; defines only metadata and a standard Exec path.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Desktop entry file is benign; defines only metadata and a standard Exec path.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It describes the `shelly` package, its dependencies, build dependencies, sources, and checksums. All source entries point to the project's own upstream GitHub repository or to local configuration/desktop/helper files included with the package. The single upstream tarball has a pinned version and a concrete SHA-256 checksum; the auxiliary files also have concrete checksums.

There are no network requests, obfuscated commands, suspicious downloads, or unexpected file operations in this file. It contains only declarative packaging metadata. The dependencies (`pacman`, `sudo`, `git`, `curl`, etc.) are appropriate for an Arch package manager and do not indicate malicious behavior. No evidence of a supply-chain attack or injected code was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script adds a &quot;Manage in Shelly&quot; desktop action to Flatpak desktop entries by creating local overrides under `~/.local/share/applications`. It performs no network access, no downloading or execution of remote code, no obfuscation, and no access to sensitive system data outside the user&#39;s desktop application metadata. File operations are limited to copying and editing `.desktop` files, using `mktemp` and atomic `mv` replacement, which is a reasonable and careful integration approach.

The only behavior of note is that it modifies user-local desktop files by iterating over Flatpak export directories. That is consistent with the script&#39;s stated purpose of integrating Flatpak applications with Shelly. `update-desktop-database` is a standard cache refresh and not a security concern. No evidence of malicious or injected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Legitimate Flatpak desktop integration script with no malicious behavior found.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate Flatpak desktop integration script with no malicious behavior found.
[3/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shellybuild.conf...
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration template with extensive comments describing optional overrides for the Shelly AUR builder. Every functional setting is commented out, so the file is inert as installed. The content consists of documentation for compiler flags, package signing, sandbox options, and path overrides — all normal for a packaging tool's configuration.

No malicious patterns appear: there are no network fetch commands, no encoded/obfuscated payloads, no file exfiltration, and no execution of attacker-controlled content. The only remotely notable items are commented-out examples that reference user-controlled paths (e.g. `extra_path`, `env`, `sandbox.extra_read`), which are ordinary configuration examples and not active behavior. The Landlock sandbox option described is a security-hardening feature, not a threat.
</details>
<evidence>
</evidence>
<summary>
Inert commented TOML config template; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert commented TOML config template; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds Shelly from the project's own GitHub release tarball over HTTPS, with every source pinned by a SHA-256 checksum. The build process uses the upstream Zig build system and installs the resulting binaries, desktop files, translations, and a Flatpak backend into `$pkgdir`. Running the freshly built `./out-cli/bin/shelly` to generate shell completions and the man page is a standard upstream build step, not execution of remotely downloaded code.

There is no obfuscated content, no `eval`, `base64`, `curl|bash`, or unexpected network access. Installing a polkit policy for `/usr/bin/shelly` and depending on `sudo` is consistent with a system package manager that needs privilege escalation, and the `readelf` checks only verify expected library linkage. Nothing in this PKGBUILD exfiltrates data, fetches mutable or unrelated content, or modifies files outside the package's own installation scope.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD with pinned sources and normal Zig build/install; no malicious behavior found.
</summary>
</security_assessment>

[5/6] Reviewing com.shellyorg.shelly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and normal Zig build/install; no malicious behavior found.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org Desktop Entry file for the `shelly` package manager. It defines the graphical launcher configuration, including localized names/comments, MIME type handlers for transporting AppStream and Flatpak references (e.g., `x-scheme-handler/appstream`, `application/vnd.flatpak.ref`), and Quick List actions for common tasks. The `Exec` commands invoke the application&#8217;s own binary (`/usr/bin/shelly-ui`) with appropriate arguments. No obfuscation, unexpected network requests, or malicious code is present. The file strictly conforms to standard packaging practices for a desktop application.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,933
  Completion Tokens: 5,608
  Total Tokens: 35,541
  Total Cost: $0.003745
  Execution Time: 49.90 seconds

Final Status: SAFE


No issues found.
