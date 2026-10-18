---
package: horizon-launcher-bin
pkgver: 0.7.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23398
completion_tokens: 3775
total_tokens: 27173
cost: 0.002816268
execution_time: 73.55
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-18T19:27:06Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: License text only; no code, no malicious behavior detected.
  - file: LICENSE
    status: safe
    summary: Standard MIT license text only; no malicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata with pinned checksums; no malicious behavior found.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior present.
  - file: horizon-launcher.sh
    status: safe
    summary: Benign launcher wrapper script; no malicious behavior or suspicious operations found.
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop launcher file with no malicious content or behaviors.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: OFL-Geist.txt
    status: safe
    summary: Standard SIL Open Font License text; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard bin package; pinned checksums, official source, no malicious behavior.
---

Materializing horizon-launcher-bin from local mirror...
Cloning https://aur.archlinux.org/horizon-launcher-bin.git...
Cloned horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and a function definition for `package()`. There are no command substitutions, evals, or any executable code at the global scope that would run when sourced. Running `makepkg --printsrcinfo` will safely source the file and print metadata without executing any malicious payload.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain MIT license text. It contains no executable code, no network operations, no file modifications, and no obfuscated content. The &quot; entities are standard HTML/XML escaping of quotation marks in the license text, not encoded commands or suspicious encoding. There is no evidence of malicious behavior or supply-chain injection.
</details>
<evidence>
</evidence>
<summary>
License text only; no code, no malicious behavior detected.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt...
+ Reviewed LICENSE.upstream. Status: SAFE -- License text only; no code, no malicious behavior detected.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text. It is a license file with no executable code, no network operations, no file manipulations, no obfuscation, and no references to external hosts or scripts. The copyright holder line (rdbtCVS) and year (2026) are metadata only. The `&quot;` sequences are simply XML-escaped quotation marks from the presentation of the file content and are harmless. There is no evidence of injected malicious code or any deviation from ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text only; no malicious behavior present.
</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text only; no malicious behavior present.
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for `horizon-launcher-bin`, a prebuilt binary package. It declares the package description, dependencies, sources, and SHA-256 checksums. The only remote source is the release tarball from the project's own GitHub repository (`https://github.com/ludovic111/horizon/releases/download/launcher-v0.7.1/horizon-launcher-linux-x86_64.tar.gz`), which matches the declared upstream URL. All sources have explicit SHA-256 checksums; no checksums are `SKIP`. There are no embedded scripts, commands, encoded payloads, obfuscated data, or suspicious network operations. The file is purely declarative packaging metadata and contains no logic that could exfiltrate data, download executable content, or modify system files. The dependency and optdepends entries are consistent with a Linux desktop launcher for a Minecraft-like game.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Horizon game launcher. It defines metadata (name, comment, icon, categories) and launches the `horizon-launcher` executable installed by the package. There are no commands, scripts, network operations, file manipulations, or obfuscated content. The `Exec=` line simply invokes the package's own binary without arguments, which is expected packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior present.</summary>
</security_assessment>

[4/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior present.
[4/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.sh...
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small wrapper script for the Horizon Launcher. It sets two environment variables to prevent the launcher from self-updating and to point menu registrations at the packaged executable, then optionally removes desktop entries when invoked with no arguments before exec'ing the real launcher. All operations are local and scoped to launcher behavior, with no network access, obfuscation, data collection, or execution of untrusted content.

The `desktop-entry --remove` call modifies menu registrations, which is consistent with the script's stated purpose of cleaning up older launcher entries and does not manipulate unrelated system files. This is standard AUR packaging/wrapper behavior and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper script; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[4/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon.desktop...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Benign launcher wrapper script; no malicious behavior or suspicious operations found.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Horizon game launcher. It defines the application name, icon, category, and the command used to launch the game (`horizon-launcher play`). The `NoDisplay=true` flag simply hides the entry from application menus, which is common for launcher helper entries that are invoked indirectly. There are no network requests, obfuscated commands, file operations, or other suspicious behaviors. The file conforms to expected packaging practices for an application shortcut.
</details>
<evidence>
</evidence>
<summary>
Standard .desktop launcher file with no malicious content or behaviors.</summary>
</security_assessment>

[6/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop launcher file with no malicious content or behaviors.
[6/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon.svg...
[7/9] Reviewing OFL-Geist.txt, PKGBUILD...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License Version 1.1 text for the Geist font project. It is a standard, well-known open-source license document and contains no executable code, no network operations, no file system manipulation, and no suspicious or obfuscated content. The only URLs referenced point to the official openfontlicense.org FAQ and the upstream Vercel geist-font GitHub repository, both of which are consistent with the package's stated purpose of distributing the Geist font. There is nothing here that deviates from normal packaging practices or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard SIL Open Font License text; no security concerns found.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard SIL Open Font License text; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository binary package. It downloads a prebuilt release tarball over HTTPS from the project&apos;s own GitHub releases URL, and every source file has a pinned SHA-256 checksum. The `package()` function only copies the expected binary, launcher script, desktop entries, icon, and license files into `$pkgdir` using `install`. There are no network requests during build or packaging, no use of `eval`, `base64`, `curl`, `wget`, or obfuscated commands, no writes outside `$pkgdir`, and no post-install hooks.

Shipping a prebuilt binary from the upstream project is normal for a `-bin` package. Nothing in the PKGBUILD indicates injected malicious code, data exfiltration, backdoors, credential theft, or tampering with unrelated system files. The packaging is consistent with ordinary AUR practice.
</details>
<evidence></evidence>
<summary>Standard bin package; pinned checksums, official source, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard bin package; pinned checksums, official source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,398
  Completion Tokens: 3,775
  Total Tokens: 27,173
  Total Cost: $0.002816
  Execution Time: 73.55 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
