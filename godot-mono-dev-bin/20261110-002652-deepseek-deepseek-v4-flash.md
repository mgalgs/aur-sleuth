---
package: godot-mono-dev-bin
pkgbase: godot-dev-bin
pkgver: 4.8beta3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19177
completion_tokens: 1924
total_tokens: 21101
cost: 0.002095275
execution_time: 36.84
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T00:26:52Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for Godot version tracking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Godot dev binaries, no security issues.
---

godot-mono-dev-bin is built from godot-dev-bin
Materializing godot-mono-dev-bin from local mirror...
Cloning https://aur.archlinux.org/godot-dev-bin.git...
Cloned godot-mono-dev-bin
Analyzing godot-mono-dev-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists only of variable assignments and a benign version string transformation using `printf` and `sed` on a locally defined literal string. No external network requests, dangerous commands (curl, wget, eval, base64), or obfuscated code are executed. The source arrays define URLs pointing to the official Godot builds repository, but these are not downloaded or executed during `makepkg --printsrcinfo`. All dangerous operations (downloading, building, installing) are confined to the `prepare()`, `package_*()` functions which are **not** invoked by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code executes in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executes in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration for the `nvchecker` tool, which automatically checks for new versions of upstream software. It defines how to query the GitHub API for Godot release information and parse the version string using `jq` filters. The commented-out section shows an alternative configuration using the `github` source, which is also standard. There is no evidence of malicious behavior: no obfuscated code, no unexpected network destinations (only `api.github.com`), no execution of arbitrary commands, and no exfiltration of data. The configuration is entirely within normal packaging practices for version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for Godot version tracking.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for Godot version tracking.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file contains only standard Git ignore rules. It ignores all files except PKGBUILD, .SRCINFO, .gitignore, and .nvchecker.toml. This is a common practice for AUR package repositories to ensure only essential packaging files are tracked. There is no code execution, network access, or any suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata for an AUR package. It specifies sources, checksums, dependencies, and other package metadata. All source URLs point to the official Godot engine GitHub releases under `https://github.com/godotengine/godot-builds/releases/download/`. Checksums for all architectures are provided and are not set to `SKIP`, indicating reproducible source verification. There are no scripts, no executable instructions, no obfuscation, and no evidence of malicious behavior. The file follows standard AUR packaging conventions and contains no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with pinned checksums; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for distributing precompiled binaries. All sources are downloaded from the official Godot engine GitHub repository (`github.com/godotengine/godot-builds`), which is the expected upstream. Checksums (sha256 and sha512) are explicitly provided for every architecture, ensuring integrity. The `prepare()` function only performs routine modifications to desktop files and fixes a known MIME info namespace issue (referenced as FS#77810). The `package_*` functions install binaries and supporting files into standard system paths (`/usr/lib`, `/usr/bin`, `/usr/share/...`). There are no suspicious network requests, obfuscated commands, base64 decoding, `eval`, `curl|bash`, or any operations that deviate from expected packaging behavior. The use of indirect variable expansion (`${!source_array}`) is a common and harmless pattern to handle per-architecture source arrays. No evidence of supply-chain attack or malicious intent was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Godot dev binaries, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Godot dev binaries, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,177
  Completion Tokens: 1,924
  Total Tokens: 21,101
  Total Cost: $0.002095
  Execution Time: 36.84 seconds

Final Status: SAFE


No issues found.
