---
package: draco-3d
pkgver: 1.5.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9277
completion_tokens: 1392
total_tokens: 10669
cost: 0.001097551
execution_time: 25.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T07:09:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
---

Materializing draco-3d from local mirror...
Materialized draco-3d
Analyzing draco-3d AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of standard variable definitions: `_name`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `makedepends`, `depends`, `source`, and `sha256sums`. There are no top-level command substitutions, function calls, downloads, or other executable operations that would run during sourcing.

The `build()` and `package()` functions contain normal CMake and `make install` steps, but those functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this gate. The `SKIP` checksum is also not relevant at this step because no sources are fetched or verified when generating `.SRCINFO`. No genuinely malicious behavior is present in the scoped execution path.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; only variable definitions execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; only variable definitions execute during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch User Repository (AUR) package. Its pattern (`*` followed by exceptions) ensures only the `PKGBUILD`, `.SRCINFO`, and itself are tracked in version control. This is conventional AUR practice and does not contain any malicious or suspicious content.</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `draco-3d` package. It declares the package name, version, description, dependencies, and source location. The source is a git repository from the official Google Draco GitHub repository pinned to a specific tag (`1.5.9`). The `sha256sums` is set to `SKIP`, which is normal and expected for VCS sources (git-based). There are no embedded scripts, no obfuscated commands, no unexpected network requests, and no system modifications. The file contains only declarative metadata conforming to AUR packaging practices. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package recipe for the `draco-3d` library from Google. The source is fetched from the official GitHub repository via a tagged git commit, which is a normal VCS source. The build and package functions use standard cmake and make install commands with no unusual arguments. The SHA256 checksums are correctly set to `SKIP` because the source is a git repository. There is no obfuscated code, no unexpected network requests (the only fetch is the declared upstream git source), no dangerous commands (eval, base64, curl, wget), and no tampering with system files outside the package's scope. The file follows AUR packaging best practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,277
  Completion Tokens: 1,392
  Total Tokens: 10,669
  Total Cost: $0.001098
  Execution Time: 25.76 seconds

Final Status: SAFE


No issues found.
