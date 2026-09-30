---
package: openkingdoms-git
pkgver: 0.1.4.r2.gddcfbdb
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13222
completion_tokens: 1664
total_tokens: 14886
cost: 0.00077851200
execution_time: 30.61
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:15:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No security issues found in metadata.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore restricting AUR repo to packaging files only.
  - file: openkingdoms-git.install
    status: safe
    summary: Informational install script only; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

Materializing openkingdoms-git from local mirror...
Materialized openkingdoms-git
Analyzing openkingdoms-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only contains variable assignments and function definitions. No commands like eval, curl, wget, or command substitutions that could execute during sourcing are present. All code that performs operations (git describe, cmake, ctest, install, etc.) is inside functions (pkgver(), build(), check(), package()) which are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction poses no risk.
</details>
<evidence></evidence>
<summary>No dangerous code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the AUR package `openkingdoms-git`. It contains only package description, dependencies, and source location. The source points to the official upstream GitHub repository (`https://github.com/OpenKingdoms/OpenKingdoms.git`), which is expected. The `sha256sums = SKIP` entry is normal and required for VCS (`-git`) packages. There are no executable instructions, network requests, or obfuscated content. The file conforms to typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>No security issues found in metadata.</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues found in metadata.
[1/4] Reviewing .gitignore, PKGBUILD, openkingdoms-git.install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR git repository. It ignores all files by default and then whitelists the essential packaging files: `.gitignore`, `PKGBUILD`, `.SRCINFO`, and `*.install` files. The comment merely explains that build artifacts should not be committed to the AUR repository. There is no malicious behavior, no network activity, no code execution, and no obfuscation. This is normal and expected AUR packaging practice.
</details>
<evidence></evidence>
<summary>Benign .gitignore restricting AUR repo to packaging files only.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, openkingdoms-git.install...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore restricting AUR repo to packaging files only.
LLM auditresponse for openkingdoms-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`openkingdoms-git.install`). It defines `post_install()` and `post_upgrade()`, and the only action taken is printing an informational message to the user via `cat` with a here-document. The message explains how to point the game engine at a legally owned copy of Total Annihilation: Kingdoms and where settings are stored.

There are no dangerous operations: no network requests, no downloading or executing external code, no file modifications outside normal messaging, no obfuscation, and no use of `eval`, `base64`, `curl`, `wget`, or similar commands. The script is consistent with ordinary packaging practice and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Informational install script only; no malicious behavior detected.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed openkingdoms-git.install. Status: SAFE -- Informational install script only; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging file for the OpenKingdoms open-source engine. It fetches the upstream source via git from the project's own GitHub repository, builds with cmake and ninja, and installs the binary, a symlink, license, documentation, and a desktop file. There are no unusual network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or data exfiltration attempts. The checksums are SKIP, which is normal and required for VCS packages. All operations are confined to the expected packaging workflow and the package's own upstream source.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,222
  Completion Tokens: 1,664
  Total Tokens: 14,886
  Total Cost: $0.000779
  Execution Time: 30.61 seconds

Final Status: SAFE


No issues found.
