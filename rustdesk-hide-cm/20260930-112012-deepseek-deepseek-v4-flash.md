---
package: rustdesk-hide-cm
pkgver: 1.4.9
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 54696
completion_tokens: 68137
total_tokens: 122833
cost: 0.02673580
execution_time: 367.45
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-30T11:20:11Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard Git ignore patterns, no security issues.
  - file: "0002-screen_retriever@rustdesk.patch"
    status: safe
    summary: Patch adds a dependency; no malicious content found.
  - file: 0003-mkvparser.cc-cstdint.patch
    status: safe
    summary: "Safe: one-line include fix, no malicious content."
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no malicious content.
  - file: "0000-disable-update-check@rustdesk.patch"
    status: safe
    summary: Patch disables update check, no malicious behavior detected.
  - file: "0005-enable-connection-manager-visibility@rustdesk.patch"
    status: safe
    summary: Standard feature patch, no malicious behavior found.
  - file: "0004-bindgen@rustdesk.patch"
    status: safe
    summary: Routine dependency version patch, no malicious behavior found.
  - file: rustdesk.install
    status: safe
    summary: Normal systemd service restart scriptlet.
  - file: README.md
    status: safe
    summary: Documentation file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard AUR build with pinned upstream sources and no malicious behavior."
---

Materializing rustdesk-hide-cm from local mirror...
Materialized rustdesk-hide-cm
Analyzing rustdesk-hide-cm AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD contains no top-level commands that download or execute code, exfiltrate data, or modify system files.  
All code in the global scope is limited to variable assignments, array operations, function definitions, and version-compatibility checks (which may exit early but involve no dangerous actions).  
Command substitutions such as `$(_fn_VCL …)` invoke only internal shell functions (`_fn_VCL`, `_vercmp`) that perform string comparisons and arithmetic; no external programs are called.  
Thus, sourcing this PKGBUILD for `makepkg --printsrcinfo` does not execute any malicious behavior.</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: aom-10aece4157eb79315da205f39e19bf6ab3ee30d0.tar.gz::https://aomedia.googlesource.com/aom/+archive/10aece4157eb79315da205f39e19bf6ab3ee30d0.tar.gz, libyuv-0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz::https://chromium.googlesource.com/libyuv/libyuv/+archive/0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, 0000-disable-update-check@rustdesk.patch...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration file used in Git repositories. It contains typical patterns that ignore build artifacts, logs, patch residues, downloaded source archives, and makepkg working directories. There is no executable code, no network activity, no obfuscation, and no system modification commands. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard Git ignore patterns, no security issues.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
[1/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard Git ignore patterns, no security issues.
LLM auditresponse for 0002-screen_retriever@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file that adds a single line to a Flutter project&#39;s `pubspec.yaml` to include the `screen_retriever` dependency. The patch itself contains no executable code, no network requests, no obfuscation, and no system modifications. It is a routine and transparent dependency addition for the application&#39;s functionality. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Patch adds a dependency; no malicious content found.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch...
+ Reviewed 0002-screen_retriever@rustdesk.patch. Status: SAFE -- Patch adds a dependency; no malicious content found.
[2/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
LLM auditresponse for 0003-mkvparser.cc-cstdint.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch that adds an `#include &lt;cstdint&gt;` directive to `mkvparser.cc`. Such a patch is a common fix for modern C++ compilers that require explicit inclusion of `<cstdint>` for integer types like `int64_t`. There is no indication of malicious behavior: no network requests, no obfuscated code, no unexpected file operations, and no deviation from standard packaging practices. The patch is a straightforward, single-line addition to resolve a compilation issue.
</details>
<evidence></evidence>
<summary>Safe: one-line include fix, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
[3/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed 0003-mkvparser.cc-cstdint.patch. Status: SAFE -- Safe: one-line include fix, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file—it contains only declarative fields such as sources, dependencies, checksums, and package metadata. No executable code, no instructions, no obfuscation, and no unexpected network destinations are present. All external source URLs point to the project’s own upstream repositories or to well-known official distribution hosts (GitHub, GoogleSource, Chromium Googlesource, Google Storage). While several sources have `SKIP` checksums (e.g., libyuv, flutter), this is a trust/hygiene choice rather than evidence of malice, and the instructions explicitly state that `SKIP` checksums alone do not warrant an UNSAFE decision. No supply-chain attack indicators—such as exfiltration, backdoors, or execution of unchecked code—are present.
</details>
<evidence>
</evidence>
<summary>Declarative metadata file with no malicious content.</summary>
</security_assessment>

[3/10] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0004-bindgen@rustdesk.patch, 0005-enable-connection-manager-visibility@rustdesk.patch...
[4/10] Reviewing 0000-disable-update-check@rustdesk.patch, 0004-bindgen@rustdesk.patch, 0005-enable-connection-manager-visibility@rustdesk.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no malicious content.
LLM auditresponse for 0000-disable-update-check@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the condition controlling an update-notification card in the RustDesk UI by inserting `false &amp;&amp;` at the beginning, effectively disabling the entire block. The change is a straightforward, non-obfuscated diff that prevents the application from showing an update prompt. There is no evidence of malicious behavior: no network requests, no execution of external code, no data exfiltration, and no hidden commands. Disabling update checks is a common packaging customization and does not, by itself, constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Patch disables update check, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing 0004-bindgen@rustdesk.patch, 0005-enable-connection-manager-visibility@rustdesk.patch...
+ Reviewed 0000-disable-update-check@rustdesk.patch. Status: SAFE -- Patch disables update check, no malicious behavior detected.
[5/10] Reviewing 0004-bindgen@rustdesk.patch, 0005-enable-connection-manager-visibility@rustdesk.patch, PKGBUILD...
LLM auditresponse for 0005-enable-connection-manager-visibility@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies Rust and Flutter source code of the `rustdesk` application to unconditionally enable the "hide connection manager" feature, removing checks that previously restricted it to pro or custom clients. The changes are straightforward: they remove conditional guards, uncomment UI code that was commented out, and adjust the visibility logic for the CM window.  

There is no obfuscation, no network requests, no downloading or execution of external code, no exfiltration of data, and no tampering with system files outside the application scope. The patch only alters the application's own feature gating and UI, consistent with the package's stated purpose of enabling `hide_cm` without a pro license. This is a standard AUR feature patch and does not contain any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard feature patch, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing 0004-bindgen@rustdesk.patch, 0005-enable-connection-manager-visibility@rustdesk.patch, PKGBUILD, README.md...
[6/10] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD, README.md...
+ Reviewed 0005-enable-connection-manager-visibility@rustdesk.patch. Status: SAFE -- Standard feature patch, no malicious behavior found.
LLM auditresponse for 0004-bindgen@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard patch that updates the `bindgen` dependency version in Cargo.toml files for the rustdesk project. The patch changes the version constraint from `0.65` to `0.72.1` in the scrap library and adds a git source override pointing to the official Rust bindgen repository (`https://github.com/rust-lang/rust-bindgen`) with a specific tag (`v0.72.1`). This is a routine dependency bump to fix build compatibility with Clang22, as explained in the comment. There is no obfuscation, no network requests beyond referencing the official upstream repository, no execution of arbitrary code, and no exfiltration of data. The patch only modifies configuration files for Rust's Cargo build system, which is expected packaging practice.
</details>
<evidence></evidence>
<summary>Routine dependency version patch, no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD, README.md, rustdesk.install...
[7/10] Reviewing PKGBUILD, README.md, rustdesk.install...
+ Reviewed 0004-bindgen@rustdesk.patch. Status: SAFE -- Routine dependency version patch, no malicious behavior found.
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `rustdesk.install` script is a standard Arch Linux package installation scriptlet that only interacts with systemd to restart the `rustdesk.service` if it is enabled. There are no network requests, obfuscated commands, file operations outside of the package scope, or any other indicators of malicious activity. The script is consistent with expected packaging practices for a package that provides a systemd service.
</details>
<evidence></evidence>
<summary>Normal systemd service restart scriptlet.</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, README.md...
+ Reviewed rustdesk.install. Status: SAFE -- Normal systemd service restart scriptlet.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `README.md` providing documentation for the AUR package `rustdesk-hide-cm`. It describes the package&#8217;s purpose, build instructions, and CI workflow. No executable code, commands to run, or suspicious network operations are present. All referenced commands (e.g., `makepkg --syncdeps`, `makepkg --printsrcinfo`) are standard Arch Linux packaging tools. The CI publication step uses SSH with a pinned host key, which is a standard practice for AUR packages. There is no evidence of malicious behavior, obfuscation, or unexpected system modifications.
</details>
<evidence>
</evidence>
<summary>Documentation file, no security issues.</summary>
</security_assessment>

[9/10] Reviewing PKGBUILD...
+ Reviewed README.md. Status: SAFE -- Documentation file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
All downloads come from the package's own upstream sources and official toolchain hosts (github.com for rustdesk, hbb_common, vcpkg, and related libraries; googlesource.com; storage.googleapis.com for Flutter; pub.dev and crates.io via flutter and cargo commands). Sources are referenced by pinned tags or commit hashes, and md5/sha256 checksums are provided. The only checksums set to SKIP are the two googlesource tarballs, which is a known hygiene issue for gitiles archives, not evidence of malicious behavior.

The build uses standard packaging flows: vcpkg, cargo, flutter, and the upstream build.py. Helper functions modify build.py to echo commands and disable makepkg/git checkout calls, and a local cstdint compatibility patch is applied to mkvparser.cc files under ~/.cargo/git. These are build adaptations within the build environment. There is no curl-to-shell, eval, base64 decoding, data exfiltration, unexpected network destination, backdoor, or tampering with system files outside the package build.

Minor notes: the generated desktop file registers http/https URI schemes, and the referenced rustdesk.install script is outside this file and was not reviewed. These are considerations, but no injected malicious code is evident.
</details>
<evidence></evidence>
<summary>Safe: standard AUR build with pinned upstream sources and no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard AUR build with pinned upstream sources and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,696
  Completion Tokens: 68,137
  Total Tokens: 122,833
  Total Cost: $0.026736
  Execution Time: 367.45 seconds

Final Status: SAFE


No issues found.
