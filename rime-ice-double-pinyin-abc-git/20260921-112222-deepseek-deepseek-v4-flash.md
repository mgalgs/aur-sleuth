---
package: rime-ice-double-pinyin-abc-git
pkgbase: rime-ice-git
pkgver: r976.80d213e
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20781
completion_tokens: 11537
total_tokens: 32318
cost: 0.003885816130
execution_time: 351.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T11:22:22Z
file_verdicts:
  - file: post.install
    status: safe
    summary: Informational post-install script, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a Rime config package; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard Rime schema packaging with normal AUR VCS practices.
---

rime-ice-double-pinyin-abc-git is built from rime-ice-git
Materializing rime-ice-double-pinyin-abc-git from local mirror...
Materialized rime-ice-double-pinyin-abc-git
Analyzing rime-ice-double-pinyin-abc-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Within the provided excerpt, the top-level scope of this PKGBUILD contains only ordinary variable and array assignments (`_pkgbase`, `pkgbase`, `pkgname`, `arch`, `url`, `license`, `makedepends`, `source`, `sha512sums`) plus function definitions (`pkgver`, `prepare`, `build`, `_package_schema`, `_install_schema`, `_install_schema_dicts`, and the `package_*` split-package functions). No top-level command substitution downloads or executes anything, no `eval`/`base64`/`curl|bash` pattern is present, and no top-level code exfiltrates data.

The `source` array points to the package's own upstream GitHub repository (`git+https://github.com/iDvel/rime-ice.git`), which is expected and normal for this AUR package. The `sha512sums=('SKIP')` value is ordinary for VCS packages and not relevant to this parse-only step because `makepkg --printsrcinfo` does not fetch or verify sources.

The more complex-looking shell code (sed/grep/install/find loops, schema installation helpers, `post.install` references) appears inside `build()` or `package_*()` functions, which are not executed when `makepkg --printsrcinfo` sources the PKGBUILD. Even the `git rev-parse` call inside `pkgver()` is only a local version lookup and does not constitute a network download, payload execution, or credential-exfiltration primitive.

No genuinely malicious behavior is present in the top-level code that would run during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>SAFE for the narrow `makepkg --printsrcinfo` gate: sourcing/parsing this PKGBUILD executes only benign variable definitions and function definitions. No top-level payload download, obfuscated command execution, or data exfiltration exists in the provided content.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE for the narrow `makepkg --printsrcinfo` gate: sourcing/parsing this PKGBUILD executes only benign variable definitions and function definitions. No top-level payload download, obfuscated command execution, or data exfiltration exists in the provided content.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, post.install...
LLM auditresponse for post.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `post.install` script is purely informational. It contains only `echo` statements that print instructions for configuring the Rime input method (rime_ice) and lists common directories for input method frameworks (iBus, Fcitx5). It also includes a link to the Rime wiki. There are no dangerous commands (no `eval`, `curl`, `wget`, `base64`, file modifications, network requests, or system calls). The script performs no operations that could exfiltrate data, install backdoors, or execute untrusted code. It follows standard packaging practices for displaying post-installation guidance to the user.
</details>
<evidence>
</evidence>
<summary>Informational post-install script, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed post.install. Status: SAFE -- Informational post-install script, no malicious code.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux AUR package metadata file for Rime input method configurations. It declares VCS source from the official upstream GitHub repository (`https://github.com/iDvel/rime-ice.git`), which is the package's own upstream project. The `sha512sums = SKIP` entry is expected and normal for `-git` packages built directly from a VCS checkout.

The metadata describes multiple related `pkgname` variants, each installing Rime double-pinyin configurations and using `post.install`. The `conflicts` and `provides` entries are routine package management declarations that prevent conflicting Rime configurations from being installed together. There are no network requests, no obfuscated code, no execution of downloaded scripts, no file exfiltration, and no suspicious system modifications. The file is purely declarative metadata consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for a Rime config package; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a Rime config package; no malicious behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a multi-package Rime schema packaging script for the rime-ice input method project. The source is the project&apos;s own GitHub repository, fetched over git, with a `SKIP` checksum, which is standard and expected for VCS-based AUR packages. The build and package functions only copy schema, dictionary, and Lua files into `/usr/share/rime-data` using `install -Dm644`, create symlinks, and invoke `rime_deployer --compile` to compile schemas. These are normal packaging operations for a Rime schema bundle.

The script uses `sed` and `mapfile` to parse schema dependency/include fields and to comment out unwanted `__include:` lines. The `find lua -type f -exec sh -c &apos;install -Dm644 ...&apos;` pattern is a standard way to install multiple files and does not execute untrusted code. There is no use of `curl`, `wget`, `eval`, `base64`, or obfuscated/encoded commands, and no network activity occurs during the build beyond the normal fetching of the declared upstream git source. No files outside the package installation prefix or the Rime data directories are modified, and no credential theft, data exfiltration, or backdoor behavior is present.

While the package tracks a mutable git branch/tag and uses `SKIP` checksums, these are normal AUR VCS practices rather than evidence of malice. The file is consistent with legitimate packaging of Rime schemas.
</details>
<evidence></evidence>
<summary>No malicious behavior found; standard Rime schema packaging with normal AUR VCS practices.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard Rime schema packaging with normal AUR VCS practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,781
  Completion Tokens: 11,537
  Total Tokens: 32,318
  Total Cost: $0.003886
  Execution Time: 351.48 seconds

Final Status: SAFE


No issues found.
