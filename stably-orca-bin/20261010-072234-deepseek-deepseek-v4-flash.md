---
package: stably-orca-bin
pkgver: 1.4.224
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13536
completion_tokens: 1845
total_tokens: 15381
cost: 0.0025186176
execution_time: 43.41
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T07:22:33Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper script with no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this PKGBUILD, the top-level scope consists solely of variable and array definitions: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `options`, `source`, `sha256sums`, and `noextract`. There are no command substitutions, no `eval`, no `curl`/`wget` calls, and no executable statements at global scope.

The `prepare()` and `package()` functions do contain file operations and AppImage extraction, but those functions are not invoked by `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. They should be reviewed in the full audit, but they cannot execute during this metadata parse step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only variable definitions; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only variable definitions; no malicious code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the stably-orca-bin package. It contains only metadata (Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, StartupWMClass) and no executable code, network requests, obfuscation, or suspicious file operations. The Exec line launches the package's own binary with `%U` for URL handling, which is standard practice.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package that downloads a prebuilt AppImage from the official GitHub releases of Stably AI Orca. The source is pinned to a specific version (`v1.4.224`) and checksums are provided for all three sources. No checksums are set to SKIP. The prepare() function merely extracts the AppImage archive, which is a normal step for AppImage-based packages. The package() function installs the extracted files into the package directory and sets appropriate permissions. There are no unexpected network requests, no obfuscated or encoded commands, no use of `eval`, `curl`, `wget`, or other dangerous operations outside the standard packaging workflow. The file follows typical AUR packaging practices and does not contain any evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and checksums.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It lists the package name, version, dependencies, source URLs, and SHA256 checksums. The sources are downloaded from the project's official GitHub releases (AppImage) and local files (shell script and desktop entry). All three sources have pinned checksums, ensuring integrity. There are no executable commands, obfuscated code, suspicious network requests, or any indicators of malicious activity. This file contains only declarative package metadata and adheres to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper that sets the `APPDIR` environment variable and launches the application's `AppRun` binary with appropriate flags to disable Vulkan. It performs no network requests, no downloads, no obfuscated commands, and does not modify any system files outside its own scope. The code is transparent and follows normal packaging practices for distributing prebuilt binaries.
</details>
<evidence></evidence>
<summary>Safe wrapper script with no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper script with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,536
  Completion Tokens: 1,845
  Total Tokens: 15,381
  Total Cost: $0.002519
  Execution Time: 43.41 seconds

Final Status: SAFE


No issues found.
