---
package: linuxqq-wayland-fix-git
pkgver: r82.bc57567
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7660
completion_tokens: 3650
total_tokens: 11310
cost: 0.000418880
execution_time: 103.53
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T11:07:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: "Standard SRCINFO: no executable code, clean metadata."
  - file: PKGBUILD
    status: safe
    summary: Standard -git PKGBUILD with no malicious behavior detected.
---

Materializing linuxqq-wayland-fix-git from local mirror...
Materialized linuxqq-wayland-fix-git
Analyzing linuxqq-wayland-fix-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. All top-level statements are ordinary variable assignments: package metadata, dependencies, source array pointing to the package's own GitHub repository, and a SKIP checksum. No top-level command substitution, download-and-execute, data exfiltration, or obfuscated code is present.

The `pkgver()`, `build()`, and `package()` functions contain git and make commands, but these are not executed during `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. The source is an unpinned VCS checkout with a SKIP checksum, which is a normal AUR practice for `-git` packages and does not affect the safety of merely parsing metadata.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD content is standard metadata; printsrcinfo parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD content is standard metadata; printsrcinfo parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It defines a VCS package that fetches its source from the project's own GitHub repository using `git+https`. The `sha256sums` are set to `SKIP`, which is the expected and correct value for a `-git` package — this is not a security concern. The dependencies and optdepends are all legitimate and directly support the stated purpose of fixing Wayland issues for Linux QQ. There is no executable code, no network requests beyond the declared upstream source, and no obfuscation or unusual operations. The file is purely declarative and presents no signs of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard SRCINFO: no executable code, clean metadata.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard SRCINFO: no executable code, clean metadata.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `-git` PKGBUILD. The `source` clones the package's own upstream repository from GitHub using `git+https`, with a SKIP checksum, which is normal and expected for VCS packages. The `pkgver()` function uses routine `git rev-list`/`git rev-parse` commands. The `build()` and `package()` functions only run `make` and `make install` with standard `DESTDIR` and `PREFIX` arguments. There is no use of `eval`, `base64`, `curl|bash`, obfuscated strings, unexpected network hosts, or writes outside the package/install directories. The `@example.com` maintainer address is unusual for a published package, but it is not evidence of malicious behavior. No injected or malicious code was found.
</details>
<evidence>
</evidence>
<summary>
Standard -git PKGBUILD with no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git PKGBUILD with no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,660
  Completion Tokens: 3,650
  Total Tokens: 11,310
  Total Cost: $0.000419
  Execution Time: 103.53 seconds

Final Status: SAFE


No issues found.
