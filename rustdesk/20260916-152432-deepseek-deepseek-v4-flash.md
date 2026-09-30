---
package: rustdesk
pkgver: 1.4.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 47495
completion_tokens: 10304
total_tokens: 57799
cost: 0.00593040924
execution_time: 103.86
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-16T15:24:32Z
file_verdicts:
  - file: "0000-disable-update-check@rustdesk.patch"
    status: safe
    summary: Patch disables update check; no malicious behaviour.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no malicious content found.
  - file: 0003-mkvparser.cc-cstdint.patch
    status: safe
    summary: Benign patch adding cstdint include; no security concerns.
  - file: "0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch"
    status: safe
    summary: Dependency version downgrade patch, no malicious content.
  - file: "0004-bindgen@rustdesk.patch"
    status: safe
    summary: Benign dependency update for build compatibility.
  - file: "0002-screen_retriever@rustdesk.patch"
    status: safe
    summary: Patch adds a legitimate Flutter dependency; no security issues.
  - file: rustdesk.install
    status: safe
    summary: Standard service restart hook; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; conventional AUR packaging fetching pinned upstream dependencies.
---

Materializing rustdesk from local mirror...
Materialized rustdesk
Analyzing rustdesk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, array manipulations, and function definitions at the top level. The only function calls that execute during sourcing are `_fn_VCL`, `_vercmp`, `_fn_hwcodec`, and arithmetic comparisons on version strings — none of which perform downloads, execute external commands, or access the network. There is a single `exit 1` guard that triggers if version conditions are not met, but this only terminates sourcing early and does not execute any malicious payload. No dangerous command substitutions (`$(curl ...)`, `$(wget ...)`, `$(eval ...)`) or immediate file operations occur at global scope.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD for metadata is safe.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: aom-10aece4157eb79315da205f39e19bf6ab3ee30d0.tar.gz::https://aomedia.googlesource.com/aom/+archive/10aece4157eb79315da205f39e19bf6ab3ee30d0.tar.gz, libyuv-0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz::https://chromium.googlesource.com/libyuv/libyuv/+archive/0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing 0000-disable-update-check@rustdesk.patch...
[0/8] Reviewing 0000-disable-update-check@rustdesk.patch, .SRCINFO...
[0/8] Reviewing 0000-disable-update-check@rustdesk.patch, .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch...
LLM auditresponse for 0000-disable-update-check@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR patch that disables an update notification within the RustDesk application. The patch modifies a single conditional statement, wrapping the original condition with `if (false &amp;&amp; ...)`, which prevents the update card from being shown. This is a common and benign practice for packages distributed via package managers, as automatic update checks are redundant (the package manager handles updates) and often undesirable. There is no evidence of malicious behaviour: no obfuscation, no network requests, no data exfiltration, no backdoors, and no unexpected file operations. The patch purely alters the application's UI logic.
</details>
<evidence></evidence>
<summary>Patch disables update check; no malicious behaviour.</summary>
</security_assessment>

