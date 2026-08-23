---
package: mpv-full-build-git
pkgver: 0.41.0.r769.g2d5dfb343a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 55384
completion_tokens: 9055
total_tokens: 64439
cost: 0.00661446
execution_time: 294.88
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T09:03:43Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Non-executable license text, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard mpv-git PKGBUILD; no malicious code found.
  - file: src/libass/Makefile.am
    status: safe
    summary: Standard build file; no security concerns.
  - file: src/ffmpeg/ffbuild/pkgconfig_generate.sh
    status: safe
    summary: Standard pkg-config generation script, no security issues.
  - file: src/ffmpeg/ffbuild/version.sh
    status: safe
    summary: Standard FFmpeg version generation script, no malicious behavior.
  - file: src/ffmpeg/Makefile
    status: safe
    summary: Standard FFmpeg build Makefile, no malicious code found.
  - file: src/libass/gen_defs.py
    status: safe
    summary: Simple file conversion script, no security issues.
  - file: src/libass/legacy_arabic_cmap/gen_arabic_charmap.py
    status: safe
    summary: Code generator for libass; no malicious behavior.
  - file: src/libass/ltnasm.sh
    status: safe
    summary: Safe argument filter for NASM, no malicious behavior.
  - file: src/libass/configure.ac
    status: safe
    summary: Standard autoconf build configuration, no malicious code
  - file: src/libass/autogen.sh
    status: safe
    summary: Standard autogen.sh script, no security issues.
  - file: src/ffmpeg/ffbuild/libversion.sh
    status: safe
    summary: Routine version extraction, no malicious indicators.
---

Cloning https://aur.archlinux.org/mpv-full-build-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s8un300x...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s8un300x
Analyzing mpv-full-build-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s8un300x) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines sources from official upstream repositories (mpv-player, ffmpeg, libass, libplacebo, ffnvcodec-headers). The global scope performs standard variable assignments, builds optdepends via a loop, and checks for the presence of certain `.so` files in `/usr/lib` and `/opt/cuda` to conditionally add depends/makedepends. This is a common auto-detection pattern in AUR packaging, not a supply-chain attack. The `pkgver()` function runs local `git` commands on the already-cloned repository; it does not access the network. There are no obfuscated commands, network exfiltration, or unexpected code execution. The checks required to fetch sources and source the PKGBUILD are safe; no malicious behavior is triggered during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<summary>Safe: standard VCS PKGBUILD, no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: standard VCS PKGBUILD, no malicious top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license file containing a short statement about the software's license restrictions. It contains no executables, no obfuscated code, no network requests, and no file operations. There is zero evidence of malicious or dangerous behavior. The content is purely informational regarding the upstream project's licensing terms.
</details>
<summary>Non-executable license text, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Non-executable license text, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, albeit complex, build script for the `mpv-full-build-git` package. All source URLs point to the official upstream repositories (GitHub for mpv, mpv-build, libass; videolan.org for libplacebo and nv-codec-headers; git.ffmpeg.org for ffmpeg). There are no suspicious network requests, obfuscated commands, or data exfiltration. The build process uses the upstream `mpv-build` infrastructure with flags tailored for a maximally-featured build. The `prepare()` function modifies the upstream build scripts via `sed` to adjust architecture and build-type options—this is a normal packaging practice for AUR `-git` packages.

