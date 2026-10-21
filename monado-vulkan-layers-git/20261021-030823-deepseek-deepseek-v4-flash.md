---
package: monado-vulkan-layers-git
pkgver: 0.9.0.29.git.ae43cdc
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7810
completion_tokens: 1120
total_tokens: 8930
cost: 0.000914550
execution_time: 22.93
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T03:08:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for a -git package; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD fetching upstream source; no malicious behavior found.
---

Materializing monado-vulkan-layers-git from local mirror...
Materialized monado-vulkan-layers-git
Analyzing monado-vulkan-layers-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. That scope contains only standard variable assignments, arrays, comments, and function definitions. There are no top-level command substitutions, no `eval`, no `curl`/`wget` calls, and no code that downloads, executes, or exfiltrates data while the file is sourced.

The `pkgver()`, `prepare()`, `build()`, and `package()` functions contain commands such as `sh get-version.sh`, `cmake`, and `ninja install`, but these are only executed during later phases, not during `makepkg --printsrcinfo`. The `source` array points to the package's own upstream GitLab repository over git+https, and the SKIP checksum is normal for VCS sources and does not affect this parsing step. No malicious or suspicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope has only standard definitions; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope has only standard definitions; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for a `-git` package. It declares the package metadata, dependencies, and a single VCS source from the project's official upstream repository (`gitlab.freedesktop.org/monado/utilities/vulkan-layers`). The `md5sums = SKIP` entry is normal and expected for VCS sources. There are no suspicious commands, downloads from unrelated hosts, obfuscated content, or unexpected file operations. The package appears to be a routine AUR package definition.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO for a -git package; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for a -git package; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a VCS package. It clones the project's own upstream repository from `gitlab.freedesktop.org`, uses `SKIP` checksums as expected for a `-git` package, runs the upstream version script, configures and builds with CMake/Ninja, and installs via `ninja install`. No suspicious network endpoints, obfuscated code, unsafe shell constructs, or data exfiltration are present.

The only notable hygiene point is that the source tracks the mutable `main` branch rather than a pinned commit, which is normal for `-git` packages and is not malicious. The `pkgver()` call to `sh get-version.sh` executes a script from the upstream repo, but this is an ordinary version-determination step and not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard VCS PKGBUILD fetching upstream source; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD fetching upstream source; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,810
  Completion Tokens: 1,120
  Total Tokens: 8,930
  Total Cost: $0.000915
  Execution Time: 22.93 seconds

Final Status: SAFE


No issues found.
