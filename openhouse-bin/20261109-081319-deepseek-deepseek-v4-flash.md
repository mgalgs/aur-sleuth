---
package: openhouse-bin
pkgver: 1.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18786
completion_tokens: 3730
total_tokens: 22516
cost: 0.002388386
execution_time: 33.85
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T08:13:19Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: openhouse-bin.install
    status: safe
    summary: No malicious code; only informational echo statements.
  - file: openhouse-uninstall
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: openhouse-install
    status: safe
    summary: Innocuous wrapper script, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: symlink-install.patch
    status: safe
    summary: Patch uses symlink instead of copy; no malicious behavior.
---

Materializing openhouse-bin from local mirror...
Materialized openhouse-bin
Analyzing openhouse-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations in its global scope. No code that executes during sourcing (e.g., command substitutions, eval, or direct calls) is present. The `source` array uses standard HTTPS URLs to the project's own GitHub releases, and the `sha256sums` are provided (not SKIP). All functional logic resides inside `prepare()` and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, running this command poses no risk.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license, containing only copyright and permission text. It contains no code, commands, or instructions of any kind. There is no network activity, file manipulation, or obfuscation. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, openhouse-bin.install...
[1/7] Reviewing .SRCINFO, PKGBUILD, openhouse-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a plain metadata descriptor for an AUR package. It contains only package declarations (name, version, dependencies, source URLs, checksums). No executable code, scripts, or suspicious operations are present. All source URLs point to the project's own GitHub releases. Checksums are provided and pinned (none are set to SKIP). There is no evidence of supply-chain attack, obfuscation, or malicious intent. The file is standard and benign.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, openhouse-bin.install, openhouse-install...
[2/7] Reviewing PKGBUILD, openhouse-bin.install, openhouse-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for openhouse-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `openhouse-bin.install` contains only standard post-installation shell functions that print informational messages to the user. No dangerous commands (eval, curl, wget, base64, etc.), no file operations, no network requests, and no obfuscation are present. The messages simply advise the user on how to activate or deactivate the openhouse driver for SteamVR/Monado. This is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>No malicious code; only informational echo statements.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, openhouse-bin.install, openhouse-install, openhouse-uninstall...
[3/7] Reviewing PKGBUILD, openhouse-install, openhouse-uninstall...
+ Reviewed openhouse-bin.install. Status: SAFE -- No malicious code; only informational echo statements.
LLM auditresponse for openhouse-uninstall:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that executes `/usr/lib/openhouse/uninstall.sh` with any arguments passed to it. The script does not perform any network operations, obfuscation, or system modifications outside of its own directory. The path `/usr/lib/openhouse/` is standard for package files, and delegating to a separate uninstall script is normal packaging practice. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, openhouse-install...
+ Reviewed openhouse-uninstall. Status: SAFE -- Standard wrapper script, no malicious behavior.
[4/7] Reviewing PKGBUILD, openhouse-install, symlink-install.patch...
LLM auditresponse for openhouse-install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal shell wrapper that simply re‑execs another script (`/usr/lib/openhouse/install.sh`) with the original command‑line arguments.  
It contains no network requests, obfuscated code, dangerous command substitutions, or any operations that deviate from standard packaging practices.  
The `&amp;quot;` entities are harmless encoding artifacts and do not change the benign nature of the script.
</details>
<evidence>
</evidence>
<summary>Innocuous wrapper script, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, symlink-install.patch...
+ Reviewed openhouse-install. Status: SAFE -- Innocuous wrapper script, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a pre-built binary package. It downloads a release tarball from the project's official GitHub repository with a pinned SHA-256 checksum. The prepare() applies a patch, and package() installs the driver files, helper scripts, and licenses. There are no obfuscated commands, unexpected network requests, or exfiltration attempts. The references to `openhouse-install` and `openhouse-uninstall` scripts are external files not included in this audit, but their presence is normal for a package that provides install/uninstall helpers. No evidence of a supply-chain attack is found within the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[6/7] Reviewing symlink-install.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for symlink-install.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that replaces a copy-and-move installation of a shared library (`driver_lighthouse.so`) with a symbolic link (`ln -sfn`). The change is consistent with ordinary packaging techniques (e.g., linking to a build directory to avoid duplicating files). There are no network operations, obfuscated commands, data exfiltration, or execution of untrusted code. The symlink target (`$here/driver_lighthouse.so`) points to the package's own file, not an external resource. The patch does not introduce any behavior that deviates from standard packaging practices or indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>Patch uses symlink instead of copy; no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed symlink-install.patch. Status: SAFE -- Patch uses symlink instead of copy; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,786
  Completion Tokens: 3,730
  Total Tokens: 22,516
  Total Cost: $0.002388
  Execution Time: 33.85 seconds

Final Status: SAFE


No issues found.
