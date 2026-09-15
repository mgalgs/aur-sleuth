---
package: shelly
pkgver: 3.1.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 24339
completion_tokens: 4258
total_tokens: 28597
cost: 0.0015179010
execution_time: 136.35
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T23:04:49Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Benign desktop entry file; no malicious or suspicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop launcher for a GUI package manager; no security issues found.
  - file: shellybuild.conf
    status: safe
    summary: Inert commented configuration template; no executable or malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging; no evidence of malicious code or supply-chain attack.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate Flatpak integration helper script; no malicious behavior.
---

Materializing shelly from local mirror...
Materialized shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
  <decision>SAFE</decision>
  <details>
    Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes its global/top-level scope. In this PKGBUILD, the top-level scope consists only of standard metadata and variable/array assignments: pkgver, arch, url, license, makedepends, source, sha256sums, and _source_dir. There are no top-level command substitutions, network fetches, payload downloads, obfuscated strings, or file-exfiltration statements.

    The potentially interesting commands — zig build, install commands, desktop entry installation, polkit policy installation, and completion generation — are inside build(), package_shelly(), or related packaging functions. Those functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow safety gate. They should be reviewed separately in the full PKGBUILD audit.

    The source is a pinned GitHub release tarball with a checksum, and no top-level behavior poses an execution risk during this step.
  </details>
  <evidence></evidence>
  <summary>
    Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. No malicious top-level code executes during this command.
  </summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. No malicious top-level code executes during this command.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Shelly Notifications service. It only defines metadata such as application name, comments, localized translations, categories, and keywords. The `Exec` line launches `/usr/bin/shelly-notifications`, which is the package's own installed binary, and the entry is hidden from application menus via `NoDisplay=true`. There are no network operations, no encoded commands, no file modifications, and no suspicious behavior. The file is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Benign desktop entry file; no malicious or suspicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR package metadata. It defines two subpackages (shelly and shelly-flatpak-backend) with expected dependencies, sources, and SHA256 checksums. All source tarballs are from the official GitHub repository of the project (https://github.com/Seafoam-Labs/Shelly-ALPM). No suspicious URLs, obfuscated code, or dangerous commands are present. The file contains only declarative metadata and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop `.desktop` launcher for the Shelly package manager. It defines desktop actions that invoke `/usr/bin/shelly-ui` with benign page arguments such as `--page flatpak-install`, `--page flatpak-update`, and `--page flatpak-remove`. These are normal application menu entries for a GUI package manager and do not contain any network access, obfuscated commands, file manipulation, or unexpected execution. The `MimeType` entries and notification hint are ordinary desktop integration metadata. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher for a GUI package manager; no security issues found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop launcher for a GUI package manager; no security issues found.
LLM auditresponse for shellybuild.conf:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Shelly, an AUR build tool. All settings are commented out and the file is explicitly described as deliberately inert. The content consists solely of documented build options (compiler flags, packaging options, cache/log destinations) and contains no executable code, no network operations, no file manipulation logic, and no obfuscated content. There is nothing here that constitutes a supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Inert commented configuration template; no executable or malicious content found.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert commented configuration template; no executable or malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It fetches the source tarball from the project's official GitHub release, verifies it with a pinned checksum, then builds and installs the application using its normal build system (zig). There are no suspicious network requests, obfuscated commands, eval usage, or unexpected data exfiltration. The inline polkit policy is a standard way to allow administrative access for a package manager UI. All source files are listed with sha256sums (none set to SKIP). The build() and check() steps execute the compiled binary only to generate shell completions and documentation, which is routine upstream behavior. No evidence of malicious injection or supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard packaging; no evidence of malicious code or supply-chain attack.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging; no evidence of malicious code or supply-chain attack.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` adds a "Manage in Shelly" right-click action to Flatpak .desktop files. It copies desktop files from system/user Flatpak export directories to the local applications directory if not already present, then appends a custom Desktop Action that launches `/usr/bin/shelly-ui --page flatpak-install`. There is no obfuscation, no network access, no download/execution of external code, and no tampering with system files outside the intended scope. The use of `sed`, `cat`, and `cp` is standard for such integration scripts. The script is safe.
</details>
<evidence></evidence>
<summary>Legitimate Flatpak integration helper script; no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate Flatpak integration helper script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,339
  Completion Tokens: 4,258
  Total Tokens: 28,597
  Total Cost: $0.001518
  Execution Time: 136.35 seconds

Final Status: SAFE


No issues found.
