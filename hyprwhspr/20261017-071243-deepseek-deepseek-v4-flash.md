---
package: hyprwhspr
pkgver: 1.49.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15023
completion_tokens: 1861
total_tokens: 16884
cost: 0.001705795
execution_time: 30.78
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T07:12:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: hyprwhspr.install
    status: safe
    summary: Standard install script with informational messages only.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with pinned checksum and no suspicious operations.
---

Materializing hyprwhspr from local mirror...
Materialized hyprwhspr
Analyzing hyprwhspr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (name, version, dependencies, source array, checksums) and two function definitions (`build()` and `package()`). No top-level command substitutions, `eval`, `curl`, `wget`, or any code that executes during sourcing are present. The `install` file reference and `sha256sums` are normal. Running `makepkg --printsrcinfo` will merely source the global scope, which is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package. It lists typical build artifacts and temporary files that should not be tracked in version control. There is no code, network requests, or any instructions; it is purely a configuration file for Git. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool used to monitor upstream releases. It specifies a git source pointing to the official GitHub repository `https://github.com/goodroot/hyprwhspr.git` with a version prefix `v`. There is no executable code, no obfuscation, no unexpected network destinations, and no data exfiltration. This is a benign configuration file consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard version checker config, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no malicious content.
[2/5] Reviewing .SRCINFO, PKGBUILD, hyprwhspr.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR package metadata file (`.SRCINFO`) for `hyprwhspr`, a system-wide speech-to-text tool. It declares the package name, version, license (MIT), dependencies (Python libraries and common Linux utilities), and a source tarball from the project's own GitHub repository. The SHA256 checksum is provided and pinned. There is no executable code, no network fetching beyond the declared source, no obfuscation, and no suspicious commands. The file is purely descriptive metadata and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, hyprwhspr.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for hyprwhspr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hyprwhspr.install` contains only standard Arch Linux `post_install`, `post_upgrade`, and `post_remove` functions that display informational messages to the user via `cat` with a heredoc. There are no commands that execute binaries, no network access, no file modifications, and no obfuscated code. The messages encourage the user to run `hyprwhspr setup` manually and note that user data directories persist after removal. This is typical and benign packaging behavior.
</details>
<evidence></evidence>
<summary>Standard install script with informational messages only.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed hyprwhspr.install. Status: SAFE -- Standard install script with informational messages only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices and contains no evidence of malicious code. The source is fetched over HTTPS from the project's official GitHub repository with a pinned sha256 checksum (not SKIP). All operations are routine packaging steps: copying files into `/usr/lib/hyprwhspr`, installing a systemd user service, creating a wrapper script via sed path substitution, and installing documentation and license files. There are no suspicious network requests, obfuscated commands, or unexpected system modifications. The `validate-package-payload.py` call is a standard upstream validation script run on the packaged payload, not an injection vector.
</details>
<evidence></evidence>
<summary>Clean, standard PKGBUILD with pinned checksum and no suspicious operations.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with pinned checksum and no suspicious operations.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,023
  Completion Tokens: 1,861
  Total Tokens: 16,884
  Total Cost: $0.001706
  Execution Time: 30.78 seconds

Final Status: SAFE


No issues found.
