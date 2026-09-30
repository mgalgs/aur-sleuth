---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15953
completion_tokens: 7102
total_tokens: 23055
cost: 0.002672091142
execution_time: 177.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:09:40Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no malicious content.
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard desktop entry file; no suspicious behavior or security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious code; standard AUR packaging for an AppImage.
  - file: ffxiv-teamcraft
    status: safe
    summary: Standard AppImage launcher script with no malicious behavior detected; SAFE.
  - file: ffxiv-teamcraft.install
    status: safe
    summary: Safe packaging script; creates service user and manages app directory permissions.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level (global) scope consists only of ordinary variable assignments (`pkgname`, `pkgver`, `source`, `sha1sums`, `install`, `options`) and a definition of `package()`. There is no top-level command substitution, `eval`, `curl`/`wget` invocation, base64 decoding, or file-modifying statement that would execute when `makepkg --printsrcinfo` sources the file.

The `package()` function contains only routine `install` commands writing into `"$pkgdir"` and is not executed by `--printsrcinfo`. The `source` URL points to the package's own upstream GitHub releases, and the checksum status of the artifacts is irrelevant for this narrow gate since no sources are downloaded or verified while generating `.SRCINFO`. There is no injected or obfuscated code anywhere in the file.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe; function bodies are not executed by --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe; function bodies are not executed by --printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a single line that ignores AppImage files matching the pattern `FFXIV-Teamcraft*.AppImage`. This is a standard practice for version control to exclude build artifacts or downloaded binaries. There is no obfuscation, network requests, system modifications, or any other malicious behavior. The file is benign and purely a configuration for Git.</details>
<evidence></evidence>
<summary>Standard .gitignore file; no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop, PKGBUILD...
[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no malicious content.
LLM auditresponse for FFXIV-Teamcraft.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the FFXIV Teamcraft application. It defines a launcher that executes `/usr/bin/ffxiv-teamcraft` with no arguments, environment variables, or unusual flags. There are no network requests, downloads, encoded commands, file operations, or modifications to system configuration. The `StartupWMClass` field is a normal heuristic used to associate the application window with the desktop launcher. Nothing in this file deviates from standard packaging practice or indicates malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no suspicious behavior or security concerns found.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard desktop entry file; no suspicious behavior or security concerns found.
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file containing package description, version, source URLs, and checksums. All sources point to the official `ffxiv-teamcraft` GitHub repository (`github.com/ffxiv-teamcraft/ffxiv-teamcraft`), which is expected for this package. There is no executable code, no suspicious network destinations, no obfuscation, and no instructions that could be executed. The checksums are provided and are not set to SKIP. This file is purely descriptive and contains no malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft, ffxiv-teamcraft.install...
[3/6] Reviewing PKGBUILD, ffxiv-teamcraft, ffxiv-teamcraft.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing a pre-built AppImage. The source is fetched directly from the official GitHub releases of ffxiv-teamcraft with a pinned version and SHA1 checksums (not SKIP). The `package()` function performs only expected operations: installing wrapper scripts, the AppImage binary, and a desktop file into the appropriate directories. No network requests, obfuscated code, or dangerous commands are present. The file shows no signs of supply-chain attack; it is a conventional, well-structured PKGBUILD.
</details>
<evidence></evidence>
<summary>No malicious code; standard AUR packaging for an AppImage.</summary>
</security_assessment>

[4/6] Reviewing ffxiv-teamcraft, ffxiv-teamcraft.install...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; standard AUR packaging for an AppImage.
LLM auditresponse for ffxiv-teamcraft:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script for an AppImage application. It defines a fixed path to the AppImage, conditionally adds the executable bit if missing (the comment explains the user is in the `teamcraft` group with write ACLs on the directory), and then launches the AppImage with `exec`, passing through all arguments safely quoted.

There is no malicious behavior: no network requests, no downloads, no obfuscation, no base64/hex/octal decoding, no `eval`, no file operations outside the application's own directory, and no tampering with unrelated system files. The `chmod +x` is a benign, standard fix for a permission bit and is consistent with the package's stated purpose. The use of quoted variables and `"$@"` is proper and does not introduce command injection. The script is fully consistent with ordinary AUR packaging practice and contains no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage launcher script with no malicious behavior detected; SAFE.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Standard AppImage launcher script with no malicious behavior detected; SAFE.
LLM auditresponse for ffxiv-teamcraft.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package install script for a self-updating application. It creates a dedicated system user and group (teamcraft), assigns ownership of the application directory to that user, and applies ACLs so the teamcraft group can read/write/execute files under /opt/ffxiv-teamcraft, including inherited default ACLs for new files. It then prints instructions for the user to add their account to the teamcraft group for the self-update feature.

No malicious patterns are present: there are no network requests, no downloads, no encoded or obfuscated commands, and no file operations outside the package's own directory. The recursive chown and setfacl commands apply only to /opt/ffxiv-teamcraft and do not follow symlinks, so they cannot affect unrelated paths. The group-writable application directory is a trust consideration — any member of the teamcraft group could modify application files — but it is intentional application design required for self-update, clearly communicated to the user, and not injected malicious behavior.
</details>
<evidence></evidence>
<summary>Safe packaging script; creates service user and manages app directory permissions.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Safe packaging script; creates service user and manages app directory permissions.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,953
  Completion Tokens: 7,102
  Total Tokens: 23,055
  Total Cost: $0.002672
  Execution Time: 177.14 seconds

Final Status: SAFE


No issues found.
