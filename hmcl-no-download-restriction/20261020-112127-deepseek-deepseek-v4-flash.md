---
package: hmcl-no-download-restriction
pkgver: 3.17.0.361.r1.g583e004d7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28647
completion_tokens: 4336
total_tokens: 32983
cost: 0.003396029
execution_time: 34.47
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T11:21:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with checksums; no malicious behavior detected.
  - file: README.md
    status: safe
    summary: Benign README documenting an AUR package build; no malicious behavior found.
  - file: hmcl-launch-script
    status: safe
    summary: Safe launcher script that prepares config directory and starts the HMCL jar.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-source AUR build; embedded Azure credentials are a hygiene concern, not malware.
  - file: hmcl-no-download-restriction.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior detected.
  - file: hmcl-no-download-restriction.install
    status: safe
    summary: Install script only prints localized post-install messages; no malicious operations.
  - file: revert-583e004.patch
    status: safe
    summary: Benign revert patch that removes region-restriction logic; no malicious behavior found.
---

Materializing hmcl-no-download-restriction from local mirror...
Materialized hmcl-no-download-restriction
Analyzing hmcl-no-download-restriction AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments (pkgname, pkgver, source, b2sums, etc.) with no command substitutions, backtick expansions, or executable statements. All dynamic operations (patching, building, installing) are confined to the `prepare()`, `build()`, and `package()` functions, which are **not executed** by `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction poses no risk of code execution or data exfiltration at this stage.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard Arch package metadata. It declares the package name, description, upstream URL, dependencies, sources, and BLAKE2 checksums. No scripts, commands, or executable content are present in this file itself.

The sources point to the project&#39;s own upstream GitHub repository (HMCL-dev/HMCL) plus package-specific files (launch script, desktop entry, patch) and every source has a fixed b2sum. The patch is named for a specific commit (`revert-583e004.patch`), which is consistent with the stated purpose of removing a particular restriction. Nothing here indicates obfuscation, unauthorized network behavior, or injection of malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata with checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/7] Reviewing PKGBUILD, README.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with checksums; no malicious behavior detected.
[1/7] Reviewing PKGBUILD, README.md, hmcl-launch-script...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README describing the purpose and build process of an AUR package. It documents pinning an upstream HMCL commit, applying a revert patch, and building with makepkg. No code is executed from this file by the package build, and the commands shown are ordinary maintainer/user instructions.

The mention of pre-configured Microsoft OAuth credentials is a transparency note about credentials provided by the upstream AUR package maintainer, not evidence of exfiltration or theft. Building the package and installing its own jar, launcher script, desktop entry, and icons are standard packaging practices. No obfuscation, unexpected network behavior, or malicious file operations are present.
</details>
<evidence>
</evidence>
<summary>
Benign README documenting an AUR package build; no malicious behavior found.</summary>
</security_assessment>

[1/7] Reviewing PKGBUILD, README.md, hmcl-launch-script, hmcl-no-download-restriction.desktop...
[2/7] Reviewing PKGBUILD, hmcl-launch-script, hmcl-no-download-restriction.desktop...
+ Reviewed README.md. Status: SAFE -- Benign README documenting an AUR package build; no malicious behavior found.
LLM auditresponse for hmcl-launch-script:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script for the HMCL Minecraft launcher package. It creates a per-user configuration directory under `$XDG_CONFIG_HOME` or `$HOME/.config`, ensures an empty `hmcl.json` exists, and then launches the application jar with the system Java runtime.

There are no suspicious network operations, encoded payloads, dangerous command substitutions, or writes outside the application's own configuration directory and the package's installed jar path. The use of `mkdir`, `touch`, and `exec /usr/bin/java` are all consistent with normal packaging and launcher behavior.
</details>
<evidence>
</evidence>
<summary>
Safe launcher script that prepares config directory and starts the HMCL jar.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, hmcl-launch-script, hmcl-no-download-restriction.desktop, hmcl-no-download-restriction.install...
[3/7] Reviewing PKGBUILD, hmcl-no-download-restriction.desktop, hmcl-no-download-restriction.install...
+ Reviewed hmcl-launch-script. Status: SAFE -- Safe launcher script that prepares config directory and starts the HMCL jar.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is a pinned upstream commit from the project's own GitHub repository with b2 checksums provided. The prepare step applies a patch that reverts a specific upstream commit, which matches the package's stated purpose of removing mainland China download restrictions. The build step runs the upstream Gradle build with the required Java environment, and the package step installs the built jar, icons, launch script, and desktop file into `$pkgdir`. No obfuscated code, suspicious downloads, unexpected file operations, or exfiltration behavior is present.

The exported `MICROSOFT_AUTH_ID` and `MICROSOFT_AUTH_SECRET` are embedded application credentials for HMCL's Microsoft login feature. This is a credential-hygiene concern because the secret is publicly visible in the PKGBUILD and could be used by others, but it is not evidence of a supply-chain attack: it supports the application's stated login functionality rather than exfiltrating data or executing attacker-controlled code. Overall, the file shows no genuinely malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard pinned-source AUR build; embedded Azure credentials are a hygiene concern, not malware.</summary>
</security_assessment>

[4/7] Reviewing hmcl-no-download-restriction.desktop, hmcl-no-download-restriction.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-source AUR build; embedded Azure credentials are a hygiene concern, not malware.
[4/7] Reviewing hmcl-no-download-restriction.desktop, hmcl-no-download-restriction.install, revert-583e004.patch...
LLM auditresponse for hmcl-no-download-restriction.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file used by desktop environments to display and start the application. It contains only static metadata: a name, comment, icon reference, and an `Exec` line that invokes the package's own binary (`hmcl-no-download-restriction`) with no arguments or shell features.

There are no network requests, downloads, encodings, obfuscation, file operations, or system modifications of any kind. The file performs no executable logic whatsoever; it merely tells the desktop environment which command to launch. This is exactly what a packaging maintainer would ship for a graphical application, and nothing in the file deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing hmcl-no-download-restriction.install, revert-583e004.patch...
+ Reviewed hmcl-no-download-restriction.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior detected.
LLM auditresponse for hmcl-no-download-restriction.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script is purely informational. It only prints localized post-install messages about the HMCL build, Microsoft login credentials, the reverted upstream commit, and how to launch HMCL with custom credentials. It performs no network requests, no file writes, no command execution other than `printf`, and no system modifications.

The mention of pre-configured Microsoft credentials is a packaging/policy matter for the upstream project and the AUR maintainer, not evidence of injected malicious code in this file. There is nothing here that exfiltrates data, downloads or executes untrusted code, or tampers with system files.
</details>
<evidence>
</evidence>
<summary>
Install script only prints localized post-install messages; no malicious operations.</summary>
</security_assessment>

[6/7] Reviewing revert-583e004.patch...
+ Reviewed hmcl-no-download-restriction.install. Status: SAFE -- Install script only prints localized post-install messages; no malicious operations.
LLM auditresponse for revert-583e004.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a source patch that reverts an upstream HMCL commit which added China Mainland download restrictions. The patch removes `RegionUtils` (including its `https://ipwho.is` network lookup) and replaces region detection with a static locale/timezone/geoID check in `LocaleUtils.IS_CHINA_MAINLAND`. It also removes UI warnings and re-enables downloading game content in China Mainland, which is exactly the stated purpose of the `hmcl-no-download-restriction` package.

There is no obfuscated code, no unexpected network endpoints, no execution of downloaded content, no tampering with system files, and no exfiltration of user data. The changes are confined to HMCL's own source tree and to the application's download/region behavior. The removal of the `ipwho.is` call actually reduces third-party network access rather than introducing it. This is consistent with a legitimate revert-patch AUR package, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign revert patch that removes region-restriction logic; no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed revert-583e004.patch. Status: SAFE -- Benign revert patch that removes region-restriction logic; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,647
  Completion Tokens: 4,336
  Total Tokens: 32,983
  Total Cost: $0.003396
  Execution Time: 34.47 seconds

Final Status: SAFE


No issues found.
