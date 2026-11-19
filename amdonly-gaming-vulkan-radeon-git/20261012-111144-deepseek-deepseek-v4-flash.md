---
package: amdonly-gaming-vulkan-radeon-git
pkgbase: mesa-amdonly-gaming-git
pkgver: 26.3.0_devel.231170.745709a0004.d41d8cd
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22391
completion_tokens: 3012
total_tokens: 25403
cost: 0.00452709
execution_time: 53.49
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T11:11:44Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard Mesa license text; no suspicious or malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no suspicious or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata for Mesa; only official upstream sources, no malicious content.
  - file: rusticl-radeonsi.conf
    status: safe
    summary: Benign Mesa/Rusticl configuration file; enables radeonsi OpenCL support with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD building Mesa from official upstream; no malicious behavior found.
---

amdonly-gaming-vulkan-radeon-git is built from mesa-amdonly-gaming-git
Materializing amdonly-gaming-vulkan-radeon-git from local mirror...
Materialized amdonly-gaming-vulkan-radeon-git
Analyzing amdonly-gaming-vulkan-radeon-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes its global/top-level scope. The global scope consists entirely of standard PKGBUILD metadata assignments: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `url`, `arch`, `license`, `makedepends`, `source`, and `b2sums`. The `source` array references the official Mesa upstream repository (`gitlab.freedesktop.org/mesa/mesa.git`), which is expected for this package. No top-level command substitutions, external downloads, encoded payloads, or suspicious system-modifying operations are present.

All potentially interesting commands (`git rev-list`, `git rev-parse`, `md5sum`, `patch`, `meson`, `install`, file moves) are confined inside `pkgver()`, `prepare()`, `build()`, and the `package_*()` functions. Those functions are not executed by `makepkg --printsrcinfo`, so they are outside the scope of this gate and will be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only metadata and function definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only metadata and function definitions execute.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Mesa license and copyright notice. It contains only legal text describing licensing terms for the Mesa 3-D graphics library and its components. There is no executable code, no network activity, no file operations, no obfuscation, and no deviation from expected packaging contents. The file is a normal LICENSE file shipped with the package.
</details>
<evidence>
</evidence>
<summary>
Standard Mesa license text; no suspicious or malicious content found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard Mesa license text; no suspicious or malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It simply lists build artifacts and directories (`mesa-git-*`, `mesa`, `pkg`, `src`, `*.log`, `*.zst`) to exclude from version control. No commands, network operations, obfuscation, or file-modifying behavior is present. This is consistent with normal packaging practices and contains no malicious content.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no suspicious or malicious content.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no suspicious or malicious content.
[2/5] Reviewing .SRCINFO, PKGBUILD, rusticl-radeonsi.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a Mesa build variant (`mesa-amdonly-gaming-git`). It declares dependencies, provides/conflicts, and sources. The only external source is the official upstream Mesa repository at `gitlab.freedesktop.org`, which is the expected project upstream for this package. The `b2sums = SKIP` entry applies to the VCS `git+` source and is normal for -git packages; the two static files (rusticl-radeonsi.conf and LICENSE) have pinned b2sums.

No suspicious network destinations, obfuscated commands, file operations, or execution logic appear in this file. A `.SRCINFO` is declarative package metadata and contains no build or install code. The contents are consistent with ordinary AUR packaging practices, so no supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata for Mesa; only official upstream sources, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, rusticl-radeonsi.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata for Mesa; only official upstream sources, no malicious content.
LLM auditresponse for rusticl-radeonsi.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple Mesa/Rusticl environment configuration file. It sets `RUSTICL_ENABLE=radeonsi`, which enables the Rusticl OpenCL implementation for AMD Radeon GPUs via the radeonsi driver. This is a standard, benign configuration used by graphics/gaming packages and contains no executable code, network operations, file manipulation, or obfuscated content. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign Mesa/Rusticl configuration file; enables radeonsi OpenCL support with no security issues.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed rusticl-radeonsi.conf. Status: SAFE -- Benign Mesa/Rusticl configuration file; enables radeonsi OpenCL support with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds Mesa from the official upstream repository at `gitlab.freedesktop.org/mesa/mesa.git` using standard `meson`/`ninja` build steps. The `b2sums=SKIP` entry applies only to the VCS source, which is normal and expected for `-git` packages. The other two local source files have real checksums.

The `prepare()` function only applies patches from the `source` array (none are present in this file), and the `build()` function uses standard Mesa build configuration and installs into a temporary `fakeinstall` directory. The `_install()` helper and package functions simply move those installed files into the appropriate `$pkgdir` locations. There are no suspicious network requests, no encoded or obfuscated commands, no `eval`/`base64`/`wget`/`curl` misuse, and no file operations outside the build and package directories.

The only minor notes are that the Mesa source branch is unpinned, which is standard for a `-git` package, and `$NINJAFLAGS` is intentionally user-controlled by design. Neither constitutes malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Clean AUR PKGBUILD building Mesa from official upstream; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD building Mesa from official upstream; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,391
  Completion Tokens: 3,012
  Total Tokens: 25,403
  Total Cost: $0.004527
  Execution Time: 53.49 seconds

Final Status: SAFE


No issues found.
