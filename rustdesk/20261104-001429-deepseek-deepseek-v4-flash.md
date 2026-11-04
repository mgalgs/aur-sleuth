---
package: rustdesk
pkgver: 1.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 48268
completion_tokens: 14623
total_tokens: 62891
cost: 0.007053774
execution_time: 70.66
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-11-04T00:14:29Z
file_verdicts:
  - file: "0000-disable-update-check@rustdesk.patch"
    status: safe
    summary: Patch disables update check.
  - file: "0002-screen_retriever@rustdesk.patch"
    status: safe
    summary: Patch adds flutter dependency, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious indicators.
  - file: "0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch"
    status: safe
    summary: Version pin change for Flutter compatibility.
  - file: 0003-mkvparser.cc-cstdint.patch
    status: safe
    summary: Standard patch adding missing C standard header.
  - file: rustdesk.install
    status: safe
    summary: Routine systemd service management script, no security issues.
  - file: "0004-bindgen@rustdesk.patch"
    status: safe
    summary: Standard dependency version update patch; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD, no malicious behavior found.
---

Materializing rustdesk from local mirror...
Materialized rustdesk
Analyzing rustdesk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, which executes only top-level code. The top-level statements in this PKGBUILD are limited to variable/array assignments, function definitions, simple string comparisons, and array manipulation. No top-level command downloads or executes remote content, no obfuscated payloads are decoded, and no local data is exfiltrated.

The helper functions `_vercmp` and `_fn_VCL` are invoked at top level for version selection, but they only perform local string/shell arithmetic comparisons. The `test ... || exit 1` line is a version sanity check, not a security issue. Potentially more involved operations (patching, vcpkg bootstrap, build steps, Flutter download wrapper setup) are confined to `prepare()`, `build()`, and `package()`, which are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; no malicious code executes during printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: aom-03087864cf4bea6abb0d28f95cf7843511413d8f.tar.gz::https://aomedia.googlesource.com/aom/+archive/03087864cf4bea6abb0d28f95cf7843511413d8f.tar.gz, libyuv-0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz::https://chromium.googlesource.com/libyuv/libyuv/+archive/0faf8dd0e004520a61a603a4d2996d5ecc80dc3f.tar.gz
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch...
[0/8] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch...
LLM auditresponse for 0000-disable-update-check@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch disables the automatic update check in the RustDesk Flutter client by inserting `false &amp;&amp;` at the start of an `if` condition, ensuring the block is never executed. This is a standard packaging adjustment for AUR packages: the system package manager already handles updates, so in-application update checks are redundant and often disabled. There is no evidence of malicious behavior such as code injection, network requests to unexpected hosts, or data exfiltration. The change is trivial, transparent, and serves only to suppress an unwanted upstream feature.
</details>
<evidence>

