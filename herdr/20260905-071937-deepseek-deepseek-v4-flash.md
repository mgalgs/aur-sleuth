---
package: herdr
pkgver: 0.8.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8818
completion_tokens: 1796
total_tokens: 10614
cost: 0.00106502620
execution_time: 37.11
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T07:19:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
---

Materializing herdr from local mirror...
Materialized herdr
Analyzing herdr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists solely of variable assignments (pkgname, pkgver, pkgrel, etc.) and function definitions (prepare, build, package). There are no command substitutions, backticks, eval, or any other constructs that would execute code during sourcing by makepkg --printsrcinfo. The only variable that uses a parameter expansion is source=("${pkgname}-${pkgver}.tar.gz::..."), which is standard and harmless. All potentially dangerous operations (cargo fetch, zig fetch, compilation, installation) are confined inside the prepare(), build(), and package() functions, which are not invoked by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope; all functions dormant.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; all functions dormant.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file. It defines the package `herdr`, a terminal workspace manager for AI coding agents. The source is a tarball from the project's own GitHub repository (`https://github.com/ogulcancelik/herdr/archive/refs/tags/v0.8.2.tar.gz`) with a valid SHA-256 checksum. Dependencies are limited to `cargo`, `git`, `zig0.15`, `gcc-libs`, and `glibc` — all standard build and runtime dependencies. There is no evidence of malicious content, obfuscation, or unexpected operations. The file does not contain any executable code; it is purely declarative.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific version tag with a valid SHA256 checksum, and the build process uses `cargo fetch --locked` and `cargo build --frozen`, ensuring reproducibility. The `prepare()` function contains a loop that automatically fetches Zig dependencies by reading URLs from the project's own vendor and cache files — this is a legitimate build automation step for a project that depends on Zig, not an injection of external code. The `package()` function installs the binary and generates shell completions by running the built binary, which is a common pattern. There are no obfuscated commands, no downloads from unexpected hosts, no exfiltration of local data, and no attempts to modify system files outside the package's scope. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,818
  Completion Tokens: 1,796
  Total Tokens: 10,614
  Total Cost: $0.001065
  Execution Time: 37.11 seconds

Final Status: SAFE


No issues found.