The dynamic dependency detection in `prepare()` (checking for `.so` files at build time) and the CUDA-related adjustments in `build()` are unconventional but not malicious. They are pragmatic mechanisms to detect and integrate optional dependencies already present on the builder’s system. No code is downloaded or executed from unexpected hosts, no data is exfiltrated, and no system files outside the package’s scope are tampered with. The package behaves exactly as a “full-build” variant of mpv should, and the file shows no evidence of a supply-chain attack.
</details>
<summary>Standard mpv-git PKGBUILD; no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard mpv-git PKGBUILD; no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 11875 files available for selection; offering the 50 highest-priority to the model. 10732 lower-priority file(s) were not offered.
LLM response for file selection:
src/ffmpeg/Makefile
src/ffmpeg/ffbuild/libversion.sh
src/ffmpeg/ffbuild/pkgconfig_generate.sh
src/ffmpeg/ffbuild/version.sh
src/libass/Makefile.am
src/libass/autogen.sh
src/libass/configure.ac
src/libass/gen_defs.py
src/libass/legacy_arabic_cmap/gen_arabic_charmap.py
src/libass/ltnasm.sh
Decided to review 10 additional files: src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ffmpeg/Makefile...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh, src/libass/configure.ac...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py...
[0/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/Makefile.am, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
LLM auditresponse for Makefile.am:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Automake build system file for the libass library (a subtitle rendering library). It defines compiler flags, source file inclusions, and test targets. There are no network requests, no obfuscated code, no unexpected file operations, and no system modifications beyond what is expected for building and testing the library. The test targets (`check-art-fuzz`, `check-art-compare`) run local scripts only if the `ART_SAMPLES` environment variable is set, which is a standard testing pattern. No malicious or dangerous behavior was found.
</details>
<summary>Standard build file; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/pkgconfig_generate.sh, src/ffmpeg/ffbuild/version.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
+ Reviewed src/libass/Makefile.am. Status: SAFE -- Standard build file; no security concerns.
LLM auditresponse for pkgconfig_generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script generates pkg-config files for a library (likely FFmpeg). It reads configuration from `ffbuild/config.sh`, dynamically constructs library dependencies using `eval` (standard for variable indirection in shell scripts), and writes `.pc` files into the build directory. There are no network requests, no execution of downloaded content, no obfuscation, and no writes outside the build tree. The use of `eval` is limited to expanding variables like `extralibs_${shortname}` and `${shortname}_deps`, which is typical in build systems for dynamic variable access. No malicious behavior is observed.
</details>
<summary>Standard pkg-config generation script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/ffmpeg/ffbuild/version.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
+ Reviewed src/ffmpeg/ffbuild/pkgconfig_generate.sh. Status: SAFE -- Standard pkg-config generation script, no security issues.
LLM auditresponse for version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard FFmpeg version generation utility. It reads local git metadata or version files from the provided source directory and writes a C header defining `FFMPEG_VERSION`. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no operations that exfiltrate data or modify system files outside the intended build output. The script only performs file reads and writes within the specified paths, which is normal for a build system helper. No supply-chain attack indicators are present.
</details>
<summary>Standard FFmpeg version generation script, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/ffmpeg/Makefile, src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
+ Reviewed src/ffmpeg/ffbuild/version.sh. Status: SAFE -- Standard FFmpeg version generation script, no malicious behavior.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build system file for the FFmpeg project. It contains normal build rules (compiling, linking, installing, cleaning) and references to FFmpeg's own source tree and configuration. There is no obfuscated code, no unexpected network requests or downloads (e.g., no curl, wget, or eval with encoded payloads), no exfiltration of data, and no tampering with system files outside the package's own scope. The only external references are to the FFmpeg source paths and standard build tooling (make, cp, rm, strip). The version tracking via `.git/logs/HEAD` is a normal FFmpeg practice for embedding the git revision into the build. No supply-chain attack indicators are present.
</details>
<summary>Standard FFmpeg build Makefile, no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/gen_defs.py, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
+ Reviewed src/ffmpeg/Makefile. Status: SAFE -- Standard FFmpeg build Makefile, no malicious code found.
LLM auditresponse for gen_defs.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple utility that reads a symbol file and prepends an `EXPORTS` header to produce a `.def` file. It takes two command-line arguments (input and output paths) and performs no network operations, no execution of external commands, no obfuscation, and no unexpected file system modifications. The operations are limited to reading a file and writing to another file, which is standard for a build helper script. There is no evidence of malicious behavior.
</details>
<summary>Simple file conversion script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/legacy_arabic_cmap/gen_arabic_charmap.py, src/libass/ltnasm.sh...
+ Reviewed src/libass/gen_defs.py. Status: SAFE -- Simple file conversion script, no security issues.
LLM auditresponse for gen_arabic_charmap.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a code generator for the libass library, part of the mpv build process. It reads local Unicode mapping files (ArabicPUASimplified.txt and ArabicPUATraditional.txt) and generates C source and header files with hash-based lookup tables. There are no network requests, no execution of external commands, no obfuscated code, and no attempts to exfiltrate data or modify system files outside the build directory. All operations are confined to the package source tree and follow standard build automation practices. No malicious behavior is present.
</details>
<summary>Code generator for libass; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh, src/libass/configure.ac, src/libass/ltnasm.sh...
+ Reviewed src/libass/legacy_arabic_cmap/gen_arabic_charmap.py. Status: SAFE -- Code generator for libass; no malicious behavior.
LLM auditresponse for ltnasm.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ltnasm.sh` is a straightforward argument filter for NASM when invoked via libtool. It processes command-line arguments, discarding unwanted `-f*` options and translating `-DPIC` to `-DPIC=1`, then executes the filtered command. There is no network access, no file modifications, no obfuscation, and no execution of untrusted code. The only potential concern is the unquoted expansion of `$cmd` in the final `exec` line, which could cause word-splitting issues if arguments contained spaces, but the script's comment explicitly notes that this is not a problem in practice because filenames and options do not contain spaces. This is a minor hygiene issue, not a security threat. The script serves a legitimate build-system purpose and contains no malicious behavior.
</details>
<summary>Safe argument filter for NASM, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh, src/libass/configure.ac...
+ Reviewed src/libass/ltnasm.sh. Status: SAFE -- Safe argument filter for NASM, no malicious behavior.
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard GNU Autoconf configuration script (`configure.ac`) for the libass library. It performs routine build-time tasks: checking for required tools (compiler, assembler), header files, and libraries (freetype, fribidi, harfbuzz, fontconfig, etc.) via `pkg-config` or manual probes; setting compiler flags; and optionally detecting the source version from a git repository. There are no network requests, no download or execution of external scripts (e.g., no `curl | bash`), no obfuscated or encoded commands, and no attempts to access or exfiltrate system data. The only dynamic element is the optional `git describe` call to determine the build version, which is standard for VCS-based packages. The file contains no evidence of a supply-chain attack or malicious injection; all operations serve the legitimate purpose of configuring the libass library for compilation.
</details>
<summary>Standard autoconf build configuration, no malicious code</summary>
</security_assessment>

[8/10] Reviewing src/ffmpeg/ffbuild/libversion.sh, src/libass/autogen.sh...
+ Reviewed src/libass/configure.ac. Status: SAFE -- Standard autoconf build configuration, no malicious code
LLM auditresponse for autogen.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard autogen script (often found in autotools-based projects). It runs `autoreconf -ivf` to regenerate the build system. There is no malicious behavior: no network requests, no encoded commands, no unexpected file operations, and no deviations from standard packaging or build practices.
</details>
<summary>Standard autogen.sh script, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/ffmpeg/ffbuild/libversion.sh...
+ Reviewed src/libass/autogen.sh. Status: SAFE -- Standard autogen.sh script, no security issues.
LLM auditresponse for libversion.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard utility for extracting version numbers from C header files using `awk` and `eval`. It is commonly used in build systems (e.g., autotools, meson subprojects) to parse macros like `LIBFOO_VERSION_MAJOR`. The `eval` construct executes the output of `awk`, which could theoretically be exploited if the header files contained injected shell commands. However, in the context of this AUR package, the header files are part of the upstream source being built (e.g., ffmpeg or mpv headers), not user-supplied or attacker-controlled data. There is no obfuscation, network activity, file exfiltration, or unexpected system modification. The code is consistent with ordinary packaging practices and does not exhibit genuinely malicious behavior.
</details>
<summary>Routine version extraction, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ffmpeg/ffbuild/libversion.sh. Status: SAFE -- Routine version extraction, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,384
  Completion Tokens: 9,055
  Total Tokens: 64,439
  Total Cost: $0.006614
  Execution Time: 294.88 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mpv-full-build-git.txt
Final Status: SAFE


No issues found.
