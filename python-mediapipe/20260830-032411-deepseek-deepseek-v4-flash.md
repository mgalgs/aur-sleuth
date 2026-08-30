---
package: python-mediapipe
pkgver: 0.10.35
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13497
completion_tokens: 2067
total_tokens: 15564
cost: 0.00142176384
execution_time: 171.15
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: ok
upstream_files: 4728
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T03:24:09Z
file_verdicts:
  - file: 0004-use-opencv-headers.patch
    status: skipped
    summary: "Skipping binary file: 0004-use-opencv-headers.patch"
  - file: 0006-opencv5-geometry-header.patch
    status: safe
    summary: Standard OpenCV 5 compatibility patch, no security issues.
  - file: 0005-set-hermetic-python-version-and-disable-odml-converter.patch
    status: safe
    summary: Build config patch, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard AUR packaging.
---

Cloning https://aur.archlinux.org/python-mediapipe.git...
Cloned python-mediapipe
Analyzing python-mediapipe AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) only fetch the source array (the official MediaPipe tarball and local patch files) and execute the PKGBUILD's global/top-level scope and `pkgver()` (which does not exist here). The top-level scope consists solely of variable assignments and array definitions — no dangerous commands (no `eval`, `curl`, `bash`, or obfuscated code). All sources are from the official GitHub release of `google-ai-edge/mediapipe` with valid checksums, and no network requests beyond the declared sources occur. The `prepare()`, `build()`, and `package()` functions (which contain a `wget` to download Bazel) are **not** executed during this gate, as per the `--noprepare` and `--nobuild` flags. Therefore, running these two commands is safe and poses no supply-chain risk at this stage.
</details>
<evidence></evidence>
<summary>Source fetch and SRCINFO generation are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetch and SRCINFO generation are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/mediapipe-0.10.35/setup.py); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 4728 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, 0004-use-opencv-headers.patch...
[0/5] Reviewing .SRCINFO, 0004-use-opencv-headers.patch, 0005-set-hermetic-python-version-and-disable-odml-converter.patch...
[0/5] Reviewing .SRCINFO, 0004-use-opencv-headers.patch, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0006-opencv5-geometry-header.patch...
[1/5] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0006-opencv5-geometry-header.patch...
! Reviewed 0004-use-opencv-headers.patch. Status: SKIPPED -- Skipping binary file: 0004-use-opencv-headers.patch
LLM auditresponse for 0006-opencv5-geometry-header.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch updates `mediapipe/framework/port/opencv_imgproc_inc.h` to include `<opencv2/geometry/2d.hpp>` when the OpenCV major version is 5 or greater. This is a standard compatibility patch to support a newer version of a dependency. There is no obfuscation, no suspicious commands, no network requests, and no deviation from expected packaging practices. It does exactly what the file name and diff context suggest: adapt MediaPipe for OpenCV 5. All content is plain C preprocessor directives and header includes. No security concerns.</details>
<evidence>
</evidence>
<summary>Standard OpenCV 5 compatibility patch, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, 0006-opencv5-geometry-header.patch, PKGBUILD...
[2/5] Reviewing .SRCINFO, 0005-set-hermetic-python-version-and-disable-odml-converter.patch, PKGBUILD...
+ Reviewed 0006-opencv5-geometry-header.patch. Status: SAFE -- Standard OpenCV 5 compatibility patch, no security issues.
LLM auditresponse for 0005-set-hermetic-python-version-and-disable-odml-converter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies two build configuration files: it forces Bazel to use Python 3.12 (to avoid incompatibility with newer system Python versions) and removes an ODML converter flag from the Bazel build options. These changes are consistent with ordinary packaging adjustments—no obfuscation, no network requests, no file exfiltration, and no execution of untrusted code. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Build config patch, no malicious indicators.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed 0005-set-hermetic-python-version-and-disable-odml-converter.patch. Status: SAFE -- Build config patch, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCGINFO` file is a metadata-only package descriptor for an AUR package. It lists the package name, description, dependencies, and source URLs including checksums. All sources point to the official upstream repository (`github.com/google-ai-edge/mediapipe`). No code, executables, or obfuscated content is present. There are no signs of malicious behavior such as suspicious network requests, data exfiltration, or dangerous commands. The file adheres to standard AUR packaging practices.</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no suspicious content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for `python-mediapipe`. It downloads the upstream source tarball from the official GitHub repository with a verified SHA-256 checksum, applies expected patches, and downloads the official Bazel binary from GitHub Releases (needed because Arch Linux's Bazel package is incompatible). All network operations go to the package's own upstream or the Bazel project's official release page, which is legitimate for this build process. There is no obfuscated code, no data exfiltration, no unexpected system modifications, and no execution of untrusted content. The use of `wget` for the Bazel binary is a typical workaround for non-working system packages and is not malicious. Checksums are provided for all source files, and the package builds the wheel in an isolated manner.
</details>
<evidence></evidence>
<summary>No malicious behavior found; standard AUR packaging.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard AUR packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0004-use-opencv-headers.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,497
  Completion Tokens: 2,067
  Total Tokens: 15,564
  Total Cost: $0.001422
  Execution Time: 171.15 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0004-use-opencv-headers.patch: [SKIPPED] Skipping binary file: 0004-use-opencv-headers.patch
