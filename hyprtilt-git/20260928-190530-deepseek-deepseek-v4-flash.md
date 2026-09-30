---
package: hyprtilt-git
pkgver: 0.1.0.r0.g9e57335
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19294
completion_tokens: 3061
total_tokens: 22355
cost: 0.00154427616
execution_time: 69.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T19:05:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no malicious content
  - file: LICENSE
    status: safe
    summary: Standard GPLv3 license text; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust VCS PKGBUILD; no malicious behavior found. Safe.
---

Materializing hyprtilt-git from local mirror...
Materialized hyprtilt-git
Analyzing hyprtilt-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and function definitions at the global scope. There are no command substitutions, backtick executions, or any code that runs during sourcing beyond assigning strings to variables. The `source` array and `sha256sums` are simple assignments with no side effects. Since `makepkg --printsrcinfo` only executes global-scope code and does not invoke the defined functions, there is no risk of executing malicious operations during this step.
</details>
<evidence></evidence>
<summary>No malicious global code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard Arch Linux package metadata file for the AUR package `hyprtilt-git`. It contains only declarative information: package name, version, dependencies, source URL (pointing to the project's own GitHub repository), and checksum settings (`sha256sums = SKIP`, which is normal for VCS packages). There are no executable instructions, no network requests, no obfuscation, and no deviation from standard packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no malicious content</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no malicious content
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard GNU General Public License version 3 text. It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is a plaintext license file commonly included in software packages. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard GPLv3 license text; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard GPLv3 license text; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux PKGBUILD for a Rust `-git` package. It clones the project from its own declared upstream GitHub repository via the `source` array, fetches lockfile-pinned Cargo dependencies, builds with `cargo --frozen`, runs the test suite, and installs the binary, man page, shell completions, license, and README into `$pkgdir`. All network activity (git clone of the package's upstream repo, `cargo fetch` of Cargo.lock-pinned crates) is expected and normal. There is no obfuscation, no use of eval/base64/curl/wget, no exfiltration, and no modification of files outside the build and package directories.

The only points worth noting are routine for VCS packages: `sha256sums` is `SKIP` (required for git sources) and the source tracks the upstream default branch rather than a pinned commit. The build also executes the freshly compiled binary to generate the man page and completions; this runs upstream code during the build, but that is inherent to building and testing a package from source, and the outputs are only installed into the package's own documentation paths. Nothing indicates injected malicious code or deviation from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard Rust VCS PKGBUILD; no malicious behavior found. Safe.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust VCS PKGBUILD; no malicious behavior found. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,294
  Completion Tokens: 3,061
  Total Tokens: 22,355
  Total Cost: $0.001544
  Execution Time: 69.99 seconds

Final Status: SAFE


No issues found.
