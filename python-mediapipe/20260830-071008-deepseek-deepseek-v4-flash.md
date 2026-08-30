---
package: python-mediapipe
pkgver: 1.0.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13410
completion_tokens: 1889
total_tokens: 15299
cost: 0.00138604032
execution_time: 32.41
files_reviewed: 4
files_skipped: 2
maintainer_files: 6
source_fetch: ok
upstream_files: 4702
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T07:10:07Z
file_verdicts:
  - file: 0004-use-opencv-headers.patch
    status: skipped
    summary: "Skipping binary file: 0004-use-opencv-headers.patch"
  - file: 0006-opencv5-geometry-header.patch
    status: safe
    summary: Patch adds OpenCV 5 geometry header; no security concerns.
  - file: 0007-bump-rules-java.patch
    status: skipped
    summary: "Skipping binary file: 0007-bump-rules-java.patch"
  - file: 0005-set-hermetic-python-version-and-disable-odml-converter.patch
    status: safe
    summary: Patch sets Python version, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
---

Cloning https://aur.archlinux.org/python-mediapipe.git...
Cloned python-mediapipe
Analyzing python-mediapipe AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, function definitions, and array declarations at top-level scope. No commands (e.g., `$(...)`, backticks, or function calls) execute when sourcing the file. The `pkgver()` function is not defined. The `source` array references standard GitHub tarballs and patch files under the official google-ai-edge/mediapipe repository, all with provided SHA256 checksums. The potentially dangerous commands (`wget`, `chmod`, `patch`, `sed`) are confined to `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, fetching sources and parsing the PKGBUILD poses no risk.
</details>
<evidence></evidence>
<summary>No malicious code executes at parse or fetch time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at parse or fetch time.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/mediapipe-1.0.0/setup.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 4702 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, 0004-use-opencv-headers.patch...
[0/6] Reviewing .SRCINFO, 0004-use-opencv-headers.patch, 0005-set-hermetic-python-version-and-disable-odml-converter.patch...
[1/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch...
! Reviewed 0004-use-opencv-headers.patch. Status: SKIPPED -- Skipping binary file: 0004-use-opencv-headers.patch
[1/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0006-opencv5-geometry-header.patch...
LLM auditresponse for 0006-opencv5-geometry-header.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward patch to the MediaPipe framework's OpenCV compatibility layer. It adds a conditional include of `<opencv2/geometry/2d.hpp>` when the OpenCV major version is 5 or greater. There is no obfuscated code, no network requests, no file operations, no execution of arbitrary commands, and no exfiltration of data. The patch only adjusts header includes to support a newer version of OpenCV, which is a standard upstream compatibility improvement. Nothing in this file deviates from expected packaging or development practices.
</details>
<evidence></evidence>
<summary>Patch adds OpenCV 5 geometry header; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0006-opencv5-geometry-header.patch, 0007-bump-rules-java.patch...
[2/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0007-bump-rules-java.patch...
+ Reviewed 0006-opencv5-geometry-header.patch. Status: SAFE -- Patch adds OpenCV 5 geometry header; no security concerns.
[2/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0007-bump-rules-java.patch, PKGBUILD...
[3/6] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, PKGBUILD...
! Reviewed 0007-bump-rules-java.patch. Status: SKIPPED -- Skipping binary file: 0007-bump-rules-java.patch
LLM auditresponse for 0005-set-hermetic-python-version-and-disable-odml-converter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file modifies the `.bazelrc` build configuration by adding a duplicate line to force the use of Python 3.12 with Bazel's hermetic Python support. This is a standard build configuration change, common in packaging to ensure compatibility. There is no obfuscation, network activity, file exfiltration, or execution of untrusted code. The patch content is exactly what it claims to be and does not introduce any security risk.
</details>
<evidence>
</evidence>
<summary>Patch sets Python version, no malicious code.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed 0005-set-hermetic-python-version-and-disable-odml-converter.patch. Status: SAFE -- Patch sets Python version, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It defines the package name, version, description, dependencies, and source URLs. All sources point to the official upstream repository (`github.com/google-ai-edge/mediapipe`) with pinned commit tarballs and several patches, each accompanied by specific SHA-256 checksums. There is no executable code, no obfuscation, no network exfiltration, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python package that builds with Bazel. All source archives are pinned with SHA-256 checksums. The Bazel binary is downloaded from the official GitHub releases of the Bazel project (github.com/bazelbuild/bazel), which is a legitimate build dependency for this package. The download is not checksummed, but this is a build-time tool fetch from the project's own upstream and does not constitute a supply-chain attack. The remaining operations (applying patches, modifying setup.py, building with `python -m build`, installing with `python -m installer`, and patching ELF files with `patchelf`) are all routine packaging steps. There is no obfuscated code, no unexpected network connections, no data exfiltration, and no execution of attacker-controlled scripts.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0004-use-opencv-headers.patch, 0007-bump-rules-java.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,410
  Completion Tokens: 1,889
  Total Tokens: 15,299
  Total Cost: $0.001386
  Execution Time: 32.41 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0004-use-opencv-headers.patch: [SKIPPED] Skipping binary file: 0004-use-opencv-headers.patch

0007-bump-rules-java.patch: [SKIPPED] Skipping binary file: 0007-bump-rules-java.patch
