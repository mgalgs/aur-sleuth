---
package: exodus
pkgver: 26.10.7
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23250
completion_tokens: 4694
total_tokens: 27944
cost: 0.00670582
execution_time: 50.24
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T03:04:56Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: No executable code or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: exodus.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: exodus.svg
    status: skipped
    summary: "Skipping binary file: exodus.svg"
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksums and no malicious code.
  - file: ake
    status: safe
    summary: Standard maintainer helper script, no malicious behavior.
---

Materializing exodus from local mirror...
Materialized exodus
Analyzing exodus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level variable assignments and the `source` array definition. There are no top-level command substitutions, no eval, no curl/wget execution, no network operations, and no file-modifying code in the global scope. The `package()` function is not executed during `--printsrcinfo`, so its contents are out of scope for this narrow gate. The source URLs point to the official Exodus domain and the AUR cgit, which is normal packaging practice. No genuinely malicious behavior can execute during this step.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD is safe; package() is out of scope for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is safe; package() is out of scope for this gate.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the Exodus Terms of Use — a standard legal document distributed with the Exodus cryptocurrency wallet software. It contains no executable code, no network requests, no file operations, no obfuscation, and no commands. It is purely a text-based license agreement. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>No executable code or malicious content found.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- No executable code or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for the AUR package. It defines the package name, version, dependencies, and source URLs with corresponding SHA256 checksums. All sources point to either the official Exodus download server (`https://downloads.exodus.com`) or the AUR git repository (`https://aur.archlinux.org`), both of which are expected and legitimate for an AUR package. There are no encoded commands, network requests to unknown hosts, or any other malicious indicators. The file is a straightforward package descriptor with no executable or dangerous content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, ake...
[2/7] Reviewing .gitignore, PKGBUILD, ake...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file containing ignore patterns for build artifacts (`*.zip`, `*.pkg.tar.zst`), working directories (`src`, `pkg`), and macOS metadata (`.DS_Store`). There is no executable code, no network requests, no file manipulations outside the repository's scope, and no obfuscation. The file serves only to prevent unintended version control of temporary build outputs. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, ake...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[3/7] Reviewing PKGBUILD, ake, exodus.desktop...
LLM auditresponse for exodus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux `.desktop` entry. It contains only metadata fields (Name, Exec, Icon, Categories, etc.) and does not include any executable code, network requests, obfuscated content, or system modifications. The `Exec=exodus %f` line launches the `exodus` binary with an optional file argument, which is expected behavior for a desktop application. There are no indications of malicious activity.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, ake, exodus.desktop, exodus.svg...
[4/7] Reviewing PKGBUILD, ake, exodus.svg...
+ Reviewed exodus.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[5/7] Reviewing PKGBUILD, ake...
! Reviewed exodus.svg. Status: SKIPPED -- Skipping binary file: exodus.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches the upstream Exodus wallet binary from `downloads.exodus.com` and auxiliary files (icon, desktop entry, license) from the AUR repository itself. All source files have pinned SHA256 checksums, which ensures integrity and prevents substitution.

The `package()` function performs standard installation operations: copying the binary to `/opt/exodus`, creating a symlink in `/usr/bin`, and installing the launcher, icon, and license files to their respective system directories. There are no unexpected operations, network requests in the build phase beyond the declared sources, code obfuscation, or attempts to execute fetched scripts.

The file complies entirely with standard AUR packaging practices. No indicators of supply-chain compromise are present.
</details>
<evidence></evidence>
<summary>Standard binary package with pinned checksums and no malicious code.</summary>
</security_assessment>

[6/7] Reviewing ake...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksums and no malicious code.
LLM auditresponse for ake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR maintainer helper script (`ake`) that automates two routine packaging tasks: updating checksums and regenerating `.SRCINFO` (`updpkgsums && makepkg --printsrcinfo > .SRCINFO`), and optionally downloading the upstream release archive from the official Exodus downloads domain (`downloads.exodus.com`) via HTTPS. The `curl` command fetches the exact version declared in the PKGBUILD and does not execute the downloaded content. There is no obfuscation, no exfiltration, no execution of untrusted code, and no deviation from standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed ake. Status: SAFE -- Standard maintainer helper script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: exodus.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,250
  Completion Tokens: 4,694
  Total Tokens: 27,944
  Total Cost: $0.006706
  Execution Time: 50.24 seconds

Final Status: SAFE


No issues found.


Audit Skips:

exodus.svg: [SKIPPED] Skipping binary file: exodus.svg
