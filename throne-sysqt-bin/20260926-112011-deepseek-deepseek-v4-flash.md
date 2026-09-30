---
package: throne-sysqt-bin
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14974
completion_tokens: 4641
total_tokens: 19615
cost: 0.00114100224
execution_time: 58.93
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T11:20:10Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no signs of injected malware.
  - file: Throne.sh
    status: safe
    summary: Standard application wrapper, no malicious activity.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
---

Materializing throne-sysqt-bin from local mirror...
Materialized throne-sysqt-bin
Analyzing throne-sysqt-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard packaging variables (`pkgname`, `pkgver`, `url`, `source`, `sha256sums`, etc.) and two functions (`prepare`, `package`). Execution during `makepkg --printsrcinfo` covers only the global/top-level scope. The global scope consists entirely of variable assignments and function definitions; no command substitutions, backticks, or direct calls to external commands (e.g., `curl`, `wget`, `eval`, `base64`) exist outside the function bodies. The source array points to the package's own upstream release URLs on GitHub, which is standard practice. The code inside `prepare()` and `package()` is not executed during `--printsrcinfo` and will be audited separately.
</details>
<evidence></evidence>
<summary>No dangerous code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (similar to ISC) used by Arch Linux Contributors. It contains no executable code, no network requests, no obfuscation, no system modifications, and no instructions. It is a plain text legal notice with no security concerns.</details>
<evidence></evidence>
<summary>License file with no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no malicious content.
[1/5] Reviewing .SRCINFO, PKGBUILD, Throne.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file. It declares the package name, version, dependencies, and sources (`.deb` files from the project's official GitHub releases repository). All source URLs point to `https://github.com/throneproj/Throne/releases/download/1.3.1/`, which is the legitimate upstream. Both architecture-specific `.deb` files have pinned SHA256 checksums. There is no executable code, obfuscation, or unexpected network requests. No security issues.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, Throne.desktop, Throne.sh...
[2/5] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for a binary package that downloads a prebuilt Debian `.deb` from the project&#39;s official GitHub releases. All source URLs point to the upstream repository (`https://github.com/throneproj/Throne`), and each source has a corresponding SHA256 checksum (not skipped). The extraction and installation steps use standard tools (`bsdtar`, `install`, `find`) with no unusual parameters. There are no obfuscated commands, no `eval`, `curl|bash`, or unexpected network calls. The file follows normal AUR packaging practices for a `-bin` package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no signs of injected malware.</summary>
</security_assessment>

[3/5] Reviewing Throne.desktop, Throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no signs of injected malware.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Throne application. It handles configuration directory setup, migration from an older application (nekoray), backup of old config files, removal of broken symlinks, and launches the main executable from `/opt/Throne`. All operations are confined to the user's config directory and the application's own installation directory. No network requests, code downloads, obfuscation, or unexpected system modifications are present. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard application wrapper, no malicious activity.</summary>
</security_assessment>

[4/5] Reviewing Throne.desktop...
+ Reviewed Throne.sh. Status: SAFE -- Standard application wrapper, no malicious activity.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for the Throne GUI proxy application. It contains only conventional metadata keys: `Version`, `Type`, `Name`, `Comment`, `Exec`, `Icon`, `Terminal`, `StartupNotify`, `StartupWMClass`, and `Categories`.

The `Exec=throne` line simply launches the application binary installed by the package itself; it is not an absolute path, which is common and accepted practice for desktop entries. There are no network requests, no encoded or obfuscated content, no file manipulation, and no dangerous command invocations. The file matches ordinary packaging practices and contains no signs of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,974
  Completion Tokens: 4,641
  Total Tokens: 19,615
  Total Cost: $0.001141
  Execution Time: 58.93 seconds

Final Status: SAFE


No issues found.
