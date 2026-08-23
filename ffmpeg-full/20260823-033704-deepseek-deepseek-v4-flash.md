---
package: ffmpeg-full
pkgver: 9.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 48997
completion_tokens: 5947
total_tokens: 54944
cost: 0.00323087646
execution_time: 190.32
files_reviewed: 7
files_skipped: 0
files_unauditable: 37
unpinned_sources: 1
date: 2026-08-23T03:37:03Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text; no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
  - file: 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch
    status: safe
    summary: Standard patch adding a new API function for Chromium.
  - file: 010-ffmpeg-add-svt-hevc.patch
    status: safe
    summary: Patch adds SVT-HEVC encoder; no malicious code.
  - file: 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch
    status: safe
    summary: Patch updates C++ standard for CUDA NVCC compatibility.
  - file: 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch
    status: safe
    summary: Patch adjusts pkg-config flags; no security issues.
  - file: 030-ffmpeg-add-svt-vp9.patch
    status: safe
    summary: Standard SVT-VP9 encoder patch, no malicious code.
---

Cloning https://aur.archlinux.org/ffmpeg-full.git...
Cloned ffmpeg-full
Analyzing ffmpeg-full AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and array definitions. There is no `pkgver()` function or command substitutions in the global scope that would execute code during sourcing. The `source` array entries point to official FFmpeg releases, GitHub repositories, and local patch files — all expected for this package. No malicious commands, obfuscation, or network requests to unexpected hosts are present. The SKIP checksums on some sources are a hygiene concern but do not constitute executable malware within the scope of `--nobuild --nodeps --noprepare`. The commands will safely fetch and extract sources and print source info.
</details>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://ffmpeg.org/releases/ffmpeg-9.0.1.tar.xz.asc
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `LICENSE` file containing only a short textual description of the software's licensing restrictions. It does not contain any executable code, obfuscated commands, network requests, file operations, or other potentially harmful content. There is no evidence of malicious behavior. This is a standard license notice, albeit unusually restrictive, but not a security threat.
</details>
<summary>Plain license text; no executable or suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard build recipe for `ffmpeg-full` with many optional dependencies. All source downloads come from expected upstream locations (ffmpeg.org, github.com, a pinned commit from the SVT-HEVC project via raw.githubusercontent.com). Checksums are either present for static tarballs/patches or correctly set to `SKIP` for VCS sources (`lensfun` git), which is standard practice. The build process includes building `lensfun` and `whisper.cpp` as static libraries locally to avoid circular dependencies – a legitimate packaging workaround, not a supply‑chain attack.

