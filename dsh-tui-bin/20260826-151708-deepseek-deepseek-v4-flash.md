---
package: dsh-tui-bin
pkgver: 0.9.3
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 10012
completion_tokens: 2092
total_tokens: 12104
cost: 0.00115072776
execution_time: 48.37
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 1327
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T15:17:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: dsh-tui-bin.install
    status: safe
    summary: Standard post-install script, no malicious behavior
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no malicious content.
---

Cloning https://aur.archlinux.org/dsh-tui-bin.git...
Cloned dsh-tui-bin
Analyzing dsh-tui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous code in its global/top-level scope or in any `pkgver()` function (none exists). The only operations that run during the requested commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) are variable assignments and sourcing the PKGBUILD, which are benign. The source is a single tarball from the official npm registry with a pinned SHA256 checksum, so fetching it poses no risk. The `prepare()`, `build()`, and `package()` functions are not executed due to the `--nobuild` and `--noprepare` flags, and the `install` script is only run during package installation, not during source fetch. No obfuscation, command substitutions, or unexpected network requests are present in the executed scopes.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch or parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch or parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/package/LICENSE); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 1327 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, dsh-tui-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package that downloads a prebuilt npm package from the official npm registry with a pinned SHA256 checksum. It installs the package globally using `npm install --global` on the local tarball, then copies the installed files into the package directory. There are no suspicious network requests, obfuscated code, or dangerous commands. The operations are entirely consistent with normal packaging practices for a `-bin` package. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, dsh-tui-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for dsh-tui-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The post-install script `dsh-tui-bin.install` runs the application&#39;s own `/usr/bin/dsh-tui update` command as a normal user after installation or upgrade. This is a common pattern for initializing per-user profiles or caches. There is no obfuscation, no network requests initiated by the script itself (the application&#39;s binary may make network calls, but that is upstream functionality), no use of dangerous commands like `curl`, `wget`, `eval`, or base64 decoding. The user selection via `getent passwd` is standard for finding a non-system user. The script does not exfiltrate data, install backdoors, or execute untrusted code. It behaves as expected for a package support script.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious behavior</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed dsh-tui-bin.install. Status: SAFE -- Standard post-install script, no malicious behavior
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It contains only declarative information: package name, version, description, dependencies, source URL (from the official npm registry), and a valid SHA-256 checksum. There is no executable code, no suspicious network requests, no obfuscated or encoded content, and no deviation from normal AUR packaging practices. The presence of a pinning checksum and a source from the project's official registry aligns with expected security hygiene for binary packages. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Metadata only, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,012
  Completion Tokens: 2,092
  Total Tokens: 12,104
  Total Cost: $0.001151
  Execution Time: 48.37 seconds

Final Status: SAFE


No issues found.