</evidence>
<summary>Patch disables update check.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, 0000-disable-update-check@rustdesk.patch, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch...
+ Reviewed 0000-disable-update-check@rustdesk.patch. Status: SAFE -- Patch disables update check.
LLM auditresponse for 0002-screen_retriever@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a `screen_retriever` dependency to the Flutter project&#39;s `pubspec.yaml`.  The change is a standard Flutter packaging operation: adding a dependency declaration.  There is no obfuscated code, no network requests, no execution of arbitrary commands, and no deviation from normal packaging practices.  The `screen_retriever` dependency could be a legitimate Flutter package used for screen capture functionality in a remote desktop application.  While the addition of any third-party dependency carries inherent supply-chain risk, this patch alone provides no evidence of malicious intent or injection of harmful behavior.
</details>
<evidence></evidence>
<summary>Patch adds flutter dependency, no malicious indicators.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0002-screen_retriever@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
[2/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch...
+ Reviewed 0002-screen_retriever@rustdesk.patch. Status: SAFE -- Patch adds flutter dependency, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file used by the Arch User Repository (AUR). It does not contain any executable code; it only provides a declarative specification of the package's sources, dependencies, patches, and checksums.

All source URLs point to official upstream repositories or standard distribution mirrors (e.g., github.com/rustdesk, github.com/microsoft/vcpkg, googleapis.com for Flutter, aomedia.googlesource.com, chromium.googlesource.com). There are no anomalous or suspicious network endpoints. Every external source is pinned to a specific tag or commit hash, which is an exemplary packaging practice.

Several sources have their checksums set to `SKIP`. According to the provided auditing criteria, `SKIP` checksums are explicitly not to be considered evidence of malice, as they are standard for local patches and in situations where a matching hash is not provided by the upstream release. The `makedepends` list includes standard build tools like `curl`, `wget`, and `git`, which are expected for downloading and compiling a project of this complexity. The patches listed are standard local modifications (e.g., disabling the update check to align with distribution package management).

No evidence of obfuscation, data exfiltration, backdoors, or supply-chain injection is present in this file. It is a standard and well-formed AUR package specification.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no malicious indicators.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
[3/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious indicators.
LLM auditresponse for 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file modifies the version constraint for the `extended_text` Flutter dependency from `14.0.0` to `13.1.0`. The patch filename explicitly states it is for compatibility with Flutter version 3.22.3. This is a standard maintenance practice and does not contain any obfuscation, network requests, file operations, or other indicators of a supply-chain attack. No malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Version pin change for Flutter compatibility.</summary>
</security_assessment>

[3/8] Reviewing 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch, 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
[4/8] Reviewing 0003-mkvparser.cc-cstdint.patch, 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed 0001-extended_text-drop-version-for-flutter.3.22.3@rustdesk.patch. Status: SAFE -- Version pin change for Flutter compatibility.
LLM auditresponse for 0003-mkvparser.cc-cstdint.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard unified diff (patch) that adds a missing `#include &lt;cstdint&gt;` header to a file called `mkvparser.cc`.  Adding explicit C standard library includes is a routine maintenance operation, often required when building code against different libc implementations that enforce stricter include requirements.  There is no obfuscation, no network activity, no execution of untrusted code, and no exfiltration of data. The patch is entirely consistent with normal packaging and build-troubleshooting practices.
</details>
<evidence></evidence>
<summary>Standard patch adding missing C standard header.</summary>
</security_assessment>

[5/8] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed 0003-mkvparser.cc-cstdint.patch. Status: SAFE -- Standard patch adding missing C standard header.
[5/8] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD, rustdesk.install...
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install script for managing the `rustdesk.service` systemd unit. The `post_install` and `post_upgrade` functions check if the service is enabled and, if so, perform a daemon-reload and restart the service. These are routine and expected operations for any package that ships a systemd service file. There are no network requests, obfuscated code, file operations outside the service scope, or any indicators of malicious intent. The use of HTML entity `&apos;` for single quotes is simply an artifact of the file being embedded in XML and has no security relevance.
</details>
<evidence></evidence>
<summary>Routine systemd service management script, no security issues.</summary>
</security_assessment>

[6/8] Reviewing 0004-bindgen@rustdesk.patch, PKGBUILD...
+ Reviewed rustdesk.install. Status: SAFE -- Routine systemd service management script, no security issues.
LLM auditresponse for 0004-bindgen@rustdesk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file updates the `bindgen` dependency from version 0.65 to 0.72.1 in a Rust project. It adds a `[patch.crates-io]` section that overrides the source of `bindgen` to the official `rust-lang/rust-bindgen` GitHub repository at tag `v0.72.1`, and adjusts the version constraint in `libs/scrap/Cargo.toml`. There is no obfuscation, no network requests to unexpected hosts, no execution of external code, and no deviation from normal dependency management practices for a Rust package. The changes are consistent with routine upstream version bumps and do not introduce any supply-chain injection vectors.
</details>
<evidence>
</evidence>
<summary>Standard dependency version update patch; no malicious content.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed 0004-bindgen@rustdesk.patch. Status: SAFE -- Standard dependency version update patch; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for the `rustdesk` remote desktop application. All source downloads originate from the project’s own upstream (GitHub), official Flutter CDN, and well-known dependency repositories (vcpkg, Meson, pkgconf, libjpeg-turbo, libvpx, FFmpeg, etc.). No obfuscated code, suspicious network requests, or attempts to exfiltrate data are present. The build process runs `vcpkg`, `cargo`, `flutter`, and standard tools; the `package()` function installs files exclusively into the package staging directory (`$pkgdir`). The patches and helper functions (e.g. `_vercmp`, `_fn_VCL`, `_mod_py`) are normal AUR-maintainer adaptations for version selection, dependency management, and build-script transparency. There are no `eval`, `curl|bash`, base64-encoded commands, or hidden network callbacks. The SKIP checksums for VCS and googlesource downloads are correctly excluded per standard practice, not indicative of malice. The PKGBUILD is a legitimate, well-maintained recipe with no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,268
  Completion Tokens: 14,623
  Total Tokens: 62,891
  Total Cost: $0.007054
  Execution Time: 70.66 seconds

Final Status: SAFE


No issues found.
