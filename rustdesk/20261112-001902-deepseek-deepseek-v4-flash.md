---
package: rustdesk
pkgver: 1.5.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 48023
completion_tokens: 7621
total_tokens: 55644
cost: 0.00569385
execution_time: 46.69
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-11-12T00:19:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: "0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch"
    status: safe
    summary: Routine dependency version downgrade, no security concerns.
  - file: "0000-disable-update-check@rustdesk.patch"
    status: safe
    summary: Patch disables update check; safe.
  - file: 0003-mkvparser.cc-cstdint.patch
    status: safe
    summary: Benign patch adding a standard C++ include.
  - file: "0004-bindgen@rustdesk.patch"
    status: safe
    summary: Routine dependency version update patch for build compatibility.
  - file: "0002-screen_retriever@rustdesk.patch"
    status: safe
    summary: Patch adds a Flutter dependency; no malicious behavior.
  - file: rustdesk.install
    status: safe
    summary: Standard package install script; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators.
---

Materializing rustdesk from local mirror...
Materialized rustdesk
Analyzing rustdesk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD contains no top-level code that downloads or executes payloads, exfiltrates data, or uses obfuscated commands. All global scope operations are limited to variable assignments, array manipulations, and function definitions. Functions that perform downloads or system modifications are defined but will not execute during `makepkg --printsrcinfo` (which only sources the file for variable extraction). The `exit 1` statement in the version check could cause an early abort but is a packaging guard, not a malicious action. Therefore sourcing this PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No top-level malicious code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code in PKGBUILD.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: aom-03087864cf4bea6abb0d28f95cf7843511413d8f.tar.gz::https://aomedia.googlesource.com/aom/+archive/03087864cf4bea6abb0d28f95cf7843511413d8f.tar.gz, libyuv-0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz::https://chromium.googlesource.com/libyuv/libyuv/+archive/0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch...
[0/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0000-disable-update-check@rustdesk.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the rustdesk AUR package. It declares upstream sources, checksums, dependencies, and build metadata — all pointing to legitimate project repositories (github.com/rustdesk, github.com/microsoft/vcpkg, github.com/mesonbuild/meson, googleapis.com for Flutter, etc.). All sources use HTTPS. The checksums include both pinned hashes and SKIP entries (the latter expected for VCS or unpinned sources). There are no encoded or obfuscated commands, no suspicious network destinations, and no payloads or system-modification logic present. The file is a normal AUR metadata declaration and does not contain any executable code or evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0000-disable-update-check@rustdesk.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[1/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
LLM auditresponse for 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch simply changes the version constraint for the `extended_text` dependency from `14.0.0` to `13.1.0` in a Flutter project's `pubspec.yaml`. This is a routine dependency version adjustment, likely to fix compatibility with the Flutter version used by the package. There is no evidence of malicious behavior such as data exfiltration, remote code execution, obfuscation, or system modification.
</details>
<evidence></evidence>
<summary>Routine dependency version downgrade, no security concerns.</summary>
</security_assessment>

[1/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
[2/8] Reviewing 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
+ Reviewed 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch. Status: SAFE -- Routine dependency version downgrade, no security concerns.
LLM auditresponse for 0000-disable-update-check@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a patch that disables the built-in update check in the RustDesk application by prepending `false &amp;&amp;` to an `if` condition. This is a standard practice for distribution-packaged software to prevent the application from independently checking for updates, as the system package manager handles updates. The patch contains no obfuscation, no network requests, no file system modifications, no execution of external commands, and no other signs of malicious activity. It is a simple, transparent change to the application&#x27;s behavior.
</details>
<evidence>
</evidence>
<summary>Patch disables update check; safe.</summary>
</security_assessment>

[2/8] Reviewing 0000-disable-update-check@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
[3/8] Reviewing 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed 0000-disable-update-check@rustdesk.patch. Status: SAFE -- Patch disables update check; safe.
LLM auditresponse for 0003-mkvparser.cc-cstdint.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a single `#include &lt;cstdint&gt;` line to the `mkvparser.cc` file. This is a standard, necessary include for C++ integer types (e.g., `int64_t`, `uint32_t`). There is no evidence of any malicious activity, obfuscation, network requests, file manipulation, or any deviation from normal packaging practices. The patch is entirely benign and resolves a compilation issue.
</details>
<evidence></evidence>
<summary>Benign patch adding a standard C++ include.</summary>
</security_assessment>

[3/8] Reviewing 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
[4/8] Reviewing 0002-screen_retriever@rustdesk.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed 0003-mkvparser.cc-cstdint.patch. Status: SAFE -- Benign patch adding a standard C++ include.
LLM auditresponse for 0004-bindgen@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file updating the `bindgen` dependency version in the rustdesk Rust project to fix build errors with Clang 22. The changes are:
- In the root `Cargo.toml`, a `[patch.crates-io]` entry pins `bindgen` to a specific tag (`v0.72.1`) from the official upstream repository (`https://github.com/rust-lang/rust-bindgen`).
- In `libs/scrap/Cargo.toml`, the dependency version is updated from `0.65` to `0.72.1`.

The git URL is the legitimate upstream source, and the tag is a valid release. This is an ordinary maintainer fix for compatibility, not a supply-chain attack. There are no suspicious network requests, obfuscation, dangerous commands, or data exfiltration. The file simply modifies dependency declarations in a standard way.
</details>
<evidence></evidence>
<summary>Routine dependency version update patch for build compatibility.</summary>
</security_assessment>

[5/8] Reviewing 0002-screen_retriever@rustdesk.patch, PKGBUILD...
+ Reviewed 0004-bindgen@rustdesk.patch. Status: SAFE -- Routine dependency version update patch for build compatibility.
[5/8] Reviewing 0002-screen_retriever@rustdesk.patch, PKGBUILD, rustdesk.install...
LLM auditresponse for 0002-screen_retriever@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adds a single line to a Flutter project's dependencies list: `screen_retriever:`. This is a standard operation when introducing a new Dart/Flutter package dependency. The patch contains no executable code, no network requests, no obfuscation, and no operations that could exfiltrate data, modify system files, or introduce backdoors. Adding a dependency without a version constraint is common practice in Flutter projects and is not, by itself, a security threat. There is no evidence of genuinely malicious or dangerous behavior as defined in the audit guidelines. Consequently, the patch is assessed as SAFE.
</details>
<evidence></evidence>
<summary>Patch adds a Flutter dependency; no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, rustdesk.install...
+ Reviewed 0002-screen_retriever@rustdesk.patch. Status: SAFE -- Patch adds a Flutter dependency; no malicious behavior.
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`rustdesk.install`). It contains only `post_install()` and `post_upgrade()` functions that interact with systemd to mark the `rustdesk.service` unit for restart when the package is installed or upgraded. This is a routine and expected packaging practice. There are no network requests, no downloads, no obfuscated code, no execution of untrusted content, and no manipulation of files outside the package's own service. The script does nothing beyond setting a systemd property based on whether the service is enabled. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard package install script; no malicious content.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed rustdesk.install. Status: SAFE -- Standard package install script; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-documented build script for the RustDesk remote desktop application. All source downloads point to the official upstream repositories (GitHub, Google APIs, Chromium Googlesource, Flutter SDK storage) and are used only for building the package. The script includes helper functions for version consistency checks (`_prepare_vc`, `_dpr_check`, `_flutter_check`) which compare against upstream workflow files – these are proactive maintainer hygiene, not malicious. The `_mod_py` function disables `git checkout` and `makepkg` calls inside the upstream `build.py` to prevent accidental destructive actions during the PKGBUILD build; this is a safety measure. There is no obfuscated code, no unexpected network destinations, no data exfiltration, no backdoors, and no execution of untrusted downloaded code outside the normal build pipeline. The file is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,023
  Completion Tokens: 7,621
  Total Tokens: 55,644
  Total Cost: $0.005694
  Execution Time: 46.69 seconds

Final Status: SAFE


No issues found.
