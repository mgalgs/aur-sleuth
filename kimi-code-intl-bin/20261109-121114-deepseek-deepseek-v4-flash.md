---
package: kimi-code-intl-bin
pkgver: 1.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17175
completion_tokens: 6718
total_tokens: 23893
cost: 0.002785601
execution_time: 53.58
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T12:11:13Z
file_verdicts:
  - file: kimi-code-intl.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; no malicious content detected.
  - file: kimi-code-intl.sh
    status: safe
    summary: Benign launcher script; sets env vars and executes binary.
  - file: PKGBUILD
    status: safe
    summary: Standard patched binary package for internationalization.
  - file: patch-region.js
    status: safe
    summary: Packaging helper script, no malicious behavior.
---

Materializing kimi-code-intl-bin from local mirror...
Materialized kimi-code-intl-bin
Analyzing kimi-code-intl-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#x27;s global scope contains only variable definitions (including arrays for source, sha256sums, depends, etc.) and two function definitions (`prepare()` and `package()`). No command substitutions, dangerous commands (curl, wget, eval, base64 decode, etc.), or any executable code exists outside of function bodies. During `makepkg --printsrcinfo`, only the global scope is sourced; function bodies are not executed. Therefore, running this command poses no security risk. The checksums being set to values (not SKIP) is also fine, but even SKIP would be irrelevant at this gate.
</details>
<evidence>
</evidence>
<summary>Safe for printsrcinfo gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for printsrcinfo gate.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-intl.desktop...
LLM auditresponse for kimi-code-intl.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Kimi Code application. It contains only metadata fields such as Name, Comment, Exec, Terminal, Type, Icon, StartupWMClass, MimeType, and Categories. No obfuscated code, network requests, dangerous commands, or any other security concerns are present. The file follows the freedesktop.org Desktop Entry Specification and is typical for AUR packages.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-intl.desktop, kimi-code-intl.sh...
[1/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-intl.sh...
+ Reviewed kimi-code-intl.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the `kimi-code-intl-bin` package. It contains only declarative fields: package name, version, description, dependencies, source URLs, and checksums. All source URLs point to the package's official upstream domain (code.kimi.ai). No executable scripts, obfuscated code, suspicious network requests, or system modification commands are present. The checksums are fully specified (none set to SKIP), which aligns with standard packaging practices. There is no evidence of supply-chain attack or malicious intent in this file.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO; no malicious content detected.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, kimi-code-intl.sh, patch-region.js...
[2/5] Reviewing PKGBUILD, kimi-code-intl.sh, patch-region.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; no malicious content detected.
LLM auditresponse for kimi-code-intl.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher shell script for the `kimi-code-intl` package.  It sets several environment variables to configure the application – home directory, OAuth host, API base URL, and a region marker – and then executes the main binary located at `/opt/kimi-code-intl/kimi-code` with any passed arguments.  

No obfuscation, network requests, file manipulations outside the expected scope, or execution of untrusted code is present.  The URLs point to the application's own API endpoints, which is standard for a client application.  The script performs no actions that deviate from ordinary packaging practices or indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign launcher script; sets env vars and executes binary.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, patch-region.js...
+ Reviewed kimi-code-intl.sh. Status: SAFE -- Benign launcher script; sets env vars and executes binary.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines a standard AUR patched binary package (`kimi-code-intl-bin`). Its stated purpose is to take the official international Debian package of Kimi Code and patch its region detection to always use the global API, installing it under a separate prefix (`/opt/kimi-code-intl`) to avoid conflicting with the domestic version.

The build process is entirely transparent and uses only local tools and the declared sources:
- Sources are pinned with specific `sha256sums`.
- `prepare()` extracts the upstream `.deb`, patches the application&#039;s bundled JS using a local Node script (`patch-region.js`) included in the sources, and repacks it.
- `package()` installs the patched binary, a custom launcher script, a `.desktop` file, and the application&#039;s icon.
- The SUID bit on `chrome-sandbox` is explicitly configured to match the behavior of the upstream Debian postinst script, which is standard for Electron applications.
- The removal of `app-update.yml` is a routine measure to prevent automatic updates from overwriting the applied patch.

There is no evidence of data exfiltration, backdoors, obfuscated code, unexpected network requests (`curl`, `wget`, `git pull`), or tampering with system files outside of the application&#039;s own installation prefix. The packaging is consistent with the maintainer&#039;s stated goals and follows established AUR practices for similar &quot;intl-bin&quot; packages.
</details>
<evidence>
</evidence>
<summary>Standard patched binary package for internationalization.</summary>
</security_assessment>

[4/5] Reviewing patch-region.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard patched binary package for internationalization.
LLM auditresponse for patch-region.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a helper script used by the AUR maintainer to patch an extracted Electron application (Kimi Code) for region-specific configuration and config directory isolation. It modifies local files within the given extraction directory:
- Updates `package.json` to set a unique `name` and `desktopName`.
- Replaces a region-detection function with a compile-time constant.
- Optionally patches the URL scheme to avoid protocol handler conflicts between the mainland-CN and international versions.

All operations are confined to the provided directory. There are no network requests, downloads, execution of external commands, or attempts to exfiltrate data. The script uses only `fs`, `path`, and `JSON.parse`/`stringify`. The region argument is validated to be one of two predefined values. The string replacements are fixed, not derived from untrusted input, and cannot introduce arbitrary code.

The script is an ordinary packaging tool with no evidence of injection, backdoors, or supply-chain attack. It does not contain obfuscated code, dangerous commands, or any behavior outside the stated purpose of preparing the binary for distribution.
</details>
<evidence></evidence>
<summary>Packaging helper script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed patch-region.js. Status: SAFE -- Packaging helper script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,175
  Completion Tokens: 6,718
  Total Tokens: 23,893
  Total Cost: $0.002786
  Execution Time: 53.58 seconds

Final Status: SAFE


No issues found.