There is no obfuscated code, no unexpected network requests (no `curl | bash`, no `eval`, no base64), and no exfiltration of data. All operations are confined to building the package and installing it into `$pkgdir`. The file is consistent with normal AUR packaging and shows no signs of injected malicious behavior.
</details>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 37 compiled/archived file(s) cannot be audited as text and were not reviewed (ffmpeg-9.0.1.tar.xz, ffmpeg-9.0.1.tar.xz.asc, whisper.cpp-1.9.2.tar.gz and 34 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 12613 files available for selection; offering the 50 highest-priority to the model. 11600 lower-priority file(s) were not offered.
LLM response for file selection:
010-ffmpeg-add-svt-hevc.patch
030-ffmpeg-add-svt-vp9.patch
040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch
050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch
060-ffmpeg-whisper.cpp-fix-pkgconfig.patch
Decided to review 5 additional files: 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing 010-ffmpeg-add-svt-hevc.patch...
[0/5] Reviewing 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch...
[0/5] Reviewing 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch...
LLM auditresponse for 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a new public API function `av_stream_get_first_dts` to expose the internal `first_dts` field of `AVStream`. The changes are minimal and straightforward, with clear comments indicating the addition is for Chromium. There is no obfuscation, no network requests, no execution of arbitrary code, and no deviation from standard packaging practices. The patch serves a legitimate purpose of providing access to an internal field for an external consumer (Chromium). No malicious behavior is present.
</details>
<summary>Standard patch adding a new API function for Chromium.</summary>
</security_assessment>

[0/5] Reviewing 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch, 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch...
[1/5] Reviewing 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch...
+ Reviewed 040-ffmpeg-add-av_stream_get_first_dts-for-chromium.patch. Status: SAFE -- Standard patch adding a new API function for Chromium.
LLM auditresponse for 010-ffmpeg-add-svt-hevc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that integrates the SVT-HEVC encoder library into FFmpeg. It modifies the build system (`configure`, `Makefile`, `allcodecs.c`) and adds a new encoder plugin (`libavcodec/libsvt_hevc.c`). The new source file contains a standard encoder wrapper: it calls the SVT-HEVC API (`EbInitHandle`, `EbH265EncSetParameter`, `EbInitEncoder`, etc.) to encode frames and produce packets. There is no obfuscated code, no network requests (no `curl`/`wget`), no downloads or execution of external content, no data exfiltration, and no system modifications outside the build/install scope. The license header and coding style are consistent with FFmpeg’s conventions. All operations serve the intended purpose of enabling HEVC encoding via the SVT-HEVC library. This is a routine and expected addition for a package that bundles extra encoder support.
</details>
<summary>Patch adds SVT-HEVC encoder; no malicious code.</summary>
</security_assessment>

[1/5] Reviewing 010-ffmpeg-add-svt-hevc.patch, 030-ffmpeg-add-svt-vp9.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch...
[2/5] Reviewing 030-ffmpeg-add-svt-vp9.patch, 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch, 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch...
+ Reviewed 010-ffmpeg-add-svt-hevc.patch. Status: SAFE -- Patch adds SVT-HEVC encoder; no malicious code.
LLM auditresponse for 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch is a straightforward one-line change to the FFmpeg configure script, updating the C++ standard flag for the NVIDIA CUDA compiler from `-std=c++11` to `-std=c++14`. This is a routine compatibility fix to support newer GCC versions (GCC 14), as indicated in the patch filename. There is no obfuscation, no network activity, no file operations beyond the intended source modification, and no deviation from standard packaging or build practices. The change is purely functional and benign.
</details>
<summary>Patch updates C++ standard for CUDA NVCC compatibility.</summary>
</security_assessment>

[3/5] Reviewing 030-ffmpeg-add-svt-vp9.patch, 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch...
+ Reviewed 050-ffmpeg-fix-cuda-nvcc-with-gcc14.patch. Status: SAFE -- Patch updates C++ standard for CUDA NVCC compatibility.
LLM auditresponse for 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch for a pkg-config template file. It adjusts the `Libs` and `Cflags` lines to add additional dependencies (`-lggml-cpu`, `-lstdc++`, `-lm`, `-fopenmp`, `-fPIC`) and changes the library order. Such modifications are routine in packaging to ensure correct linking and compilation. There is no obfuscation, network activity, data exfiltration, or any other malicious behavior. The changes are transparent and serve the package's stated purpose.
</details>
<summary>Patch adjusts pkg-config flags; no security issues.</summary>
</security_assessment>

[4/5] Reviewing 030-ffmpeg-add-svt-vp9.patch...
+ Reviewed 060-ffmpeg-whisper.cpp-fix-pkgconfig.patch. Status: SAFE -- Patch adjusts pkg-config flags; no security issues.
LLM auditresponse for 030-ffmpeg-add-svt-vp9.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard patch to add the SVT-VP9 encoder to FFmpeg. It modifies build configuration files (configure, Makefile, allcodecs.c) and adds a new source file (libavcodec/libsvt_vp9.c) that implements the encoder plugin. The code calls the SVT-VP9 library functions (eb_vp9_svt_init_handle, eb_vp9_svt_enc_send_picture, etc.) and does nothing beyond normal FFmpeg encoder integration. There are no network requests, obfuscated code, eval statements, or any attempt to exfiltrate data or execute untrusted code. The patch is entirely consistent with upstream FFmpeg development practices for adding a new external library encoder.
</details>
<summary>Standard SVT-VP9 encoder patch, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed 030-ffmpeg-add-svt-vp9.patch. Status: SAFE -- Standard SVT-VP9 encoder patch, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,997
  Completion Tokens: 5,947
  Total Tokens: 54,944
  Total Cost: $0.003231
  Execution Time: 190.32 seconds

Final Status: SAFE


No issues found.
