---
package: hmcl
pkgver: 3.16.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17688
completion_tokens: 3731
total_tokens: 21419
cost: 0.002288650
execution_time: 28.26
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:06:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with packaging artifact patterns; no malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR packaging metadata with pinned upstream source and checksums; no malicious indicators found.
  - file: hmcl.desktop
    status: safe
    summary: Standard desktop entry file; no malicious behavior detected.
  - file: hmcl-launch-script
    status: safe
    summary: Standard HMCL launcher script; creates config dir and runs Java jar. Safe.
  - file: hmcl.install
    status: safe
    summary: Install script only prints informational notices; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR Java package build; embedded Azure secret is a hygiene concern but not malicious.
---

Materializing hmcl from local mirror...
Materialized hmcl
Analyzing hmcl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this file, the top-level scope consists entirely of variable assignments and function definitions (`build()` and `package()`). There are no top-level command substitutions, network fetches, data exfiltration attempts, or encoded/obfuscated commands that would execute during sourcing.

The `build()` function contains exported Microsoft Azure credentials, but this code does not run during `makepkg --printsrcinfo`. It is also related to the package's stated functionality (Microsoft login for HMCL) and will be reviewed in the full audit if appropriate. The `source` array and checksums are not downloaded or verified during this step, so they are not relevant to this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and functions; no dangerous code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; no dangerous code executes during printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It only lists patterns for build artifacts and temporary files commonly produced during packaging, such as `*.pkg.tar*`, `*.src.tar*`, `src`, `pkg`, `*~`, and `.git*`. There are no commands, network operations, obfuscated content, or references to external sources. It poses no security risk.
</details>
<evidence></evidence>
<summary>
Standard .gitignore with packaging artifact patterns; no malicious content found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with packaging artifact patterns; no malicious content found.
[1/6] Reviewing .SRCINFO, PKGBUILD, hmcl-launch-script...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR package for the HMCL Minecraft launcher. The source tarball is fetched from the project's official GitHub repository (`https://github.com/HMCL-dev/HMCL/archive/v3.16.4.tar.gz`), which matches the package's declared upstream URL. The file includes pinned `b2sums` checksums for all three sources rather than skipping checksum verification, which is good packaging hygiene.

No suspicious network destinations, encoded commands, file operations, or unconventional build steps are present. The other referenced files (`hmcl-launch-script`, `hmcl.desktop`, and `hmcl.install`) are not included here, but the `.SRCINFO` itself contains no indicators of malicious or dangerous behavior. This is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR packaging metadata with pinned upstream source and checksums; no malicious indicators found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, hmcl-launch-script...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR packaging metadata with pinned upstream source and checksums; no malicious indicators found.
[2/6] Reviewing PKGBUILD, hmcl-launch-script, hmcl.desktop...
LLM auditresponse for hmcl.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the HMCL Minecraft launcher. It declares the application name, icon, category, and the `Exec=hmcl` command that launches the installed binary. There are no network requests, file operations, obfuscated code, or any other security-relevant behavior. The file is consistent with normal packaging practice for a graphical application.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious behavior detected.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, hmcl-launch-script, hmcl.desktop, hmcl.install...
[3/6] Reviewing PKGBUILD, hmcl-launch-script, hmcl.install...
+ Reviewed hmcl.desktop. Status: SAFE -- Standard desktop entry file; no malicious behavior detected.
LLM auditresponse for hmcl-launch-script:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher script for HMCL (Hello Minecraft Launcher). It changes into a per-user configuration directory under `$XDG_CONFIG_HOME` or `~/.config/hmcl`, creates that directory if needed, initializes an empty `hmcl.json` if it does not exist, and then launches the packaged Java jar with `/usr/bin/java`.

No malicious behavior is present. There are no network requests, no downloads, no encoded or obfuscated commands, no file writes outside the application's own config directory, and no execution of untrusted code. The `ls hmcl.json &gt; /dev/null 2&gt;&amp;1 || touch hmcl.json` pattern is slightly unconventional but effectively just creates a default config file if missing. Everything here is consistent with ordinary packaging and expected application launcher behavior.
</details>
<evidence>
</evidence>
<summary>
Standard HMCL launcher script; creates config dir and runs Java jar. Safe.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, hmcl.install...
+ Reviewed hmcl-launch-script. Status: SAFE -- Standard HMCL launcher script; creates config dir and runs Java jar. Safe.
LLM auditresponse for hmcl.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `hmcl.install` file contains only a `post_install()` function that prints informational messages to the terminal. It selects a language-specific message based on the `$LANG` environment variable and uses `printf` to display notices about Microsoft login credentials included in the HMCL build. There are no file operations, network requests, command execution, obfuscated code, or modifications to the system. The script is purely cosmetic output during package installation.

The mention of pre-configured Microsoft login credentials refers to the upstream HMCL application's authentication feature, and the script merely informs users how to override those credentials. This is a transparency notice from the package maintainer, not a supply-chain attack. No evidence of malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Install script only prints informational notices; no malicious behavior found.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed hmcl.install. Status: SAFE -- Install script only prints informational notices; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a Java application. It downloads the upstream HMCL source tarball from the official GitHub repository, verifies b2 checksums, builds with the project's Gradle wrapper, and installs the produced jar, icons, launch script, and desktop file into the package directory. No obfuscated code, unexpected network requests, or dangerous shell constructs such as eval or curl|bash are present.

The only notable item is the hardcoded Microsoft Azure application ID and client secret exported in build(). These are the maintainer's own credentials intended to enable HMCL's Microsoft login out of the box. While not malicious, exposing a client secret in a public PKGBUILD is a credential-hygiene problem: the secret is fully public and should be rotated or replaced with a more secure configuration. It does not exfiltrate user data or execute attacker-controlled code, so it is not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR Java package build; embedded Azure secret is a hygiene concern but not malicious.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR Java package build; embedded Azure secret is a hygiene concern but not malicious.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,688
  Completion Tokens: 3,731
  Total Tokens: 21,419
  Total Cost: $0.002289
  Execution Time: 28.26 seconds

Final Status: SAFE


No issues found.
