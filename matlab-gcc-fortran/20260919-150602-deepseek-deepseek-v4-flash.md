---
package: matlab-gcc-fortran
pkgbase: matlab
pkgver: R2026a+26.1.0.3346908
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36099
completion_tokens: 4901
total_tokens: 41000
cost: 0.00195354656
execution_time: 90.04
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:06:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no executable content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard configuration file for version checking; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate MATLAB packaging via official MathWorks MPM tool.
  - file: matlab.install
    status: safe
    summary: Minimal install script printing activation hint only; no security concerns.
---

matlab-gcc-fortran is built from matlab
Materializing matlab-gcc-fortran from local mirror...
Materialized matlab-gcc-fortran
Analyzing matlab-gcc-fortran AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level global scope contains only standard variable declarations (including product list arrays), default value assignments using `: "${var:=default}"`, and a `for` loop that constructs `provides` and `conflicts` arrays from the product list. All operations are string manipulation using built-in shell expansions and safe commands (`printf`, `tr`). There are no network requests, command substitutions that download or execute code, obfuscated commands, or any other dangerous top-level operations. The only syntax concern is the use of `local` outside a function, which may cause a bash error but does not introduce any security risk. All potentially dangerous code (network downloads, system modifications) is confined to the `prepare()`, `build()`, and `package_*()` functions, which are not executed during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Safe to source; no top-level dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source; no top-level dangerous code.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux .SRCINFO metadata file for the matlab-gcc-fortran package. It contains only declarative fields such as pkgdesc, depends, optdepends, provides, conflicts, and version information. There are no executable instructions, network requests, file operations, system modifications, obfuscated code, or any other behavior that could be considered malicious. The content conforms entirely to expected AUR packaging practices. No evidence of a supply chain attack is present.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no executable content.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no executable content.
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that monitors upstream releases. It defines how to check for new MATLAB container image versions from Docker Hub (`docker.io/mathworks/matlab`) using a regex pattern. The file contains only configuration directives; no code execution, network exfiltration, or obfuscation is present. Commented-out alternative sources are standard maintainer notes and do not present a security concern. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard configuration file for version checking; no security issues.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, matlab.install...
[2/5] Reviewing .gitignore, PKGBUILD, matlab.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard configuration file for version checking; no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file commonly used in AUR git repositories. It ignores all files by default (`*`) and then whitelists only the essential AUR packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and any `.install` files. There is no executable code, no network requests, no obfuscation, and no system modifications. The file is purely a pattern file for git to ignore non-essential files in the repository. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, matlab.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch packaging script for MATLAB that downloads and installs the software using MathWorks' official MPM tool. All network operations target MathWorks' own servers (via `matlab-mpm download`). There are no obfuscated commands, no eval, no base64 decoding, no unexpected network requests, and no exfiltration or backdoor mechanisms. The use of `inotify-tools` and `tail` for progress monitoring is benign. The patchelf command to add `libleancrypto.so` is documented as a GnuTLS compatibility fix and targets a binary within MATLAB's own installation; it does not load untrusted code. Directory permissions 777 are overly permissive but are consistent with typical MATLAB installation requirements and do not constitute a supply-chain attack. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate MATLAB packaging via official MathWorks MPM tool.</summary>
</security_assessment>

[4/5] Reviewing matlab.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate MATLAB packaging via official MathWorks MPM tool.
LLM auditresponse for matlab.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal Arch Linux package install script (`.install` file) containing only `post_install()` and `post_upgrade()` hooks. Both functions exclusively use `echo` to print informational text to the terminal advising the user that they may need to activate MATLAB with the `MathWorksProductAuthorizer` command. The `\$` in the second echo is a standard shell escape so the dollar sign is printed literally as a usage hint rather than being expanded as a variable.

No network requests, file operations, command substitution, obfuscation, code execution, or system modifications occur anywhere in the file. The comment link to the Arch BBS forum is a normal practice for documenting upstream guidance. There is no exfiltration, no downloading or executing of remote content, and no deviation from standard packaging practices. The script merely displays a post-install message.
</details>
<evidence>
</evidence>
<summary>Minimal install script printing activation hint only; no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed matlab.install. Status: SAFE -- Minimal install script printing activation hint only; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,099
  Completion Tokens: 4,901
  Total Tokens: 41,000
  Total Cost: $0.001954
  Execution Time: 90.04 seconds

Final Status: SAFE


No issues found.
