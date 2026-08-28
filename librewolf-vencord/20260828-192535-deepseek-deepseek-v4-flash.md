---
package: librewolf-vencord
pkgbase: vencord
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12805
completion_tokens: 2327
total_tokens: 15132
cost: 0.0015154412
execution_time: 146.6
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 801
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:25:32Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned tag and no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file with no security concerns.
  - file: vencord.install
    status: safe
    summary: Informational post-install script, no malicious behavior.
---

librewolf-vencord is built from vencord
Cloning https://aur.archlinux.org/vencord.git...
Cloned librewolf-vencord
Analyzing librewolf-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope and `pkgver()` (which is absent – the version is a static string) contain no code execution beyond variable assignments and function definitions. No command substitutions, eval, or external network calls exist at the top level. The `source` array specifies a pinned git tag (`v1.15.4`) with a valid SHA256 checksum, fetching from the project's official GitHub repository. No malicious content is present in this gate's scope. The `prepare()`, `build()`, `check()`, and `package_*()` functions are defined but not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, so they are out of scope for this narrow safety check.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 801 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It clones the official Vencord repository from GitHub at a pinned tag (v1.15.4) with a provided SHA256 checksum. The build process uses `pnpm install --frozen-lockfile`, `pnpm buildStandalone`, and `pnpm buildWeb`, which are all normal upstream build steps. The package functions install files into standard system locations (`/usr/lib/`, `/usr/share/licenses/`, `/usr/share/doc/`, and browser extension directories). There is no obfuscated code, no unexpected network requests, no attempts to exfiltrate data, no backdoors, and no deviation from expected packaging workflow. The `install` files referenced (e.g., `vencord.install`) are not shown in this file, but their presence is standard and not inherently suspicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned tag and no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, .gitignore, vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned tag and no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file used by AUR helpers to build and install the package. It contains no executable code, no network requests, no obfuscated strings, and no dangerous commands. The source is fetched from the official upstream GitHub repository at a pinned tag (`v1.15.4`) with a valid SHA-256 checksum. The file only defines package metadata, dependencies, and build instructions that are standard for AUR packages. There is no evidence of malicious intent in this file itself. The `.install` file referenced is not part of this analysis, but the `.SRCINFO` is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR package repositories. It ignores all files by default (using `*`), then explicitly un-ignores (`!`) the essential package files: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and itself. No commands, network requests, obfuscation, or any code execution is present. The content is purely declarative and serves only to manage Git version control for the package. There is no evidence of malicious behavior.</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file with no security concerns.</summary>
</security_assessment>

[3/4] Reviewing vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file with no security concerns.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install()` function that echoes multi-line instructions to the user. It performs no commands, no file operations, no network requests, and no system modifications. It is purely informational and follows standard AUR packaging practices for providing post-installation guidance. No security issues are present.
</details>
<evidence></evidence>
<summary>Informational post-install script, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vencord.install. Status: SAFE -- Informational post-install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,805
  Completion Tokens: 2,327
  Total Tokens: 15,132
  Total Cost: $0.001515
  Execution Time: 146.60 seconds

Final Status: SAFE


No issues found.
