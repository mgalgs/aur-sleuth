---
package: linapple-git
pkgver: 2026.10.10.g86bee1c2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10004
completion_tokens: 2438
total_tokens: 12442
cost: 0.00342076
execution_time: 29.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T15:09:49Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious or suspicious behavior found.
  - file: linapple.sh
    status: safe
    summary: Standard per-user wrapper for launching linapple; no malicious or suspicious behavior found.
---

Materializing linapple-git from local mirror...
Materialized linapple-git
Analyzing linapple-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No code outside of function definitions is executed during `makepkg --printsrcinfo`. The global scope contains only variable assignments, comments, and array definitions. There are no command substitutions, no `eval`, no `curl|bash`, or any other constructs that would execute when the PKGBUILD is sourced. The patch download in the `source` array is a URL string, not executed. All potentially dangerous operations are inside `pkgver()`, `prepare()`, `build()`, `check()`, and `package()`, which are out of scope for this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution during source</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution during source
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, linapple.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file declares a standard AUR VCS package for `linapple-git`, an Apple 2e emulator. The primary source is the project's own upstream Git repository, with `sha256sums = SKIP`, which is normal and required for VCS sources. The additional patch source is fetched from GitHub's patch-diff endpoint for upstream PR #364 and has a pinned SHA-256 checksum, so it is verified at build time.

There are no suspicious network destinations, no encoded or obfuscated commands, no unexpected file operations, and no attempt to fetch or execute code outside the package's declared upstream sources. The dependencies listed are ordinary build/runtime dependencies for an emulator package. This file contains only package metadata and follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, linapple.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package. The `source` array clones the package's own upstream repository from `https://github.com/linappleii/linapple.git` and applies a patch fetched from the same upstream project's GitHub pull request endpoint, with a fixed SHA256 checksum for that patch. `sha256sums=(SKIP)` for the git source is required and normal for VCS packages.

The `prepare()`, `build()`, `check()`, and `package()` functions only apply a patch, run `cmake`, `ctest`, and install build artifacts into `$pkgdir`. There are no suspicious network requests, no calls to `curl`, `wget`, `eval`, `base64`, or other obfuscated or encoded commands, no exfiltration of local data, and no unexpected file system modifications. The unpinned git branch is a common and acceptable characteristic of AUR `-git` packages; it is a reproducibility concern rather than evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>
Standard AUR git package; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing linapple.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious or suspicious behavior found.
LLM auditresponse for linapple.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application wrapper script for a package installed under `/usr/share/linapple`. It creates a per-user configuration directory at `~/.linapple`, refreshes symlinks pointing back to the read-only application directory, creates a default config file if absent, and then executes the real application binary.

There is no suspicious network activity, no encoded or obfuscated commands, no exfiltration of user data, and no execution of code fetched from an external source. The `find` and `cp` operations are confined to the user's own `~/.linapple` directory and the package's own `/usr/share/linapple` files. A minor robustness note: the script `cd`s to `$progHome` before ensuring it exists, which could cause odd behavior on a truly first run, but this is not a security concern and does not indicate malice.
</details>
<evidence>
</evidence>
<summary>
Standard per-user wrapper for launching linapple; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed linapple.sh. Status: SAFE -- Standard per-user wrapper for launching linapple; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,004
  Completion Tokens: 2,438
  Total Tokens: 12,442
  Total Cost: $0.003421
  Execution Time: 29.06 seconds

Final Status: SAFE


No issues found.
