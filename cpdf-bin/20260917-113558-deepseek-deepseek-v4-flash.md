---
package: cpdf-bin
pkgver: 2.9.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13918
completion_tokens: 19130
total_tokens: 33048
cost: 0.004623283868
execution_time: 562.25
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:35:58Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream git.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt-binary PKGBUILD with pinned checksums; no malicious behavior found.
---

Materializing cpdf-bin from local mirror...
Materialized cpdf-bin
Analyzing cpdf-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only variable and array assignments: `_pkgname`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `_url_bin`/`_url_src`, `license`, `depends`, `provides`, `conflicts`, `_pkgsrc`, the `source`/`source_aarch64`/`source_i686`/`source_x86_64` arrays, and `sha256sums` arrays. It also defines the `package()` function. None of the top-level statements use command substitution (`$(` or backticks), `eval`, `base64`, or any network/download/execution construct. Sourcing this file simply binds variables and defines a function; it does not fetch, download, or execute anything.

The `package()` function body (which only runs `install` commands copying the prebuilt cpdf binary, docs, and license into `$pkgdir`) is not executed by `makepkg --printsrcinfo`, and is standard packaging behavior anyway. The declared sources point to the upstream project's own GitHub repositories (coherentgraphics/cpdf-binaries and johnwhitington/cpdf-source), which is expected for the package. No genuinely malicious behavior would execute during `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; sourcing PKGBUILD only assigns variables and defines functions.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing PKGBUILD only assigns variables and defines functions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the version-checking tool `nvchecker`. It defines the package `cpdf-bin` with source type `git` pointing to the official upstream GitHub repository `coherentgraphics/cpdf-binaries`. The `prefix = "v"` is a standard tag prefix. There is no malicious content—no encoded commands, no suspicious network destinations, no file operations, and no deviation from expected packaging utilities. This is a benign configuration snippet.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream git.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream git.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a package metadata file for the Arch User Repository (AUR). It contains no executable code—only declarative fields (pkgver, sources, checksums, etc.). All source URLs point to the official GitHub repositories of the Coherent PDF project (coherentgraphics/cpdf-binaries and johnwhitington/cpdf-source), pinned to the specific tag `v2.9.1`. Every source has a corresponding SHA-256 checksum; no checksums are set to `SKIP`. There are no suspicious network destinations, obfuscated data, or unexpected system commands. The file follows standard AUR packaging conventions and does not introduce any supply‑chain attack vectors.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR git repository. It ignores all files (`*`) and then whitelists the packaging metadata files that belong in an AUR repo: `PKGBUILD`, `.SRCINFO`, `.gitignore`, and `.nvchecker.toml`. The `.nvchecker.toml` entry is a configuration file for the nvchecker tool, commonly used by AUR maintainers to check for upstream version updates — it is not part of the package itself and is never executed during installation.

There is no code execution, no network activity, no encoded or obfuscated content, no file manipulation beyond git ignore rules, and no attempt to disguise malicious behavior. The file contains only pattern-matching rules for version control and is entirely consistent with ordinary AUR maintenance practices. No security concerns of any kind are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no malicious behavior present.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no malicious behavior present.
LLM auditresponse for PKGBUILD:
 <security_assessment>
  <decision>SAFE</decision>
  <details>
This PKGBUILD is a standard prebuilt-binary package for the `cpdf` command-line PDF tool. It downloads five documentation/license files plus an architecture-specific prebuilt binary from the project's own GitHub repositories (`coherentgraphics/cpdf-binaries` and `johnwhitington/cpdf-source`). Every downloaded artifact is covered by a pinned `sha256sums` value; checksums are not set to `SKIP`. The `package()` function only runs `install` commands to place the binary, man page, license, and documentation into `$pkgdir`.

No `eval`, no encoded payloads, no `curl|bash`, no `git pull`/`reset --hard`, no unexpected network destination, and no attempt to read or exfiltrate local data were found. The remote URLs reference a tag name rather than a pinned commit, but the hardcoded SHA-256 checksums mean a changed or moved tag would fail validation instead of silently installing new code. This is the expected layout for a `-bin` package and contains no evidence of injected malicious behavior.
  </details>
  <evidence></evidence>
  <summary>Standard prebuilt-binary PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt-binary PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,918
  Completion Tokens: 19,130
  Total Tokens: 33,048
  Total Cost: $0.004623
  Execution Time: 562.25 seconds

Final Status: SAFE


No issues found.
