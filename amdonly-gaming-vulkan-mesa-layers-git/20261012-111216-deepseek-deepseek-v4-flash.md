---
package: amdonly-gaming-vulkan-mesa-layers-git
pkgbase: mesa-amdonly-gaming-git
pkgver: 26.3.0_devel.231170.745709a0004.d41d8cd
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22331
completion_tokens: 2813
total_tokens: 25144
cost: 0.00427057
execution_time: 81.9
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T11:12:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard Mesa license text; no malicious or suspicious content found.
  - file: rusticl-radeonsi.conf
    status: safe
    summary: Benign config file enabling radeonsi for Rusticl; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for Mesa -git package; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Mesa split PKGBUILD with normal VCS source, no malicious behavior found.
---

amdonly-gaming-vulkan-mesa-layers-git is built from mesa-amdonly-gaming-git
Materializing amdonly-gaming-vulkan-mesa-layers-git from local mirror...
Materialized amdonly-gaming-vulkan-mesa-layers-git
Analyzing amdonly-gaming-vulkan-mesa-layers-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. That scope contains only standard variable assignments, arrays (`pkgname`, `source`, `b2sums`, `makedepends`, etc.), comments, and function definitions. There are no top-level command substitutions, no `eval`, `curl`, `wget`, base64 decoding, or other code that would execute during sourcing.

The `pkgver()`, `prepare()`, `build()`, and `package_*()` functions contain shell commands, but they are only definitions and are not executed by `makepkg --printsrcinfo`. The `source` uses the project's own upstream Git repository over HTTPS, which is standard packaging practice; the `SKIP` checksum for the VCS source is not a concern for this narrow gate. No genuinely malicious behavior is present in the top-level scope.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; only definitions and variables. Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only definitions and variables. Safe for printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR packaging. It lists common build artifacts and temporary files (mesa-git-*, mesa, pkg, src, *.log, *.zst) that should be ignored by version control. There is no executable code, no network requests, no obfuscation, and no commands that could compromise the system. This file poses no security risk.</details>
<evidence></evidence>
<summary>Standard gitignore; no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore; no security concerns.
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Mesa license text. It contains only copyright and licensing information for the Mesa 3-D graphics library and its components. There is no executable code, no network requests, no file operations, no obfuscated content, and no indication of injected malicious behavior. It is a normal license file that would accompany a Mesa-related package such as amdonly-gaming-vulkan-mesa-layers-git.
</details>
<evidence>
</evidence>
<summary>
Standard Mesa license text; no malicious or suspicious content found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, rusticl-radeonsi.conf...
[2/5] Reviewing .SRCINFO, PKGBUILD, rusticl-radeonsi.conf...
+ Reviewed LICENSE. Status: SAFE -- Standard Mesa license text; no malicious or suspicious content found.
LLM auditresponse for rusticl-radeonsi.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for the Rusticl OpenCL implementation in Mesa. It contains only a single environment variable assignment, `RUSTICL_ENABLE=radeonsi`, which is a standard, documented way to enable the radeonsi (AMD GPU) driver for Rusticl. There are no executable commands, no network operations, no file modifications, no obfuscated content, and nothing that deviates from ordinary packaging practice. The content is entirely benign.
</details>
<evidence>
</evidence>
<summary>
Benign config file enabling radeonsi for Rusticl; no security concerns.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed rusticl-radeonsi.conf. Status: SAFE -- Benign config file enabling radeonsi for Rusticl; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard package metadata for an AUR -git package. It declares the upstream source as Mesa's official GitLab repository, two auxiliary files (rusticl-radeonsi.conf and LICENSE) with b2sums, build dependencies, package splits, dependencies, provides, and conflicts. There is no embedded code, no network fetch instructions beyond the declared VCS source, no encoded commands, and no file operations outside normal package definitions.

The VCS source uses a mutable branch (main) and has SKIP checksum, which is normal and required for -git packages. This is a reproducibility/hygiene consideration rather than evidence of malice. The auxiliary files have checksums, and the rest of the metadata is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO for Mesa -git package; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for Mesa -git package; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split packaging script for a Mesa build, targeting AMD/radeonsi/rusticl Vulkan and OpenCL components. It uses the upstream Mesa repository from `gitlab.freedesktop.org`, applies no external patches, configures Mesa via meson options, builds with `meson compile`, and installs the selected results into package directories. No obfuscated code, no unexpected network destinations, no eval/curl-pipe-to-shell patterns, and no tampering with files outside the package scope were found.

The only hygiene notes are normal for AUR `-git` packages: the `mesa` VCS source is unpinned (`#branch=main`), its checksum is `SKIP`, and `$NINJAFLAGS` is expanded unquoted in `meson compile`, which is a user-controlled environment variable rather than an attacker-controlled action in the PKGBUILD itself. None of these rise to the level of malicious or supply-chain behavior. The package also installs an `environment.d` snippet to enable Rusticl, which is consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>
Standard Mesa split PKGBUILD with normal VCS source, no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Mesa split PKGBUILD with normal VCS source, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,331
  Completion Tokens: 2,813
  Total Tokens: 25,144
  Total Cost: $0.004271
  Execution Time: 81.90 seconds

Final Status: SAFE


No issues found.
