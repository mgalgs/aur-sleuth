---
package: neowall-git
pkgver: 0.7.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8249
completion_tokens: 1997
total_tokens: 10246
cost: 0.000599907
execution_time: 51.76
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T19:13:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD using upstream Meson, with no malicious behavior.
---

Materializing neowall-git from local mirror...
Materialized neowall-git
Analyzing neowall-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources this PKGBUILD's top-level scope only. The top-level content consists entirely of standard variable definitions (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, and `sha256sums`) plus function definitions. There are no top-level command substitutions, no network calls, no encoded/obfuscated payloads, and no file modifications that would execute while the PKGBUILD is sourced.

The `source` array uses `git+https://github.com/1ay1/neowall.git`, which is the project's own upstream repository — normal for a `-git` package. The `sha256sums=('SKIP')` entry is standard for VCS sources and does not affect this gate, since `makepkg --printsrcinfo` does not download or verify sources. The `pkgver()`, `build()`, `check()`, and `package()` functions are out of scope for this command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is standard; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is standard; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It defines package metadata for neowall-git, a GPU shader wallpaper application. The source is the project's own GitHub repository via git, and sha256sums is set to SKIP, which is standard practice for VCS packages. There are no executable commands, no network requests beyond declaring the upstream git source, no obfuscated code, and no evidence of malicious intent. All dependencies are typical for a Wayland/X11 wallpaper application.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for the neowall project. The source fetches the package's own upstream Git repository over HTTPS, and the checksum is correctly set to SKIP, which is normal and expected for a -git package. The pkgver() function only reads local Git metadata to generate a version string; it does not fetch, pull, or execute any remote content.

The build and package stages use the project's normal Meson build system: arch-meson, meson compile, meson test, and meson install into the package directory. The only additional install step copies the project's own LICENSE file into the package's license directory. There are no calls to curl, wget, eval, base64, or any obfuscated commands, no exfiltration of local data, and no writes outside the package build/install scope.

The only minor observation is that, like all -git packages, this tracks a mutable repository state rather than a pinned commit. That is standard for this package type and is not malicious. Overall, the file appears to be an ordinary, clean PKGBUILD with no injected or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD using upstream Meson, with no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD using upstream Meson, with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,249
  Completion Tokens: 1,997
  Total Tokens: 10,246
  Total Cost: $0.000600
  Execution Time: 51.76 seconds

Final Status: SAFE


No issues found.
