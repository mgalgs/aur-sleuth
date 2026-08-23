---
package: enemy-territory
pkgver: 2.60b
pkgrel: 14
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 87639
completion_tokens: 5242
total_tokens: 92881
cost: 0.00883107
execution_time: 101.82
files_reviewed: 8
files_skipped: 0
date: 2026-06-19T10:00:22Z
file_verdicts:
  - file: enemy-territory.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: etded.service
    status: safe
    summary: Standard systemd service unit file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a legacy game; no malicious code detected.
  - file: etded.sh
    status: safe
    summary: Standard launch wrapper script, no security issues.
  - file: et.sh
    status: safe
    summary: Standard launcher script, no malicious behavior detected.
  - file: enemy-territory.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: "src/README FIRST ! IMPORTANT.txt"
    status: safe
    summary: README recommends dangerous sudo configuration.
  - file: src/et260b.x86_keygen_V03.run
    status: safe
    summary: Standard makeself installer, no evidence of malice.
---

Cloning https://aur.archlinux.org/enemy-territory.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2bqm6mb5...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2bqm6mb5
Analyzing enemy-territory AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2bqm6mb5) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD only contains variable definitions (pkgbase, pkgname, pkgver, etc.) and the `source` array with a URL and local filenames. There are no command substitutions, invocations of external programs, or other executable code at the top level. The `pkgver()` function is absent, so no code runs during sourcing beyond the variable assignments. The `source` array references an HTTP URL for the game data archive, which is a standard practice (though HTTP instead of HTTPS is a minor trust consideration, not a sign of malice). The `md5sums` are provided, not set to SKIP. No code in the global scope executes downloads or sends data anywhere. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>No dangerous top-level code; source fetch is standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code; source fetch is standard.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, etded.service...
[0/3] Reviewing PKGBUILD, etded.service, enemy-territory.install...
LLM auditresponse for enemy-territory.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script that only prints informational messages to the user. It does not execute any commands, make network requests, modify system files, or perform any other potentially dangerous operations. The content is purely advisory, reminding the user to obtain an etkey for the game.
</details>
<summary>Informational install script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, etded.service...
+ Reviewed enemy-territory.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for etded.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for starting the Enemy Territory dedicated server binary `/usr/bin/etded`. It contains only a description, an ExecStart path, and a WantedBy target. There are no network operations, no code execution beyond the intended binary, no obfuscation, and no unexpected system modifications. The file follows the expected format for AUR packaging and is not indicative of a supply-chain attack.
</details>
<summary>Standard systemd service unit file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed etded.service. Status: SAFE -- Standard systemd service unit file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a legacy game. It downloads the official upstream installer from a known mirror (filebase.trackbase.net) using HTTP, extracts it with `unzip` and a `--noexec` self-extractor (standard for extracting .run files without executing the embedded installer), and installs binaries, data, configuration files, and a systemd unit.

No malicious patterns are present: no obfuscated code, no unexpected network requests, no execution of untrusted remote code at build/install time, and no exfiltration of local data. The source archive has a provided md5sum for integrity verification.

The only minor concern is the use of plain HTTP for the source download, which is a trust/hygiene issue but not evidence of malice—this is common for older freeware games and does not constitute a supply-chain attack.
</details>
<summary>
Standard AUR PKGBUILD for a legacy game; no malicious code detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a legacy game; no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Decided to review 5 additional files: enemy-territory.desktop, et.sh, etded.sh, src/et260b.x86_keygen_V03.run, src/README FIRST ! IMPORTANT.txt
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing enemy-territory.desktop...
[0/5] Reviewing enemy-territory.desktop, et.sh...
[0/5] Reviewing enemy-territory.desktop, et.sh, etded.sh...
[0/5] Reviewing enemy-territory.desktop, et.sh, etded.sh, src/et260b.x86_keygen_V03.run...
[0/5] Reviewing enemy-territory.desktop, et.sh, etded.sh, src/et260b.x86_keygen_V03.run, src/README FIRST ! IMPORTANT.txt...
LLM auditresponse for etded.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `etded.sh` is a straightforward wrapper that changes to the game's installation directory and launches the `etded.x86` binary with any provided arguments. It contains no downloads, network requests, obfuscation, or unexpected file operations. This is standard packaging practice for launching a game binary.
</details>
<summary>Standard launch wrapper script, no security issues.</summary>
</security_assessment>