[0/8] Reviewing 0000-disable-update-check@rustdesk.patch, .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
+ Reviewed 0000-disable-update-check@rustdesk.patch. Status: SAFE -- Patch disables update check; no malicious behaviour.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the rustdesk AUR package. It contains only declarative data: package name, version, dependencies, source URLs, checksums, and options. There are no executable instructions, network calls, or any embedded code. All source URLs point to well-known upstream repositories (GitHub, Google's aomedia, Chromium googlesource, Flutter infra release). Some checksums are set to `SKIP`, which is a normal practice for binary or VCS sources and not inherently malicious. No obfuscation, dangerous commands, or unexpected file operations are present.
</details>
<evidence></evidence>
<summary>Metadata only; no malicious content found.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
[2/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no malicious content found.
LLM auditresponse for 0003-mkvparser.cc-cstdint.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a single-purpose patch that adds `#include &lt;cstdint&gt;` to `mkvparser.cc` in order to fix compilation with newer toolchains where fixed-width integer types may not be transitively included. There is no obfuscation, no network activity, no file manipulation, and no deviation from normal packaging/upstream patching practice. The patch modifies only an include directive and does not affect the runtime behavior of the application.

The change is consistent with common build-compatibility fixes and contains no suspicious or malicious content.
</details>
<evidence></evidence>
<summary>
Benign patch adding cstdint include; no security concerns.</summary>
</security_assessment>

[2/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
[3/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed 0003-mkvparser.cc-cstdint.patch. Status: SAFE -- Benign patch adding cstdint include; no security concerns.
LLM auditresponse for 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies the version of the `extended_text` dependency in a Flutter `pubspec.yaml` from `14.0.0` to `13.1.0`. There is no obfuscated code, no network requests, no file operations, no system modifications, and no execution of external commands. The change is a trivial version pin adjustment, consistent with normal packaging updates (e.g., to fix compatibility or work around upstream issues). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Dependency version downgrade patch, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
[4/8] Reviewing 0002-screen_retriever@rustdesk.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch. Status: SAFE -- Dependency version downgrade patch, no malicious content.
LLM auditresponse for 0004-bindgen@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch updates the `bindgen` dependency version from 0.65 to 0.72.1 in the `Cargo.toml` files of the rustdesk package, and adds a git source pinning to the official `rust-lang/rust-bindgen` repository with tag `v0.72.1`. The change is described as a fix for compatibility with Clang 22. There is no obfuscated code, no suspicious network targets (the git URL points to the official Rust Foundation repository), and no unexpected system modifications. The patch performs a routine dependency version upgrade, which is standard packaging practice. No evidence of malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Benign dependency update for build compatibility.</summary>
</security_assessment>

[4/8] Reviewing 0002-screen_retriever@rustdesk.patch, 0004-bindgen@rustdesk.patch, PKGBUILD, rustdesk.install...
[5/8] Reviewing 0002-screen_retriever@rustdesk.patch, PKGBUILD, rustdesk.install...
+ Reviewed 0004-bindgen@rustdesk.patch. Status: SAFE -- Benign dependency update for build compatibility.
LLM auditresponse for 0002-screen_retriever@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adds a single dependency (`screen_retriever`) to the Flutter `pubspec.yaml` for the RustDesk application. This is a standard packaging operation: adding a required package for the application's functionality. There is no obfuscation, network requests, code execution, or system modifications. The patch does not introduce any supply-chain attack vectors on its own. The addition of a dependency is normal and expected in a Flutter project's build configuration.
</details>
<evidence>
</evidence>
<summary>Patch adds a legitimate Flutter dependency; no security issues.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, rustdesk.install...
+ Reviewed 0002-screen_retriever@rustdesk.patch. Status: SAFE -- Patch adds a legitimate Flutter dependency; no security issues.
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the rustdesk package. It contains only `post_install` and `post_upgrade` hooks that restart the rustdesk systemd service if it is enabled. The script performs no network requests, no downloads, no execution of fetched code, no file exfiltration, and no obfuscation. Restarting the package's own service after install or upgrade is normal packaging behavior. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Standard service restart hook; no malicious behavior detected.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed rustdesk.install. Status: SAFE -- Standard service restart hook; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional AUR package for RustDesk. The sources point to the project's official upstream (GitHub rustdesk/rustdesk and rustdesk/hbb_common) and to the official upstreams of its build dependencies (vcpkg, Flutter, meson, pkgconf, FFmpeg, aom, libyuv, libvpx, opus, flutter_rust_bridge). These use versioned tags or commit IDs, and checksums are provided for most sources. The SKIP entries for googlesource/git archives are a checksum-hygiene choice, not evidence of malice.

The prepare and build logic performs version checks against upstream workflow files, applies compatibility patches, instruments build.py to echo os.system calls and prevent nested makepkg/mv calls, and applies a small cstdint compatibility patch to a Cargo dependency. The rm -rf lines in the file are commented out and not executed. There is no obfuscated or encoded payload, no data exfiltration, no curl-pipe-bash execution, no backdoor, and no modification of unrelated system files. The 0000-disable-update-check patch is a benign packaging choice so updates are handled by the package manager.
</details>
<evidence></evidence>
<summary>No malicious behavior; conventional AUR packaging fetching pinned upstream dependencies.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; conventional AUR packaging fetching pinned upstream dependencies.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,495
  Completion Tokens: 10,304
  Total Tokens: 57,799
  Total Cost: $0.005930
  Execution Time: 103.86 seconds

Final Status: SAFE


No issues found.
