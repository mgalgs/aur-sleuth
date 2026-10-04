---
package: throne-sysqt-bin
pkgver: 1.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15057
completion_tokens: 4118
total_tokens: 19175
cost: 0.00326102
execution_time: 151.62
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T11:03:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: LICENSE
    status: safe
    summary: License file only; no malicious or suspicious content found.
  - file: Throne.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious code.
  - file: Throne.sh
    status: safe
    summary: Safe launcher script; only a benign variable-name bug and minor shell hygiene issues.
---

Materializing throne-sysqt-bin from local mirror...
Materialized throne-sysqt-bin
Analyzing throne-sysqt-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code. The top-level statements here are limited to variable and array assignments, including `source`, `sha256sums`, and `_appver=${pkgver/[a-z]/-&amp;}`. These are normal packaging metadata definitions and do not invoke command substitution, external downloads, or any executable payload at source time.

The `prepare()` and `package()` functions contain archive extraction and file installation logic, but these functions are not executed by `makepkg --printsrcinfo`. Any concerns about the binary Debian package, checksums, or the behavior during the full build are outside the scope of this narrow safety gate.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD code is safe; only variable assignments are executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is safe; only variable assignments are executed.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for the `throne-sysqt-bin` AUR package. It defines package metadata, dependencies, and source URLs that point to the official GitHub releases of the Throne project. All source checksums are provided (not skipped) and the URLs are standard GitHub release assets. There are no executable commands, obfuscated content, or references to external/unexpected hosts. The file conforms to standard AUR packaging practices and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, Throne.desktop...
[1/5] Reviewing LICENSE, PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (ISC-style, attributed to Arch Linux Contributors). It contains no executable code, no network requests, no file operations, and no packaging logic. There is nothing suspicious or malicious in the content. It is a standard license notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file only; no malicious or suspicious content found.</summary>
</security_assessment>

[1/5] Reviewing LICENSE, PKGBUILD, Throne.desktop, Throne.sh...
[2/5] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
+ Reviewed LICENSE. Status: SAFE -- License file only; no malicious or suspicious content found.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used by Linux desktop environments to define an application launcher. It contains no executable code, no network requests, no obfuscation, and no system modifications. The file simply declares metadata (name, icon, category) and an `Exec` line that launches the `throne` binary. This is normal packaging practice and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for packaging a prebuilt binary from the upstream GitHub releases. All source downloads point to the project&#39;s own official repository (`https://github.com/throneproj/Throne/releases`), and checksums are provided. The prepare() and package() functions only extract the downloaded .deb and install files into the package directory. There are no suspicious network requests, obfuscated code, unexpected file operations, or other indicators of injected malicious behavior. The script does exactly what a -bin package is expected to do: download an upstream binary release and install it with correct paths.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing Throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious code.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher/wrapper script for an installed GUI application. It computes a per-user config directory, optionally migrates data from a previous application's directory, backs up old JSON configs once, removes stale symlinks to geo asset files, and then runs the installed binary from `/opt/Throne`. There are no network operations, downloads, eval/base64 usage, encoded payloads, credential access, or modifications outside the application's own data directories.

The only notable issue is a bug in the migration logic: the variable `nekoray_datadir` is set but the test uses the undefined `$nekoray_datadir`, causing the `if` condition to be true and the subsequent `cp` to fail due to a missing source operand. This is a functional defect and a code-quality concern, not malicious behavior. Similarly, unquoted variable expansions are poor hygiene but do not enable injection here because variable contents are not re-evaluated as shell syntax. Overall, nothing in this script deviates from legitimate packaging/launcher behavior.
</details>
<evidence>
</evidence>
<summary>
Safe launcher script; only a benign variable-name bug and minor shell hygiene issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed Throne.sh. Status: SAFE -- Safe launcher script; only a benign variable-name bug and minor shell hygiene issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,057
  Completion Tokens: 4,118
  Total Tokens: 19,175
  Total Cost: $0.003261
  Execution Time: 151.62 seconds

Final Status: SAFE


No issues found.
