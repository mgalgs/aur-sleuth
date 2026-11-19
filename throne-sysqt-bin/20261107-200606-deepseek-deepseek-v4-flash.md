---
package: throne-sysqt-bin
pkgver: 1.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14890
completion_tokens: 2442
total_tokens: 17332
cost: 0.001799434
execution_time: 60.07
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T20:06:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no malicious content.
  - file: LICENSE
    status: safe
    summary: License file with no code or malicious content.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: Throne.sh
    status: safe
    summary: Legitimate launcher script with no malicious behavior.
---

Materializing throne-sysqt-bin from local mirror...
Materialized throne-sysqt-bin
Analyzing throne-sysqt-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and array assignments at the top level. No command substitutions, backtick executions, or function calls are present outside of the `prepare()` and `package()` functions (which are not executed during `makepkg --printsrcinfo`). The variable `_appver` uses a safe parameter expansion that does not invoke external commands. All URLs point to the upstream GitHub repository, and no unexpected network requests or data exfiltration can occur from simply sourcing this file. There is no obfuscated or dangerous top-level code.
</details>
<evidence>
</evidence>
<summary>Sourcing this PKGBUILD for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD for metadata is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing LICENSE...
[0/5] Reviewing LICENSE, .SRCINFO...
[0/5] Reviewing LICENSE, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, and sources. All sources point to the official GitHub releases repository of the Throne project (`https://github.com/throneproj/Throne/releases`). SHA-256 checksums are provided for each source, allowing verification of the downloaded files. There is no obfuscated code, no network requests outside the official project, no dangerous commands, and no deviation from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned checksums.</summary>
</security_assessment>

[0/5] Reviewing LICENSE, .SRCINFO, PKGBUILD, Throne.desktop...
[1/5] Reviewing LICENSE, PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR binary package that downloads a prebuilt `.deb` from the project's own GitHub releases (`https://github.com/throneproj/Throne`). All source checksums are provided and non‑SKIP. The `prepare()` and `package()` functions only extract the archive and install the contents into the package directory using `bsdtar` and `install` — no obfuscated code, no unexpected network requests, no execution of untrusted scripts, and no modification of system files outside the package's scope. The `_appver` substitution contains an apparent typo (`&amp;`), but that is a minor parsing issue, not a malicious injection. No supply‑chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR binary package; no malicious content.</summary>
</security_assessment>

[1/5] Reviewing LICENSE, PKGBUILD, Throne.desktop, Throne.sh...
[2/5] Reviewing LICENSE, Throne.desktop, Throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a license file (ISC-style) attributed to Arch Linux Contributors. It contains only legal text, no executable code, network requests, obfuscation, or system-modifying instructions. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>License file with no code or malicious content.</summary>
</security_assessment>

[3/5] Reviewing Throne.desktop, Throne.sh...
+ Reviewed LICENSE. Status: SAFE -- License file with no code or malicious content.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Throne application. It declares the application name, comment, icon, and the `Exec=throne` command that launches the installed binary. There are no network requests, file operations, encoded commands, or anything beyond ordinary desktop-entry metadata. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher that manages application configuration directories and then runs the Throne binary from `/opt/Throne`. It performs no network requests, downloads, or execution of untrusted code. File operations are confined to the user&#39;s configuration directory (`~/.config/Throne`) and the application&#39;s install directory (`/opt/Throne`). The migration from `nekoray` and removal of broken symlinks are normal upgrade/hygiene steps. There is no obfuscation, eval, base64, or any command that deviates from ordinary packaging practices. Minor quoting issues exist (e.g., `[ ! -d $datadir ]` instead of `[ ! -d "$datadir" ]`), but these are robustness concerns, not evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Legitimate launcher script with no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed Throne.sh. Status: SAFE -- Legitimate launcher script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,890
  Completion Tokens: 2,442
  Total Tokens: 17,332
  Total Cost: $0.001799
  Execution Time: 60.07 seconds

Final Status: SAFE


No issues found.
