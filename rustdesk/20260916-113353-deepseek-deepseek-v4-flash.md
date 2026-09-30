---
package: rustdesk
pkgver: 1.4.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 47657
completion_tokens: 9075
total_tokens: 56732
cost: 0.005830895042
execution_time: 141.3
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-16T11:33:50Z
file_verdicts:
  - file: "0000-disable-update-check@rustdesk.patch"
    status: safe
    summary: Benign patch disables RustDesk update card; no security threat found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: "0002-screen_retriever@rustdesk.patch"
    status: safe
    summary: Patch adds dependency, no malicious behavior.
  - file: "0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch"
    status: safe
    summary: Benign version pin update; not malicious.
  - file: 0003-mkvparser.cc-cstdint.patch
    status: safe
    summary: Patch adds standard include; no malicious content.
  - file: rustdesk.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: "0004-bindgen@rustdesk.patch"
    status: safe
    summary: Patch updates bindgen version; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Materializing rustdesk from local mirror...
Materialized rustdesk
Analyzing rustdesk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists only of variable/array declarations, function definitions, and a few invocations of those functions that perform string operations with bash built-ins (e.g., `_vercmp`, `_fn_VCL`, `_fn_hwcodec`). No external commands—such as `curl`, `wget`, `python`, `sed`, or `eval`—are executed when the file is sourced. The sole non‑built‑in commands (`vercmp`, `python`, `sed`, etc.) appear exclusively inside `prepare()`, `build()`, and other functions that are **not** called during `makepkg --printsrcinfo`. Conditional checks that may call `exit 1` are simple version sanity tests and do not perform any network or file‑system operations. Therefore, sourcing this PKGBUILD to obtain metadata poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code in top‑level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top‑level scope.
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
This patch is a simple upstream source modification for the RustDesk AUR package. It changes the condition guarding the update-check/install card in `desktop_home_page.dart` from the normal condition to `false &amp;&amp; ...`, effectively disabling the in-app update prompt. This is a common, non-malicious packaging tweak: it prevents RustDesk from suggesting a newer upstream release that may not match the packaged version. The patch performs no network requests, does not execute downloaded code, does not touch files outside the application source tree, and contains no obfuscation or suspicious operations. The change is limited to one boolean condition and is consistent with normal downstream patching practices.
</details>
<evidence>
</evidence>
<summary>
Benign patch disables RustDesk update card; no security threat found.</summary>
</security_assessment>

[0/8] Reviewing 0000-disable-update-check@rustdesk.patch, .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
+ Reviewed 0000-disable-update-check@rustdesk.patch. Status: SAFE -- Benign patch disables RustDesk update card; no security threat found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file for `rustdesk`. It declares sources from well-known upstream repositories (GitHub, GoogleSource, Chromium, Flutter official storage), along with several patch files. All source URLs point to official project repositories or the Flutter SDK release server. The SKIP checksums appear only on two sources (`flutter_linux_3.24.5-stable.tar.xz` and `aom-...tar.gz`), which is a common practice for binary or archive sources that lack upstream checksums or for VCS snapshots. No suspicious network destinations, obfuscated commands, or unusual system modifications are present. The file is purely declarative and does not contain any executable code that could introduce a supply-chain attack. All dependencies are standard system libraries and build tools.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
[2/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for 0002-screen_retriever@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file adds a single line to the Flutter project's `pubspec.yaml`, introducing a dependency on `screen_retriever`. This is a standard packaging operation—modifying dependency lists is routine in development. There is no obfuscated code, network requests, command execution, or any deviation from normal build configuration. Without additional context (e.g., the dependency being compromised or the patch coming from an untrusted source), this change does not constitute malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Patch adds dependency, no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
[3/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed 0002-screen_retriever@rustdesk.patch. Status: SAFE -- Patch adds dependency, no malicious behavior.
LLM auditresponse for 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch simply downgrades the pinned version of the `extended_text` dependency from 14.0.0 to 13.1.0 in the project's `pubspec.yaml`.  The change is a one-line version substitution with no suspicious encoding, no executable commands, no network operations, and no alteration of any build or packaging logic.  There is no evidence of obfuscation, backdoors, data exfiltration, or any behaviour that deviates from normal dependency version adjustments.  Even if the version change were questionable from a quality standpoint, it does not meet the criteria for a supply-chain attack; the file itself is a standard patch that carries no active threat.
</details>
<evidence>
</evidence>
<summary>Benign version pin update; not malicious.</summary>
</security_assessment>

[4/8] Reviewing 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch. Status: SAFE -- Benign version pin update; not malicious.
[4/8] Reviewing 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
LLM auditresponse for 0003-mkvparser.cc-cstdint.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that adds a `#include &lt;cstdint&gt;` to a C++ source file (`mkvparser.cc`). The patch is minimal and only inserts a standard library include. There is no evidence of malicious behavior, obfuscated code, network requests, file operations, or any deviation from normal packaging practices. The patch is a typical upstream compatibility fix for modern C++ compilation environments.
</details>
<evidence></evidence>
<summary>Patch adds standard include; no malicious content.</summary>
</security_assessment>

[4/8] Reviewing 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch, PKGBUILD, rustdesk.install...
[5/8] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD, rustdesk.install...
+ Reviewed 0003-mkvparser.cc-cstdint.patch. Status: SAFE -- Patch adds standard include; no malicious content.
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script for a package that provides a systemd service. It contains only two functions: `post_install` and `post_upgrade`. Both check if the `rustdesk.service` systemd unit is enabled using `systemctl -q is-enabled` and, if so, restart the service (and also daemon-reload on install). There is no obfuscation, no network requests, no execution of untrusted content, and no modification of files outside the package's scope. This is routine packaging behavior for any service-based package.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed rustdesk.install. Status: SAFE -- Standard package install script, no malicious behavior.
LLM auditresponse for 0004-bindgen@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file updates the `bindgen` dependency from version 0.65 to 0.72.1 in the rustdesk package, adding a `[patch.crates-io]` entry pointing to the official `rust-lang/rust-bindgen` GitHub repository with tag `v0.72.1`. The change is documented as a fix for compatibility with Clang22. No obfuscation, unexpected network destinations, data exfiltration, or other malicious behavior is present. The patch follows standard Rust dependency management practices and is limited to version bumps and a crate override from the official upstream source.
</details>
<evidence>
</evidence>
<summary>Patch updates bindgen version; no malicious content.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed 0004-bindgen@rustdesk.patch. Status: SAFE -- Patch updates bindgen version; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-maintained packaging file for the rustdesk remote desktop application. All source downloads originate from the official project repositories (GitHub, Google Storage, etc.). The modifications to `build.py` in the `_mod_py` function are legitimate packaging workarounds—they disable nested `makepkg` calls and replace `git checkout` with `true` when using a tarball source, preventing build errors. There is no obfuscated code, no exfiltration, no execution of untrusted external scripts, and no deviation from expected AUR packaging practices. Checksums are properly set, with SKIP only on sources that inherently lack stable hashes (git archives, googlesource tarballs). No evidence of supply-chain injection was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,657
  Completion Tokens: 9,075
  Total Tokens: 56,732
  Total Cost: $0.005831
  Execution Time: 141.30 seconds

Final Status: SAFE


No issues found.
