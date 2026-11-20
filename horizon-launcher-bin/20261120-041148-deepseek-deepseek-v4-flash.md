---
package: horizon-launcher-bin
pkgver: 0.2.86
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 48bb78819ef708de1067f28dd4b611a071d07c21
prompt_tokens: 24385
completion_tokens: 3546
total_tokens: 27931
cost: 0.00283293
execution_time: 26.04
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-20T04:11:47Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license text, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious behavior.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license file with no security concerns.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: horizon-launcher.sh
    status: safe
    summary: Standard launcher wrapper, no malicious behavior.
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
The PKGBUILD only contains variable definitions and array assignments at the global scope. There are no command substitutions (`$()`, backticks), `eval` calls, arithmetic evaluations, or any other constructs that would execute code during sourcing. The `source` array uses ordinary parameter expansion (e.g., `${url}`), which is safe — it is not a function-call or a file-sourcing operation. The sole function defined is `package()`, which is not executed by `makepkg --printsrcinfo`.  

All global code is limited to setting metadata strings and arrays (depends, sha256sums, etc.). No network requests, file downloads, or system modifications are triggered by sourcing this file. The content is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE.upstream...
[0/9] Reviewing .SRCINFO, LICENSE.upstream, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no instructions, no network requests, no file operations, and no obfuscated or suspicious content. It is purely a legal document and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a copy of the GNU Lesser General Public License, Version 3. It contains only license text, with no executable code, network requests, obfuscation, or any operations that could be considered malicious. It is a standard legal document commonly included in open-source packages.
</details>
<evidence>
</evidence>
<summary>Standard license text, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license text, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard package metadata for the AUR. It declares sources, checksums, dependencies, and options. All source URLs point to the legitimate upstream GitHub repository (`github.com/horizon-rust/horizon`). All checksums are provided and non-empty (none are `SKIP`). There is no executable code, no obfuscation, and no references to external hosts beyond the project's own releases. No suspicious or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a binary (pre-compiled) AUR package. It downloads a tarball from the project's official GitHub releases, includes all necessary auxiliary files (launcher script, desktop entries, icons, licenses), and provides pinned SHA-256 checksums for every source. The `package()` function only installs files into the package directory with appropriate permissions. There are no obfuscated commands, no network requests outside the declared upstream, no unexpected file operations, and no code that could exfiltrate data or introduce backdoors. The package is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing OFL-Geist.txt, horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious behavior.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a license text file (SIL Open Font License, Version 1.1) for the Geist font. It contains no executable code, no network operations, no obfuscation, and no system modification commands. It is a standard license document that accompanies the font software. There is no evidence of any supply chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard font license file with no security concerns.</summary>
</security_assessment>

[5/9] Reviewing horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license file with no security concerns.
[5/9] Reviewing horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`) that defines the metadata and launch configuration for the Horizon game launcher application. It contains only static fields such as application name, generic name, comment, icon, and execution path. There are no executable commands, network requests, obfuscated content, file operations, or system modifications. The file adheres entirely to the standard freedesktop.org specification for desktop entries and does not exhibit any suspicious or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[5/9] Reviewing horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for a game launcher. The `Exec` line runs `horizon-launcher play`, which is the expected command for this application. There are no network requests, obfuscated code, file operations, or dangerous commands. The file is fully consistent with legitimate packaging practices and contains no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for the horizon-launcher binary. It sets two environment variables to control self-update and desktop entry behavior, then cleans up old desktop entries using the launcher's own `desktop-entry --remove` command before exec'ing the launcher with any provided arguments. All operations are confined to the package's own binary and expected system integration points. There is no obfuscation, no network requests, no execution of untrusted code, and no manipulation of files outside the application's scope. The script follows typical AUR packaging practices and does not contain any genuinely malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard launcher wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,385
  Completion Tokens: 3,546
  Total Tokens: 27,931
  Total Cost: $0.002833
  Execution Time: 26.04 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
