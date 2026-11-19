---
package: throne-bin
pkgver: 1.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 16580
completion_tokens: 5294
total_tokens: 21874
cost: 0.00244512
execution_time: 35.55
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:04:49Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream sources, no malicious behavior.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior.
  - file: Throne.sh
    status: safe
    summary: Clean launcher script, no malicious code.
---

Materializing throne-bin from local mirror...
Materialized throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments (package metadata, source URLs, checksums) and function definitions (`package()` function). No top-level command substitutions or code execution constructs (such as `$()`, `` ` ``, `eval`, `curl`, or `wget`) are present in the global scope. The `source` array and URL strings are simple variable assignments with shell variable expansion consistent with standard PKGBUILD conventions. 

The `package()` function content is explicitly out of scope for this gate, as `makepkg --printsrcinfo` does not execute function bodies. Therefore, running `makepkg --printsrcinfo` on this file does not pose a security risk.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (a permissive license from "Arch Linux Contributors"). It contains no executable code, network requests, obfuscated content, file operations, or system modifications. There is nothing in this file that could compromise a system or tamper with the build process.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
[The file is a standard `.gitignore` for an AUR package build directory. It only lists patterns to ignore (e.g., `pkg/`, `src/`, `*.zip`). There is no code, no network requests, no obfuscation, no file operations, and no potential for supply-chain attacks. It is entirely benign and typical for packaging workflows.]
</details>
<evidence>
</evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, Throne.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the upstream release archive from the official GitHub repository (`https://github.com/throneproj/Throne/releases/download`) and verifies it with fixed SHA-256 checksums for all architectures. The `package()` function only installs the extracted binaries, a launcher script, desktop file, and icon into the appropriate directories under `$pkgdir`. There are no obfuscated commands, no unexpected network calls, no attempts to exfiltrate data, and no modification of system files outside the application's own scope. The use of `find` with `-printf` is slightly unusual but harmless and consistent with installing extra files from the extracted package. No supply-chain attack indicators found.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with verified upstream sources, no malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, Throne.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream sources, no malicious behavior.
[3/6] Reviewing .SRCINFO, Throne.desktop, Throne.sh...
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (Throne.desktop). It contains only metadata fields such as Name, Exec, Icon, and Categories. There is no executable code, no network requests, no obfuscation, and no dangerous operations. The Exec field simply runs the "throne" command, which is the expected binary for the application. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `throne-bin` package. It describes a binary release from the project's official GitHub repository (`https://github.com/throneproj/Throne`). The sources are downloaded over HTTPS, and explicit SHA256 checksums are provided for all artifacts (`.desktop`, `.sh`, and the architecture-specific `.zip` archives), ensuring integrity. There is no obfuscated code, no dangerous commands (such as `eval`, `curl | bash`, or `base64` decoding), and no attempts at data exfiltration. The file functions purely as metadata for the Arch Build System and performs no actions on its own.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing Throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script for the Throne application. It sets the configuration directory based on `XDG_CONFIG_HOME` or `$HOME/.config`, performs two routine maintenance operations (removing stale symlinks to geo assets and backing up old JSON configs to SQLite), and then launches the actual application binary from `/opt/Throne`. All file operations are confined to the application's own configuration directory under the user's home. There are no network requests, no execution of external code, no obfuscation, and no attempts to access sensitive system data outside its scope. The script follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Clean launcher script, no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed Throne.sh. Status: SAFE -- Clean launcher script, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,580
  Completion Tokens: 5,294
  Total Tokens: 21,874
  Total Cost: $0.002445
  Execution Time: 35.55 seconds

Final Status: SAFE


No issues found.
