---
package: faugus-launcher
pkgver: 2.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23619
completion_tokens: 3788
total_tokens: 27407
cost: 0.00262474730
execution_time: 69.25
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-05T19:01:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: faugus-launcher.png
    status: skipped
    summary: "Skipping binary file: faugus-launcher.png"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: faugus-launcher.py
    status: safe
    summary: "Safe: no supply-chain attack; minor command injection bug."
---

Materializing faugus-launcher from local mirror...
Materialized faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and evaluates only its global/top-level scope. In this PKGBUILD, the top-level scope contains only standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `provides`, `conflicts`, `source`, and `sha256sums`. There are no command substitutions, external downloads, `eval`, `curl`, `wget`, base64 decoding, or other executable operations at top level that would run during sourcing.

The `build()` and `package()` functions contain meson build/install commands, but those functions are not executed by `makepkg --printsrcinfo`; they are out of scope for this narrow gate and will be reviewed in the full audit. The `sha256sums=(SKIP)` is a source-verification concern, not a danger during this command, and it is not grounds to fail this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope has only safe variable definitions; printsrcinfo is safe to run.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope has only safe variable definitions; printsrcinfo is safe to run.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.2.2.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing faugus-launcher.desktop...
[0/5] Reviewing faugus-launcher.desktop, .SRCINFO...
[0/5] Reviewing faugus-launcher.desktop, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines the package name, version, dependencies, and source location (the project's own GitHub release tarball). The `sha256sums` is set to `SKIP`, which is explicitly stated in the guidelines as **not** evidence of malice. No scripts, commands, network requests, or obfuscated content are present. This file contains only declarative packaging metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing faugus-launcher.desktop, .SRCINFO, PKGBUILD, faugus-launcher.png...
[1/5] Reviewing faugus-launcher.desktop, PKGBUILD, faugus-launcher.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
[1/5] Reviewing faugus-launcher.desktop, PKGBUILD, faugus-launcher.png, faugus-launcher.py...
[2/5] Reviewing faugus-launcher.desktop, PKGBUILD, faugus-launcher.py...
! Reviewed faugus-launcher.png. Status: SKIPPED -- Skipping binary file: faugus-launcher.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches the source from the project's official GitHub release archive, uses meson for building, and installs cleanly. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The only potential concern is the SKIP checksum, but per the guidelines this is not considered malicious—it is a trust/hygiene choice and not a supply-chain attack indicator. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/5] Reviewing faugus-launcher.desktop, faugus-launcher.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Faugus Launcher application. It contains no executable code, no network requests, no file operations, and no obfuscation. The `Exec` field simply launches the `faugus-launcher` binary, which is the expected behavior for a launcher. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[4/5] Reviewing faugus-launcher.py...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `faugus-launcher.py` is a standard GTK-based game launcher for managing Wine/Proton games. It reads and writes game configurations, creates desktop shortcuts, and launches games using `umu-run`. The code contains no network requests, no obfuscated or encoded commands, and no attempts to exfiltrate data or modify system files beyond the user&#8217;s home directory. All executed commands (bash, umu-run, winecfg, 7z, killall) are standard utilities used for the application&#8217;s stated purpose.

One security concern is a potential command injection vulnerability in the `on_button_shortcut_icon_clicked` method, where the user-supplied game path is passed directly to `os.system()` without proper sanitization. However, this is a programming flaw rather than an intentionally malicious supply-chain attack. The path is typically obtained from a file chooser dialog, but manual entry could allow injection. This vulnerability is not evidence that the AUR package itself contains malicious code, but it is a hygiene issue that could be addressed. No other indicators of malicious behavior (backdoors, credential theft, unexpected network activity) are present.
</details>
<evidence>
</evidence>
<summary>
Safe: no supply-chain attack; minor command injection bug.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed faugus-launcher.py. Status: SAFE -- Safe: no supply-chain attack; minor command injection bug.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: faugus-launcher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,619
  Completion Tokens: 3,788
  Total Tokens: 27,407
  Total Cost: $0.002625
  Execution Time: 69.25 seconds

Final Status: SAFE


No issues found.


Audit Skips:

faugus-launcher.png: [SKIPPED] Skipping binary file: faugus-launcher.png
