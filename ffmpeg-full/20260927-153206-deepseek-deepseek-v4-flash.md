---
package: ffmpeg-full
pkgver: 9.0.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 55807
completion_tokens: 5442
total_tokens: 61249
cost: 0.0031278079
execution_time: 42.84
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-27T15:32:06Z
file_verdicts:
  - file: 010-ffmpeg-add-svt-hevc.patch
    status: safe
    summary: Standard FFmpeg patch for SVT-HEVC encoder; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch
    status: safe
    summary: Benign FFmpeg patch exposing first_dts for Chromium; no malicious behavior.
  - file: 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch
    status: safe
    summary: Benign patch updating NVCC C++ standard for GCC 14 compatibility.
  - file: 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch
    status: safe
    summary: Routine packaging patch; no malicious behavior.
  - file: 030-ffmpeg-add-svt-vp9.patch
    status: safe
    summary: Legitimate FFmpeg SVT-VP9 encoder integration patch; no malicious behavior found.
  - file: 060-ffmpeg-lensfun-fix-pkgconfig.patch
    status: safe
    summary: Patch adjusts linker and compiler flags for lensfun; no malicious behavior detected.
  - file: LICENSE
    status: safe
    summary: Plain license text; no security concern.
  - file: PKGBUILD
    status: safe
    summary: Standard ffmpeg-full PKGBUILD; sources and build steps are legitimate.
---

