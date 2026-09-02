---
package: claude-desktop-extra
pkgver: 1.40609.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16659
completion_tokens: 3553
total_tokens: 20212
cost: 0.002105721590
execution_time: 360.43
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T03:06:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious code found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard package install hook, no malicious behavior.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `package()` function definition. No code executes at global/top-level scope beyond the standard assignments. There is no `pkgver()` function. The `source` array points to GitHub releases of the maintainer's own repository, which is standard. The `install` variable references an external file, but that file is only sourced during the packaging phase, which is skipped by `--nobuild`. No dangerous commands (eval, curl|bash, base64 decoding, etc.) appear anywhere in the file. The sha256sums are provided (not SKIP), though even SKIP would be acceptable for this narrow gate. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source tarballs and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>Safe for source fetch and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It declares the package name, version, description, dependencies, architecture support, and two source tarballs with explicit SHA-256 checksums (not SKIP). Both source URLs point to releases on the maintainer's own GitHub repository (`github.com/patrickjaja/claude-desktop-extra`), which is consistent with the package's stated upstream. There are no dangerous commands, obfuscated code, or unexpected network destinations. The file contains only declarative metadata and does not execute any code.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO with pinned checksums; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for a standard AUR package that provides a pre-patched build of Claude Desktop. It downloads a tarball from the maintainer's GitHub releases with pinned checksums (SHA256) for both architectures. The `package()` function performs only routine installation operations: copying the extracted application tree to `/usr/lib/claude-desktop/`, setting the SUID bit on the Chromium sandbox (expected for Electron apps), and installing a launcher script, a desktop entry, icons, and a license file. No suspicious commands (eval, curl, wget, base64 decode, git clone of unrelated repos, exfiltration) are present. The source URL points to the maintainer's own GitHub releases, which is the package's declared upstream. There is no evidence of injected malicious code, obfuscation, or unexpected system modifications. The only inherent trust concern is that the tarball is prebuilt by the maintainer rather than upstream, but this is the nature of many AUR packaging efforts and is explicitly described in the package description. The checksums pin the exact artifact, providing integrity verification.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious code found.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious code found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman `.install` hook for the `claude-desktop-extra` package. It performs routine system configuration tasks required by the application:

- Sets the chrome-sandbox SUID bit (standard for Chromium-based sandboxes).
- Installs an AppArmor profile that allows unprivileged user namespaces (common practice for Chrome/VS Code/1Password; gated on AppArmor 4.0 availability).
- Refreshes desktop database and icon caches.
- Prints informational messages about optional dependencies (Cowork VM) and a legacy repo name migration.

All file operations are scoped to the package's own paths (`/usr/lib/claude-desktop/`, `/etc/apparmor.d/claude-desktop`) and standard system caches. There is no network access, no obfuscated code, no execution of untrusted content, no exfiltration of data, and no unexpected system modifications. The script follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package install hook, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard package install hook, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,659
  Completion Tokens: 3,553
  Total Tokens: 20,212
  Total Cost: $0.002106
  Execution Time: 360.43 seconds

Final Status: SAFE


No issues found.
