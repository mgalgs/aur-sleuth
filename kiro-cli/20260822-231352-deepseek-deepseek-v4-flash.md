---
package: kiro-cli
pkgver: 2.19.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 26227
completion_tokens: 3928
total_tokens: 30155
cost: 0.00195159258
execution_time: 71.11
files_reviewed: 10
files_skipped: 0
files_unauditable: 4
unpinned_sources: 0
date: 2026-08-22T23:13:51Z
file_verdicts:
  - file: Kiro-LICENSE.txt
    status: safe
    summary: License text only, no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums and no malicious code.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: REUSE metadata file; no executable or malicious content.
  - file: src/kirocli/README
    status: safe
    summary: Plain documentation file, no code or threats.
  - file: src/kirocli/BUILD-INFO
    status: safe
    summary: Build metadata file with no executable or suspicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no security issues.
  - file: src/kirocli/bin/qchat
    status: safe
    summary: Wrapper script, no malicious content or behavior.
  - file: src/kirocli/install.sh
    status: safe
    summary: Installation script with no signs of malicious behavior.
  - file: src/kirocli/bin/q
    status: safe
    summary: Simple wrapper script with no suspicious behavior.
---

Cloning https://aur.archlinux.org/kiro-cli.git...
Cloned kiro-cli
Analyzing kiro-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments in global scope, with no command substitutions, functions, or code that executes when sourced. No `pkgver()` function is defined that might run arbitrary code. The source URLs point to the official Kiro CLI download domain (`prod.download.cli.kiro.dev`), which is consistent with the package's stated upstream. Checksums are provided and pinned for each architecture. There is no malicious top-level code, no unexpected network requests, and no obfuscation. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will safely fetch and extract the upstream tarballs for auditing without executing any build or install logic.
</details>
<summary>Safe: no malicious top-level code; standard upstream tarball downloads.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code; standard upstream tarball downloads.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Kiro-LICENSE.txt...
LLM auditresponse for Kiro-LICENSE.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license document (Kiro-LICENSE.txt) from the upstream Kiro project. It contains standard copyright, licensing terms, and open source attribution references. There is no executable code, no network requests, no file system modifications, and no obfuscated or encoded content. The URLs mentioned are for documentation purposes only. No security issues are present.
</details>
<summary>License text only, no executable or malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed Kiro-LICENSE.txt. Status: SAFE -- License text only, no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for a binary package. The source tarballs are downloaded from the official AWS domain (`prod.download.cli.kiro.dev`) with pinned SHA-256 and BLAKE2 checksums for each architecture. The license file is included locally. The `prepare()` function performs a benign `sed` substitution to adjust installation paths from `$HOME/.local/bin/kiro-cli` to `/usr/bin/kiro-cli` in helper scripts (`q` and `qchat`), which is a normal packaging adjustment. The `build()` function runs the binary only to generate shell completions, and the `package()` installs the binaries, completions, and license into standard locations. There are no obfuscated commands, network requests during build/package, unexpected file operations, or any other indicators of malicious intent.
</details>
<summary>Standard binary PKGBUILD with pinned checksums and no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums and no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 4 compiled/archived file(s) cannot be audited as text and were not reviewed (kiro-cli-2.19.1-x86_64.tar.zst, src/kirocli/bin/kiro-cli-term, src/kirocli/bin/kiro-cli and 1 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 8 additional files: .nvchecker.toml, LICENSE, REUSE.toml, src/kirocli/README, src/kirocli/install.sh, src/kirocli/BUILD-INFO, src/kirocli/bin/qchat, src/kirocli/bin/q
Reviewing additional files...
Reviewing additional files...
[0/8] Reviewing .nvchecker.toml...
[0/8] Reviewing .nvchecker.toml, LICENSE...
[0/8] Reviewing .nvchecker.toml, LICENSE, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text software license (ISC-style). It contains no executable code, no network requests, no obfuscation, and no instructions. There is nothing suspicious or malicious.
</details>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .nvchecker.toml, LICENSE, REUSE.toml, src/kirocli/README...
[1/8] Reviewing .nvchecker.toml, REUSE.toml, src/kirocli/README...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE specification configuration (REUSE.toml) used to declare copyright and license metadata for files in the repository. It contains only path lists and SPDX copyright/license identifiers. There are no commands, network operations, file modifications, obfuscated content, or any other executable behavior. It is consistent with standard packaging and repository hygiene practices.
</details>
<summary>
REUSE metadata file; no executable or malicious content.</summary>
</security_assessment>

[1/8] Reviewing .nvchecker.toml, REUSE.toml, src/kirocli/README, src/kirocli/install.sh...
[2/8] Reviewing .nvchecker.toml, src/kirocli/README, src/kirocli/install.sh...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE metadata file; no executable or malicious content.
LLM auditresponse for README:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text README file. It contains no executable code, obfuscation, network requests, or system modifications. It simply instructs the user to run an install.sh script and provides SSH configuration notes. This is standard documentation and poses no security risk.
</details>
<summary>Plain documentation file, no code or threats.</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, src/kirocli/README, src/kirocli/install.sh, src/kirocli/BUILD-INFO...
[3/8] Reviewing .nvchecker.toml, src/kirocli/install.sh, src/kirocli/BUILD-INFO...
+ Reviewed src/kirocli/README. Status: SAFE -- Plain documentation file, no code or threats.
LLM auditresponse for BUILD-INFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `BUILD-INFO` contains only build metadata (date, hash, target triple, version) and does not include any executable code, network requests, or suspicious content. It is a standard metadata file commonly generated by build systems and poses no security risk.
</details>
<summary>Build metadata file with no executable or suspicious content.</summary>
</security_assessment>

[3/8] Reviewing .nvchecker.toml, src/kirocli/install.sh, src/kirocli/BUILD-INFO, src/kirocli/bin/qchat...
[4/8] Reviewing .nvchecker.toml, src/kirocli/install.sh, src/kirocli/bin/qchat...
+ Reviewed src/kirocli/BUILD-INFO. Status: SAFE -- Build metadata file with no executable or suspicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for automating version checks. It instructs nvchecker to fetch a JSON manifest from the official upstream domain (`prod.download.cli.kiro.dev`) and extract the version using a jq filter. There is no code execution, encoded payloads, or unexpected network destinations. The use of nvchecker is a common packaging practice and does not introduce any supply-chain risk.
</details>
<summary>Standard version checker config, no security issues.</summary>
</security_assessment>

[4/8] Reviewing .nvchecker.toml, src/kirocli/install.sh, src/kirocli/bin/qchat, src/kirocli/bin/q...
[5/8] Reviewing src/kirocli/install.sh, src/kirocli/bin/qchat, src/kirocli/bin/q...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no security issues.
LLM auditresponse for qchat:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple wrapper that executes `kiro-cli` from the user's local bin directory with a `--show-legacy-warning chat` flag, forwarding any additional arguments. It contains no network requests, obfuscated code, dangerous commands, or any behavior that deviates from standard packaging practices. The script is entirely benign and serves only to invoke the main application with a specific argument.
</details>
<summary>Wrapper script, no malicious content or behavior.</summary>
</security_assessment>

[6/8] Reviewing src/kirocli/install.sh, src/kirocli/bin/q...
+ Reviewed src/kirocli/bin/qchat. Status: SAFE -- Wrapper script, no malicious content or behavior.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard installation routine for the kiro-cli application. It reads a BUILD-INFO file to determine the target architecture, verifies OS and glibc compatibility, then installs pre-compiled binaries to `/usr/local/bin/` or `~/.local/bin/` depending on an environment variable. It optionally runs the application's own setup commands (`integrations install dotfiles` and `setup`). There are no network requests, obfuscated code, eval statements, file exfiltration, or any operations that deviate from expected packaging practices. The script follows standard shell scripting conventions and does not exhibit any signs of malicious code injection.
</details>
<summary>Installation script with no signs of malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing src/kirocli/bin/q...
+ Reviewed src/kirocli/install.sh. Status: SAFE -- Installation script with no signs of malicious behavior.
LLM auditresponse for q:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a minimal wrapper that invokes the `kiro-cli` binary from the user's local bin directory (`$HOME/.local/bin/kiro-cli`) with a `--show-legacy-warning` flag and passes along all arguments. There is no obfuscated code, no network requests, no unusual encoding, and no attempt to exfiltrate data or execute arbitrary commands. The script merely runs a package component located in the standard user-local path, which is consistent with AUR packaging practices. No evidence of any malicious or dangerous behavior is present.
</details>
<summary>Simple wrapper script with no suspicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed src/kirocli/bin/q. Status: SAFE -- Simple wrapper script with no suspicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,227
  Completion Tokens: 3,928
  Total Tokens: 30,155
  Total Cost: $0.001952
  Execution Time: 71.11 seconds

Final Status: SAFE


No issues found.
