---
package: mthds
pkgver: 0.23.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 12555
completion_tokens: 1898
total_tokens: 14453
cost: 0.00130023152
execution_time: 91.65
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T07:49:23Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Routine nvchecker config for npm package; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR npm package, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
---

Cloning https://aur.archlinux.org/mthds.git...
Cloned mthds
Analyzing mthds AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines static variables and a single source tarball from the official npm registry (`registry.npmjs.org`). There is no `pkgver()` function or top-level command substitution that would execute code during sourcing. The `source` array points to a legitimate npm package and includes a `b2sums` checksum (not SKIP). Downloading and extracting this tarball does not involve any code execution from the archive itself. No dangerous operations (eval, curl|bash, base64 decoding, etc.) are present in the global scope. The `package()` function contains installation logic but is not executed during the requested commands (`--nobuild --noprepare`). Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe PKGBUILD with standard npm package source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe PKGBUILD with standard npm package source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that ignores all files except those explicitly allowed (`.nvchecker.toml`, `changelog.md`, `.gitignore`, `PKGBUILD`, `.SRCINFO`). This is a common practice for AUR packages hosted in version control, where only essential packaging files are tracked. There is no executable code, no network operations, no obfuscation, and no system modification. The file is benign and serves only to control Git's tracking behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple nvchecker configuration for tracking upstream releases of the npm package `mthds`. It declares the `source` as `npm` and specifies the package name `mthds`. There are no network endpoints specified beyond the implicit npm registry lookup, no shell commands, no file operations, no obfuscation, and no executable content. This is a routine, minimal version-checking configuration used by AUR maintainers to monitor upstream releases.
</details>
<evidence>
</evidence>
<summary>
Routine nvchecker config for npm package; no security issues found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Routine nvchecker config for npm package; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux Node.js packaging guidelines. The source is fetched from the official npm registry with a hardcoded b2sum checksum for integrity verification. The package() function performs routine operations: npm install, ownership fixes, removal of build-time references, and creation of symlinks for documentation and license files. No obfuscated commands, unexpected network requests, or tampering with system files outside the package scope are present. All operations are confined to $pkgdir and are standard for AUR packages.
</details>
<evidence></evidence>
<summary>Standard AUR npm package, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR npm package, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata for an AUR package. It specifies the package name, version, description, dependencies, and source location. The source is from the official npm registry (registry.npmjs.org) with a pinned b2sum checksum, which is a standard and trustworthy practice. There are no commands, scripts, or any executable content in this file. It contains no obfuscated code, no network requests to unexpected hosts, and no file manipulation instructions. The file follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,555
  Completion Tokens: 1,898
  Total Tokens: 14,453
  Total Cost: $0.001300
  Execution Time: 91.65 seconds

Final Status: SAFE


No issues found.
