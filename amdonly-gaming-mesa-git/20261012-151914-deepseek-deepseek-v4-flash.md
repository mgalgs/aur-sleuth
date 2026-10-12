---
package: amdonly-gaming-mesa-git
pkgbase: mesa-amdonly-gaming-git
pkgver: 26.3.0_devel.231170.745709a0004.d41d8cd
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22215
completion_tokens: 2950
total_tokens: 25165
cost: 0.00444245
execution_time: 46.33
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T15:19:14Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with standard packaging exclusions; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Mesa git PKGBUILD with no malicious or injected behavior.
  - file: rusticl-radeonsi.conf
    status: safe
    summary: Benign runtime configuration enabling Rusticl on AMD radeonsi; no security issues found.
---

amdonly-gaming-mesa-git is built from mesa-amdonly-gaming-git
Materializing amdonly-gaming-mesa-git from local mirror...
Materialized amdonly-gaming-mesa-git
Analyzing amdonly-gaming-mesa-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this file, the top-level scope consists solely of variable assignments, arrays (`pkgname`, `makedepends`, `source`, `b2sums`), and function definitions. There are no top-level command substitutions, no calls to `curl`, `wget`, `eval`, `base64`, or any other executable code that would run while the PKGBUILD is sourced.

The `pkgver()`, `prepare()`, `build()`, and `package_*()` functions contain the package's actual build logic, including git commands, meson builds, and file installation, but these are only executed during later makepkg stages and are not run by `--printsrcinfo`. The `source` array points to the official Mesa repository over git, and the `SKIP` checksum for the VCS source is a normal and expected practice for `-git` packages. No evidence of malicious behavior exists in the top-level scope of this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; only variables and function definitions. Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only variables and function definitions. Safe for printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It simply excludes common build artifacts and source directories (`mesa-git-*`, `mesa`, `pkg`, `src`, `*.log`, `*.zst`) from version control. These entries are entirely consistent with routine packaging workflow and contain no commands, network operations, encoded data, or any other potentially malicious behavior.
</details>
<evidence></evidence>
<summary>Benign .gitignore with standard packaging exclusions; no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with standard packaging exclusions; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only descriptor for an AUR package. It declares package names, dependencies, sources, and checksums. There are no executable commands, network requests, obfuscated strings, or file operations. The git source points to the official Mesa repository at `gitlab.freedesktop.org`, and the other two source files have valid hardcoded b2sums. The SKIP checksum for the VCS source is standard practice. No deviations from normal packaging or indicators of malicious activity are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, rusticl-radeonsi.conf...
[2/5] Reviewing LICENSE, PKGBUILD, rusticl-radeonsi.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard license file for the Mesa 3D graphics library. It contains copyright notices, permission terms, disclaimers, and a list of components and their respective licenses. There is no executable code, no network requests, no obfuscated content, and no file manipulation. The file is entirely textual and serves only to document licensing information. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, rusticl-radeonsi.conf...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS/git packaging recipe for Mesa with AMD-focused options. The only network source is the upstream Mesa repository at `gitlab.freedesktop.org/mesa/mesa.git`, which is the project's official upstream and matches the package's stated purpose. The VCS source legitimately uses a `SKIP` checksum, which is normal for `-git` packages and is not itself a security concern.

The build and packaging logic use standard tools (`meson`, `ninja`, `install`, `mv`, `ln`, `find`, `xargs rmdir`) to compile Mesa and split the install into subpackages. There is no use of `eval`, `base64`, `curl`, `wget`, obfuscated strings, unexpected remote hosts, data exfiltration, or download-and-execute behavior. The `$NINJAFLAGS` environment variable is user-controlled and expanded into the ninja command, but the PKGBUILD explicitly warns the user to validate it; this is a hygiene/trust boundary, not an injected supply-chain attack.

The `CFLAGS+=&quot; -march=native &quot;` modification is a build optimization choice and does not alter system files or execute untrusted code. The `_install` helper and `find fakeinstall ... rmdir` cleanup only operate inside the package build directory and `pkgdir`, consistent with normal packaging. No genuine malicious behavior was found.
</details>
<evidence></evidence>
<summary>
Standard Mesa git PKGBUILD with no malicious or injected behavior.</summary>
</security_assessment>

[4/5] Reviewing rusticl-radeonsi.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Mesa git PKGBUILD with no malicious or injected behavior.
LLM auditresponse for rusticl-radeonsi.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple Mesa/Rusticl configuration file. It sets the environment variable `RUSTICL_ENABLE` to `radeonsi`, which enables the Rusticl OpenCL implementation on AMD Radeon GPUs. There is no executable code, no network activity, no file manipulation, and no obfuscation. This is standard, benign configuration content consistent with the package's purpose.
</details>
<evidence>
</evidence>
<summary>
Benign runtime configuration enabling Rusticl on AMD radeonsi; no security issues found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed rusticl-radeonsi.conf. Status: SAFE -- Benign runtime configuration enabling Rusticl on AMD radeonsi; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,215
  Completion Tokens: 2,950
  Total Tokens: 25,165
  Total Cost: $0.004442
  Execution Time: 46.33 seconds

Final Status: SAFE


No issues found.