Materializing ffmpeg-full from local mirror...
Materialized ffmpeg-full
Analyzing ffmpeg-full AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable definitions (strings and arrays) and function definitions (`prepare()`, `build()`, `package()`). There are no command substitutions, backticks, `eval`, `curl`, `wget`, or other executable statements at parse time. All URLs in the `source` array are mere string literals and are not fetched or executed during `makepkg --printsrcinfo`. Therefore, sourcing this file is not dangerous.
</details>
<evidence></evidence>
<summary>No dangerous code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes at top-level scope.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://ffmpeg.org/releases/ffmpeg-9.0.2.tar.xz.asc
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, 010-ffmpeg-add-svt-hevc.patch...
LLM auditresponse for 010-ffmpeg-add-svt-hevc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard FFmpeg patch that adds support for the SVT-HEVC encoder. It contains modifications to `configure`, `Makefile`, `allcodecs.c`, and adds a new source file `libavcodec/libsvt_hevc.c`. The new source file is a straightforward encoder wrapper that initializes the SVT-HEVC library, configures encoding parameters, sends frames, and retrieves encoded packets. There are no network requests, obfuscated code, unusual system modifications, or attempts to exfiltrate data. The code is consistent with the standard FFmpeg external encoder plugin pattern and serves the legitimate purpose of enabling HEVC encoding via the SVT-HEVC library. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard FFmpeg patch for SVT-HEVC encoder; no security issues.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch...
[1/10] Reviewing .SRCINFO, .gitignore, 030-ffmpeg-add-svt-vp9.patch...
+ Reviewed 010-ffmpeg-add-svt-hevc.patch. Status: SAFE -- Standard FFmpeg patch for SVT-HEVC encoder; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only definition file used by `makepkg` to describe the ffmpeg-full package. It lists upstream sources (ffmpeg.org releases, GitHub archives, and a git repository for lensfun), standard dependencies, and patches fetched from known project repositories. All checksums are provided or appropriately set to `SKIP` for VCS/gpg sources. There is no executable code, no obfuscation, no network exfiltration, no unexpected commands, and no deviation from standard AUR packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard metadata file; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing .gitignore, 030-ffmpeg-add-svt-vp9.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no malicious content.
[2/10] Reviewing .gitignore, 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package. It ignores common build artifacts (`pkg/`, `src/`, `*.pkg*`, `*.orig`) and explicitly tracks the `.gitignore` itself. There is no executable code, network requests, obfuscation, or any deviation from normal packaging practices. No security issues present.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[2/10] Reviewing .gitignore, 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch...
[3/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a small FFmpeg API function, `av_stream_get_first_dts()`, that exposes the existing internal `first_dts` field to Chromium. The change is limited to a declaration in `avformat.h` and a simple getter implementation in `utils.c` that returns `ffstream(st)-&gt;first_dts`.

There is no network activity, obfuscated code, execution of downloaded content, data exfiltration, or modification of files outside the FFmpeg build. The change is consistent with a normal upstream/packaging patch that adds a helper API for an application. No security concerns were found.
</details>
<evidence>
</evidence>
<summary>
Benign FFmpeg patch exposing first_dts for Chromium; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch...
[4/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch...
+ Reviewed 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch. Status: SAFE -- Benign FFmpeg patch exposing first_dts for Chromium; no malicious behavior.
LLM auditresponse for 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard patch that modifies the FFmpeg configure script, changing the default NVCC compilation standard from C++11 to C++14. The stated purpose is to fix CUDA NVCC builds when using GCC 14, which is a legitimate compatibility adjustment for the package's own build process.

There is no evidence of malicious behavior. The patch contains only a simple, readable one-line substitution in build configuration flags. It does not download or execute external code, access sensitive data, introduce obfuscation, or modify anything outside the expected FFmpeg build configuration scope.
</details>
<evidence>
</evidence>
<summary>
Benign patch updating NVCC C++ standard for GCC 14 compatibility.</summary>
</security_assessment>

[4/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch, 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch...
[5/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch, 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch...
+ Reviewed 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch. Status: SAFE -- Benign patch updating NVCC C++ standard for GCC 14 compatibility.
LLM auditresponse for 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward patch that adjusts the pkg-config file for the whisper.cpp library. It corrects the library linking order and adds necessary dependencies (`-lwhisper`, `-lggml-cpu`, `-lstdc++`, `-lm`) and compile flags (`-fopenmp`, `-fPIC`) required for proper compilation. There is no obfuscation, no network activity, no execution of external code, and no data exfiltration. The changes are consistent with standard packaging fixes.
</details>
<evidence></evidence>
<summary>Routine packaging patch; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch, 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch, LICENSE...
[6/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch, LICENSE...
+ Reviewed 070-ffmpeg-whisper.cpp-fix-pkgconfig.patch. Status: SAFE -- Routine packaging patch; no malicious behavior.
LLM auditresponse for 030-ffmpeg-add-svt-vp9.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an FFmpeg encoder wrapper for the Scalable Video Technology VP9 encoder (libsvt_vp9). It updates the FFmpeg configure script, Makefile, codec registration list, and adds a new `libavcodec/libsvt_vp9.c` source file implementing the expected encoder lifecycle: init, send frame, receive packet, options, and close. All changes are consistent with standard FFmpeg external encoder integration.

No malicious indicators are present: there are no network requests, downloads, obfuscated or encoded payloads, eval-like constructs, base64 blobs, backdoors, or unexpected file/system modifications. The `target_socket` option refers to CPU socket affinity, not networking. There are some code-quality concerns, such as commented-out extradata handling and potentially fragile integer handling, but these are not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Legitimate FFmpeg SVT-VP9 encoder integration patch; no malicious behavior found.
</summary>
</security_assessment>

[6/10] Reviewing 030-ffmpeg-add-svt-vp9.patch, 060-ffmpeg-lensfun-fix-pkgconfig.patch, LICENSE, PKGBUILD...
[7/10] Reviewing 060-ffmpeg-lensfun-fix-pkgconfig.patch, LICENSE, PKGBUILD...
+ Reviewed 030-ffmpeg-add-svt-vp9.patch. Status: SAFE -- Legitimate FFmpeg SVT-VP9 encoder integration patch; no malicious behavior found.
LLM auditresponse for 060-ffmpeg-lensfun-fix-pkgconfig.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard packaging patch that adjusts the `lensfun.pc` CMake template to add `-lglib-2.0` and `-lstdc++` to the linker flags and a `-DCONF_LENSFUN_STATIC` preprocessor define. These changes are consistent with enabling static linking against lensfun and its dependencies in the ffmpeg build. There is no network activity, no execution of external code, no obfuscation, and no file system manipulation beyond the normal patch/build process. The patch only modifies build metadata and contains no suspicious or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Patch adjusts linker and compiler flags for lensfun; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing LICENSE, PKGBUILD...
+ Reviewed 060-ffmpeg-lensfun-fix-pkgconfig.patch. Status: SAFE -- Patch adjusts linker and compiler flags for lensfun; no malicious behavior detected.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license notice with no executable code, no network requests, no obfuscation, and no system modifications. It simply describes the license terms of the software. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Plain license text; no security concern.</summary>
</security_assessment>

[9/10] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no security concern.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for `ffmpeg-full`. The source list contains the upstream ffmpeg release tarball and signature, an unpinned `lensfun` git repository (normal for VCS sources), a pinned `whisper.cpp` release tarball, and several upstream patches from ffmpeg.org, the SVT-HEVC project, and code.ffmpeg.org. The `SKIP` checksums are used only for the PGP signature file and the VCS `lensfun` source, which is ordinary packaging practice rather than a security concern.

The `prepare()` and `build()` functions apply patches, build two local static helper libraries into a staging directory, configure ffmpeg with a large set of normal feature flags, and run `make`. There is no `eval`, no obfuscated encoding, no unexpected network download at build time, no exfiltration of local data, and no installation of files outside `$pkgdir`. The `sed` in `package()` only adjusts pkgconfig files to remove staging paths, which is consistent with the declared build approach. No injected or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard ffmpeg-full PKGBUILD; sources and build steps are legitimate.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard ffmpeg-full PKGBUILD; sources and build steps are legitimate.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,807
  Completion Tokens: 5,442
  Total Tokens: 61,249
  Total Cost: $0.003128
  Execution Time: 42.84 seconds

Final Status: SAFE


No issues found.