[1/5] Reviewing enemy-territory.desktop, et.sh, src/et260b.x86_keygen_V03.run, src/README FIRST ! IMPORTANT.txt...
+ Reviewed etded.sh. Status: SAFE -- Standard launch wrapper script, no security issues.
LLM auditresponse for et.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple launcher script for the Enemy Territory game. It changes the working directory to the installation path (`/usr/share/enemy-territory`) and then executes the game binary `et.x86` with all arguments passed to the script (`$*`). There are no network requests, no obfuscated code, no dangerous commands (e.g., `eval`, `curl`, `base64`), and no file operations outside the package's own directory. This matches standard packaging practices for launching a self-contained game binary.
</details>
<summary>Standard launcher script, no malicious behavior detected.</summary>
</security_assessment>

[2/5] Reviewing enemy-territory.desktop, src/et260b.x86_keygen_V03.run, src/README FIRST ! IMPORTANT.txt...
+ Reviewed et.sh. Status: SAFE -- Standard launcher script, no malicious behavior detected.
LLM auditresponse for enemy-territory.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `enemy-territory.desktop` is a standard Freedesktop.org desktop entry file. It contains only metadata describing the application (name, comment, icon, categories) and a simple `Exec=et` line that points to the game binary. There are no network requests, obfuscated code, dangerous commands, or any other indicators of malicious activity. The content is entirely benign and conforms to normal packaging practices for desktop applications.
</details>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing src/et260b.x86_keygen_V03.run, src/README FIRST ! IMPORTANT.txt...
+ Reviewed enemy-territory.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for README FIRST ! IMPORTANT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a multilingual README providing installation instructions for the Enemy Territory repackaged package. It does not contain executable code, download commands, or any automated actions. The primary security concern is the instruction to add the user to `/etc/sudoers` with full `ALL=(ALL) ALL` privileges, which is excessive for a game installation and poses a risk if followed. However, this is a documentation recommendation, not an automated modification—the file itself does not perform any system changes. There is no evidence of backdoors, data exfiltration, obfuscation, or other genuinely malicious behavior that would indicate a supply-chain attack. The instruction should be flagged as a poor security practice, but it falls short of marking the file as UNSAFE.
</details>
<summary>README recommends dangerous sudo configuration.</summary>
</security_assessment>

[4/5] Reviewing src/et260b.x86_keygen_V03.run...
+ Reviewed src/README FIRST ! IMPORTANT.txt. Status: SAFE -- README recommends dangerous sudo configuration.
LLM auditresponse for et260b.x86_keygen_V03.run:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Makeself self-extracting archive (built with Makeself 2.1.5) that contains a keygen utility for the game Enemy Territory. The visible shell script header performs standard extraction operations: verifying checksums (MD5, CRC), decompressing embedded gzip data via `dd` and `gzip -cd`, extracting with `tar`, and running an embedded `./setup.sh` script. No suspicious commands such as `curl`, `wget`, `eval`, `base64`, or obfuscated code are present in the visible portion. The binary tail appears to be legitimate gzip-compressed archive data. While the full contents of the archive cannot be inspected in this truncated view, the header shows no indicators of supply-chain compromise, data exfiltration, or execution of attacker-controlled code beyond the package's stated purpose (key generation). The AUR package is accordingly assessed as safe.
</details>
<summary>Standard makeself installer, no evidence of malice.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed src/et260b.x86_keygen_V03.run. Status: SAFE -- Standard makeself installer, no evidence of malice.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 87,639
  Completion Tokens: 5,242
  Total Tokens: 92,881
  Total Cost: $0.008831
  Execution Time: 101.82 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-enemy-territory.txt
Final Status: SAFE


No issues found.
