---
package: throne-bin
pkgver: 1.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16584
completion_tokens: 3269
total_tokens: 19853
cost: 0.002104102
execution_time: 40.08
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T00:01:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts; no security issues found.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: Throne.desktop
    status: safe
    summary: Standard launcher file, no security issues.
  - file: Throne.sh
    status: safe
    summary: Safe launcher script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned prebuilt package; no malicious or dangerous behavior found.
---

Materializing throne-bin from local mirror...
Materialized throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, array assignments, and a parameter expansion that is harmless (only modifies the version string by replacing lowercase letters with a hyphen and the matched letter; with pkgver=1.4.1 no lowercase letters are present, so no change). There are no top-level command substitutions, function calls, or any code that would execute during `makepkg --printsrcinfo`. No network requests, file operations, or execution of external commands occur in the global scope. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO file for the `throne-bin` AUR package. It contains only package metadata (name, version, architecture, dependencies, source URLs with SHA256 checksums, and conflicts). All source URLs point to the official GitHub releases of the project (github.com/throneproj/Throne). No executable code, obfuscation, suspicious network requests, or dangerous commands are present. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[1/6] Reviewing LICENSE, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
[1/6] Reviewing LICENSE, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch packaging repository. It excludes common build artifacts such as `pkg/`, `src/`, PNG files, ZIP archives, and `.tar.zst` package outputs. There is no executable code, no network activity, no obfuscation, and no file operations beyond normal ignore patterns used by AUR package maintainers. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore excluding build artifacts; no security issues found.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts; no security issues found.
[2/6] Reviewing LICENSE, PKGBUILD, Throne.desktop...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard license text supplied by Arch Linux Contributors. It contains no executable code, no network requests, no obfuscation, and no suspicious system operations. It is purely a legal notice granting permission to use, copy, modify, and distribute the software.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, PKGBUILD, Throne.desktop, Throne.sh...
[3/6] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop.org `.desktop` entry that defines a launcher for a GUI application called "Throne". It contains only static metadata (name, comment, icon, categories) and a simple `Exec=throne` directive that launches the binary by name. There are no obfuscated commands, no network requests, no suspicious file operations, and no deviation from normal packaging practice. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard launcher file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard launcher file, no security issues.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard application launcher/wrapper for the Throne binary. It performs routine operations within the user's own configuration directory (`$XDG_CONFIG_HOME/Throne`): cleaning up old symlinks and migrating config files from JSON to SQLite format. It then executes the packaged application binary from `/opt/Throne`. There are no network requests, obfuscated commands, or operations outside the application's own data scope. All file manipulations affect only the application's own data directory, and the binary run is from the expected package-installed location. No malicious behavior detected.
</details>
<evidence>

</evidence>
<summary>Safe launcher script with no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed Throne.sh. Status: SAFE -- Safe launcher script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a prebuilt binary application. The archives are downloaded from the project's official GitHub releases URL with pinned SHA256 checksums, and no `SKIP` checksums are used. There are no suspicious network operations, no encoded or obfuscated commands, and no use of `eval`, `base64`, `curl`, or `wget` at build or install time.

The `package()` function only installs the extracted application files, a launcher script, a desktop entry, and an icon into the appropriate directories. This is consistent with the package's stated purpose. The wrapper script `Throne.sh` is not shown in this file, so it should be reviewed separately, but nothing in this PKGBUILD indicates injected or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard pinned prebuilt package; no malicious or dangerous behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned prebuilt package; no malicious or dangerous behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,584
  Completion Tokens: 3,269
  Total Tokens: 19,853
  Total Cost: $0.002104
  Execution Time: 40.08 seconds

Final Status: SAFE


No issues found.
