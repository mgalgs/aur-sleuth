---
package: noaidarling-jsc-git
pkgbase: noaidarling-git
pkgver: r4405.ff77380e7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49858
completion_tokens: 1881
total_tokens: 51739
cost: 0.00482580
execution_time: 71.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T04:24:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code detected.
---

noaidarling-jsc-git is built from noaidarling-git
Materializing noaidarling-jsc-git from local mirror...
Cloning https://aur.archlinux.org/noaidarling-git.git...
Cloned noaidarling-jsc-git
Analyzing noaidarling-jsc-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains no dangerous code in its global/top-level scope that would execute when sourced by `makepkg --printsrcinfo`. All content at the top level consists entirely of standard variable assignments (pkgname, pkgver, pkgrel, arch, url, license, dependencies, source array, md5sums with SKIP entries for VCS repos, options) and a benign conditional block that sets a build tool variable based on an environment variable. Function definitions (pkgver, prepare, build, package_*) appear but are not invoked during sourcing. There are no eval statements, obfuscated code, network requests, or suspicious command substitutions in the global scope. All source URLs point to the package's own upstream GitHub organization (github.com/NoAiDarling), which is expected and legitimate.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code executes during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except for the essential packaging files: `.gitignore` itself, `.SRCINFO`, `PKGBUILD`, the install script (`noaidarling-git.install`), and `dkms.conf`. There is no executable code, no network requests, no obfuscation, and no deviation from normal AUR packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package; no issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is for a complex translation layer (a fork of Darling) with many git submodules. All sources are fetched from the package's own upstream GitHub organization (NoAiDarling) over HTTPS, which is expected and standard. The `prepare()` function configures submodule URLs to point to local `$srcdir` paths and updates them using `git -c protocol.file.allow=always submodule update` — this is a routine pattern for managing submodules from pre-fetched sources and does not introduce unchecked remote pulls at build time. The `git lfs pull` on the swift submodule is the project's own upstream dependency management. No obfuscated code, dangerous commands (eval, curl|bash, wget, base64), unexpected network destinations, or system file tampering outside the package's scope is present. All checksums are `SKIP`, which is normal and required for VCS sources. The package functions install components via standard `cmake -DCOMPONENT=... -P cmake_install.cmake`, which is the upstream build system's intended installation mechanism.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It declares the package name, version, dependencies, and a large number of VCS git sources, all hosted under the `https://github.com/NoAiDarling/` organization. All checksums are set to `SKIP`, which is normal and expected for VCS (`-git`) packages. There is no embedded code, no obfuscated strings, no unexpected network destinations, and no instructions that would execute arbitrary commands at build time beyond the usual makepkg workflow. The file does not contain any malicious or suspicious behavior; it merely describes how to build the package from its declared upstream repositories.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,858
  Completion Tokens: 1,881
  Total Tokens: 51,739
  Total Cost: $0.004826
  Execution Time: 71.79 seconds

Final Status: SAFE


No issues found.
