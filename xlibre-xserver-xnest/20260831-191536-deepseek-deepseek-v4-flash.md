---
package: xlibre-xserver-xnest
pkgbase: xlibre-xserver
pkgver: 25.1.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 31677
completion_tokens: 3066
total_tokens: 34743
cost: 0.00305950428
execution_time: 110.73
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 1629
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:15:35Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Metadata file; no executable or dangerous content.
  - file: xvfb-run.1
    status: safe
    summary: Man page with no executable code; completely safe documentation.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for an X server fork, no malicious indicators.
  - file: xvfb-run
    status: safe
    summary: Standard helper script, no malicious behavior found.
---

xlibre-xserver-xnest is built from xlibre-xserver
Cloning https://aur.archlinux.org/xlibre-xserver.git...
Cloned xlibre-xserver-xnest
Analyzing xlibre-xserver-xnest AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard variable definitions and array assignments in its global scope. The source array points to a tarball from the official GitHub repository (`https://github.com/X11Libre/xserver/archive/refs/tags/...`) and two local files (`xvfb-run`, `xvfb-run.1`), all with valid checksums. There are no command substitutions, `eval` calls, or other executable code in the top-level scope or in any `pkgver()` function (none exists). The only variable expansions are in the source URL, which is normal for PKGBUILDs.

Running `makepkg --nobuild --nodeps --noprepare` will only fetch the sources (download and extract the tarball) and source the PKGBUILD's global scope. No code from `prepare()`, `build()`, or `package()` is executed at this stage. The absence of any dangerous top-level operations means these commands are safe. The third-party sources (xvfb-run) are also sourced from the package repo, not downloaded from an untrusted host.
</details>
<evidence>
</evidence>
<summary>Top-level code and source fetch are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code and source fetch are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/xserver-xlibre-xserver-25.1.9/xkb/README.compiled); they are upstream content and were not reviewed.
Reviewing the 7 file(s) in the AUR repository. The 1629 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard ISC-style license file for the package. It contains no executable code, no network requests, no obfuscation, and no system operations. It is purely a legal text file describing the terms of use for the software. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard license file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a license text (ISC-style permissive license). It contains no executable code, no network requests, no file operations, and no obfuscation. There is no indication of any malicious behavior. It is a standard open-source license file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It defines package metadata for several sub-packages (xlibre-xserver, xlibre-xserver-common, etc.) with sources from the project&#x27;s own GitHub repository and two local auxiliary files (xvfb-run, xvfb-run.1). All sources have explicit sha512 checksums. There are no suspicious URLs, obfuscated code, dangerous commands, or any indication of malicious injection. The file simply describes package dependencies, licenses, and version information. No supply-chain attack evidence is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[3/7] Reviewing PKGBUILD, REUSE.toml, xvfb-run...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml). It contains no executable code, no network requests, no file operations beyond simple pattern matching, and no obfuscation. It simply declares copyright and license annotations for various file patterns in the repository. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Metadata file; no executable or dangerous content.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, xvfb-run...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata file; no executable or dangerous content.
[4/7] Reviewing PKGBUILD, xvfb-run, xvfb-run.1...
LLM auditresponse for xvfb-run.1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a man page (troff format) for the `xvfb-run` command. It contains only documentation text, formatting macros, and standard header/footer information. There is no executable code, no obfuscated content, no network requests, no file operations, and no system modifications. The file poses no security threat; it is a normal documentation file distributed as part of an AUR package.
</details>
<evidence></evidence>
<summary>Man page with no executable code; completely safe documentation.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, xvfb-run...
+ Reviewed xvfb-run.1. Status: SAFE -- Man page with no executable code; completely safe documentation.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for building an X server fork (xlibre-xserver) from a tagged GitHub release. All source entries have valid SHA-512 checksums, no checksums are skipped, and no unexpected network operations or obfuscated code appear. The build process uses `meson` and `ninja` normally, with documented flag adjustments to resolve module loading issues referenced from Arch bug trackers. The package splits into subpackages via a helper function that copies files from a fake install directory, which is routine. No evidence of exfiltration, backdoors, or supply-chain tampering was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for an X server fork, no malicious indicators.</summary>
</security_assessment>

[6/7] Reviewing xvfb-run...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for an X server fork, no malicious indicators.
LLM auditresponse for xvfb-run:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `xvfb-run` is a standard shell script for running a command under an X virtual framebuffer (Xvfb). It performs expected operations: parsing command-line arguments, starting an Xvfb instance, generating an X authority cookie via `mcookie`, setting the display, running the user's command, and cleaning up temporary files and processes. There are no network requests, no downloads, no encoded or obfuscated code, and no attempts to access or exfiltrate sensitive system data. All shell constructs (getopt, mktemp, kill, rm) are used in a normal and safe manner consistent with the script's stated purpose. The script does not deviate from standard packaging practices for such a utility.
</details>
<evidence></evidence>
<summary>Standard helper script, no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed xvfb-run. Status: SAFE -- Standard helper script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,677
  Completion Tokens: 3,066
  Total Tokens: 34,743
  Total Cost: $0.003060
  Execution Time: 110.73 seconds

Final Status: SAFE


No issues found.
