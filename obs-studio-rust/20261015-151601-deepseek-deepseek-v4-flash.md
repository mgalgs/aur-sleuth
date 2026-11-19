---
package: obs-studio-rust
pkgbase: obs-rust
pkgver: 0.1.0beta.20261014
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13001
completion_tokens: 3272
total_tokens: 16273
cost: 0.001778595
execution_time: 28.85
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T15:16:00Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: standard nvchecker config pointing to the package's own upstream repository."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: No malicious code detected; standard AUR PKGBUILD.
---

obs-studio-rust is built from obs-rust
Materializing obs-studio-rust from local mirror...
Materialized obs-studio-rust
Analyzing obs-studio-rust AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level global scope of this PKGBUILD contains only variable and array definitions (e.g., `pkgname`, `pkgver`, `source`, `sha256sums`, and simple string expansions for `_tag`). No command substitutions or function calls that would execute arbitrary code are present. The potentially dangerous operations (git submodule manipulation, cmake, cargo build, file installation) are all contained within `prepare()`, `build()`, and `package_*()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print its SRCINFO is safe.
</details>
<evidence></evidence>
<summary>Global scope has no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no dangerous code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, PKGBUILD...
[0/3] Reviewing .nvchecker.toml, PKGBUILD, .SRCINFO...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for tracking upstream releases of the `obs-rust/obs-studio` repository. It declares a git source from the project's own GitHub repository and defines patterns to extract version strings from tag names. There are no network requests beyond normal version-checking of the package's declared upstream, no code execution, no obfuscation, no file manipulation, and no deviation from standard packaging/version-tracking tooling. The use of `include_regex`, `from_pattern`, and `to_pattern` is normal nvchecker syntax for parsing release tags. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Safe: standard nvchecker config pointing to the package's own upstream repository.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: standard nvchecker config pointing to the package's own upstream repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares dependencies, sources, and split package information for the `obs-studio-rust` package. The main source is pinned to a specific tag, while the three submodule sources (libdshowcapture, obs-browser, obs-websocket) use VCS sources with `SKIP` checksums — a normal practice for `git` sources in AUR. No malicious commands, obfuscated code, network exfiltration, or unexpected file operations are present. The file adheres to typical AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for obs-studio-rust follows standard AUR packaging practices. All source URLs point to the official OBS Studio GitHub repository. The prepare() function configures submodule URLs to local `${srcdir}` paths (the other declared sources) and performs a submodule update, which is typical for pinning vendored dependencies. The build() routine runs the upstream cmake and cargo build systems. There is no evidence of obfuscated code, unexpected network requests, data exfiltration, or execution of attacker-controlled scripts. The lone sha256sum that is not `SKIP` (on the first VCS source) is a minor hygiene issue, not a security threat.
</details>
<evidence></evidence>
<summary>No malicious code detected; standard AUR PKGBUILD.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code detected; standard AUR PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,001
  Completion Tokens: 3,272
  Total Tokens: 16,273
  Total Cost: $0.001779
  Execution Time: 28.85 seconds

Final Status: SAFE


No issues found.
