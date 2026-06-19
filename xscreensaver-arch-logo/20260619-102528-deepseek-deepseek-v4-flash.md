---
package: xscreensaver-arch-logo
pkgver: 6.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 98895
completion_tokens: 11008
total_tokens: 109903
cost: 0.01088199
execution_time: 61.93
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:25:28Z
file_verdicts:
  - file: logo-360.xpm
    status: safe
    summary: Pure image data; no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
  - file: src/xscreensaver-6.15/configure.ac
    status: safe
    summary: Standard autoconf build script, no malicious content.
  - file: src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl
    status: safe
    summary: Safe utility script; no malicious behavior found.
  - file: src/xscreensaver-6.15/hacks/munge-ad.pl
    status: safe
    summary: Upstream development script; no malicious behavior.
  - file: src/xscreensaver-6.15/hacks/glx/vrml2gl.pl
    status: safe
    summary: Legitimate VRML conversion tool, no security concerns.
  - file: src/xscreensaver-6.15/hacks/glx/countries-build.pl
    status: safe
    summary: Legitimate build script for country data generation.
  - file: src/xscreensaver-6.15/hacks/glx/wfront2gl.pl
    status: safe
    summary: Standard OBJ-to-C converter, no malicious code found.
  - file: src/xscreensaver-6.15/hacks/glx/dxf2gl.pl
    status: safe
    summary: Legitimate DXF-to-OpenGL converter, no malicious behavior.
  - file: src/xscreensaver-6.15/hacks/glx/molecules.sh
    status: safe
    summary: Standard build helper script, no malicious behavior.
  - file: src/xscreensaver-6.15/hacks/glx/mapscroller.pl
    status: safe
    summary: Legitimate tile‑fetch helper, no malicious behavior found.
  - file: src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl
    status: safe
    summary: Benign shader download tool; no supply-chain threat.
---

Cloning https://aur.archlinux.org/xscreensaver-arch-logo.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q_5w3np8...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q_5w3np8
Analyzing xscreensaver-arch-logo AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q_5w3np8) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and source URLs. The source array fetches the upstream xscreensaver tarball from its official website (https://www.jwz.org) and includes several local logo/image files. All source entries are normal for an AUR package. There is no executable code in the global scope or `pkgver()` (which is static). No `eval`, `curl|bash`, obfuscated commands, or data exfiltration attempts. The sha512sums cover all source files. Running `makepkg --nobuild --nodeps --noprepare` will only download these sources and parse the PKGBUILD; no malicious activity can occur during this step.
</details>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no malicious code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, logo-360.xpm...
LLM auditresponse for logo-360.xpm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard X PixMap (XPM) image file containing pixel data for a logo. It consists solely of a color table and a grid of character-indexed pixel values. There are no executable scripts, obfuscated code, network requests, file operations, or any other dynamic behavior. The content is static image data and poses no security threat.
</details>
<summary>Pure image data; no executable or malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed logo-360.xpm. Status: SAFE -- Pure image data; no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The upstream source is fetched from the official jwz.org domain, which is the legitimate upstream for xscreensaver. All source files have pinned SHA512 checksums (no SKIP entries). The build process runs standard `./configure` and `make` commands with typical flags. The prepare() function only copies logo image files into the source tree. There are no suspicious commands, obfuscated code, unexpected network requests, or backdoor-like mechanisms. No deviations from legitimate packaging behavior are present.
</details>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2048 files available for selection; offering the 50 highest-priority to the model. 1945 lower-priority file(s) were not offered.
LLM response for file selection:
src/xscreensaver-6.15/configure.ac
src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl
src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl
src/xscreensaver-6.15/hacks/glx/countries-build.pl
src/xscreensaver-6.15/hacks/glx/dxf2gl.pl
src/xscreensaver-6.15/hacks/glx/vrml2gl.pl
src/xscreensaver-6.15/hacks/glx/wfront2gl.pl
src/xscreensaver-6.15/hacks/glx/mapscroller.pl
src/xscreensaver-6.15/hacks/glx/molecules.sh
src/xscreensaver-6.15/hacks/munge-ad.pl
Decided to review 10 additional files: src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh, src/xscreensaver-6.15/hacks/munge-ad.pl
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
[0/10] Reviewing src/xscreensaver-6.15/configure.ac, src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh, src/xscreensaver-6.15/hacks/munge-ad.pl...
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `configure.ac` is a standard autoconf input file for the xscreensaver project. It contains typical build configuration checks for libraries, headers, and compiler flags. The suspicious patterns (eval, echo, sed) are used in normal autoconf variable expansion and path manipulation. There are no instances of `curl`, `wget`, `base64`, `exec`, or other dangerous commands. The file does not download or execute any external code, exfiltrate data, or perform obfuscated operations. It is consistent with legitimate packaging practices.
</details>
<summary>Standard autoconf build script, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh, src/xscreensaver-6.15/hacks/munge-ad.pl...
+ Reviewed src/xscreensaver-6.15/configure.ac. Status: SAFE -- Standard autoconf build script, no malicious content.
LLM auditresponse for xshadertoy-compile.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This Perl script processes local GLSL shader files into a standalone bash script that calls `xshadertoy` with those programs. It performs only standard file I/O (reading `.glsl` files, writing an executable output script). There are no network requests, obfuscated code, dangerous system calls, or any operations that deviate from its stated purpose of compiling shader sets. The script uses strict, warnings, and diagnostics, and has no hidden functionality. All file operations are confined to the input and output files specified on the command line. No evidence of supply-chain compromise or malicious intent.
</details>
<summary>
Safe utility script; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh, src/xscreensaver-6.15/hacks/munge-ad.pl...
+ Reviewed src/xscreensaver-6.15/hacks/glx/xshadertoy-compile.pl. Status: SAFE -- Safe utility script; no malicious behavior found.
LLM auditresponse for munge-ad.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This Perl script is an upstream development tool that updates the XScreenSaver `.ad.in` configuration file with the current list of screen savers. It reads local XML files from `hacks/config/` and local `Makefile.in` files to determine which savers exist and their metadata, then regenerates the `*programs` section and `*hacks.*.name` entries. There are no network requests, no obfuscated code, no execution of downloaded content, and no system modifications outside the intended source tree. The operations are entirely standard for maintaining XScreenSaver's configuration and present no supply-chain risk.
</details>
<summary>Upstream development script; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/vrml2gl.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
+ Reviewed src/xscreensaver-6.15/hacks/munge-ad.pl. Status: SAFE -- Upstream development script; no malicious behavior.
LLM auditresponse for vrml2gl.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard VRML-to-OpenGL converter that reads a VRML file and generates C source code. It performs only file I/O operations (reading input, writing output) using Perl's built-in `open()` with `&lt;` and `&gt;` modes. No network requests (curl, wget), no obfuscated or encoded strings, no system commands (system, exec, backticks), no eval or dangerous Perl functions, and no attempts to access sensitive system files or exfiltrate data. The code strictly parses VRML geometry and outputs OpenGL interleaved array data. All operations are consistent with the intended utility purpose.
</details>
<summary>Legitimate VRML conversion tool, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/countries-build.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
+ Reviewed src/xscreensaver-6.15/hacks/glx/vrml2gl.pl. Status: SAFE -- Legitimate VRML conversion tool, no security concerns.
LLM auditresponse for countries-build.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Perl build script for generating C source code from GeoJSON files containing country and administrative boundary data. It makes network requests to Wikidata (query.wikidata.org) and Wikipedia (en.wikipedia.org) to download population, area, and endonym information — these are legitimate open data sources relevant to the package's purpose. The script writes output to a user-specified `.c` file. No obfuscated code, base64 decoding, `eval` of external content, `curl|bash`, or any other supply-chain attack patterns are present. All network destinations are the package's expected upstream data sources, not unrelated or suspicious hosts. The script is a standard developer/build tool and contains no malicious behavior.
</details>
<summary>Legitimate build script for country data generation.</summary>
</security_assessment>

[5/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/wfront2gl.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
+ Reviewed src/xscreensaver-6.15/hacks/glx/countries-build.pl. Status: SAFE -- Legitimate build script for country data generation.
LLM auditresponse for wfront2gl.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wfront2gl.pl` is a standard Perl utility that converts Wavefront OBJ 3D model files into C data structures suitable for OpenGL rendering. It performs only local file I/O on files specified as command-line arguments, parses vertex/normal/face data, optionally normalizes the bounding box, and emits C source code. There are no network requests (`curl`, `wget`), no system commands (`system`, `exec`, backticks), no obfuscated or encoded code, and no operations that exfiltrate data or modify unrelated system files. The script is well-written with `use strict` and `-w` warnings enabled. All behavior is consistent with its documented purpose as a model conversion tool for the xscreensaver project.
</details>
<summary>Standard OBJ-to-C converter, no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/dxf2gl.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
+ Reviewed src/xscreensaver-6.15/hacks/glx/wfront2gl.pl. Status: SAFE -- Standard OBJ-to-C converter, no malicious code found.
LLM auditresponse for dxf2gl.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `dxf2gl.pl` is a standard Perl utility that reads DXF (CAD) files and generates C data structures suitable for OpenGL rendering. It performs no network operations, no obfuscated code execution, no dynamic evaluation (no `eval`, `base64`, `curl`, `wget`), and no modification of files outside its explicit input/output scope. File operations are limited to reading the user-specified input file (`open` with `&lt;$infile`), writing a temporary output file via `&gt;:utf8`, and calling the system `cmp` utility with a fixed argument list to conditionally rename the output — all normal for a file conversion tool. No signs of supply-chain compromise, credential theft, backdoors, or unauthorized data exfiltration are present.
</details>
<summary>Legitimate DXF-to-OpenGL converter, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl, src/xscreensaver-6.15/hacks/glx/molecules.sh...
+ Reviewed src/xscreensaver-6.15/hacks/glx/dxf2gl.pl. Status: SAFE -- Legitimate DXF-to-OpenGL converter, no malicious behavior.
LLM auditresponse for molecules.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for the xscreensaver package. It converts molecular data files into C header arrays using the `ad2c` utility. There are no suspicious network operations, obfuscation, or attempts to exfiltrate data. The script uses safe shell commands (`sh`, `sed`, `cmp`, `mv`, `rm`) and includes a trap for cleanup. The only potential concern is the relative `UTILS_SRC` path defaulting to `../../utils`, but this is a normal pattern in monorepo build scripts and not indicative of an attack. The HTML entities (`&quot;`, `&apos;`) appear to be an artifact of the XML presentation format and would not exist in the actual file on disk. Overall, the script performs exactly the task expected for building the package and contains no malicious behavior.
</details>
<summary>Standard build helper script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl, src/xscreensaver-6.15/hacks/glx/mapscroller.pl...
+ Reviewed src/xscreensaver-6.15/hacks/glx/molecules.sh. Status: SAFE -- Standard build helper script, no malicious behavior.
LLM auditresponse for mapscroller.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a legitimate helper script for the `mapscroller` screensaver in xscreensaver. It downloads map tiles from a user-supplied URL template (checked to be http/https), caches them under `~` subdirectories, and outputs the local filenames.  

The script performs no shell execution, no obfuscated commands, and no exfiltration of system data. The only network destinations are the tile server specified via `--url-template` and a sanity‑check fetch of `mozilla.org` (to verify LWP works). File operations are confined to a cache directory under the user&#39;s home. The `eval` in `apply_template` is a safe regex‑replacement pattern that only substitutes known variables (`{x}`, `{y}`, `{z}`, `{s}`, `{a-c}`); it does not evaluate arbitrary user input. Input coordinates are validated as integers, preventing path traversal.  

No unusual dependencies, no unexpected remote fetches, and no modification of system files. The code matches its stated purpose and is not malicious.
</details>
<summary>Legitimate tile‑fetch helper, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl...
+ Reviewed src/xscreensaver-6.15/hacks/glx/mapscroller.pl. Status: SAFE -- Legitimate tile‑fetch helper, no malicious behavior found.
LLM auditresponse for xshadertoy-download.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This Perl script downloads shader source code from shadertoy.com for use with the `xshadertoy` application. It constructs HTTP requests (using `curl` via `IPC::Open2`) to the hardcoded endpoint `https://www.shadertoy.com/shadertoy`, parses the JSON response, and writes `.glsl` files to a `glsl/todo/` subdirectory. All file paths are derived from the shader name returned by the server, sanitized to alphanumeric and dash characters, preventing directory traversal. The user-provided cookie is passed safely as an argument array to `open2`, avoiding shell injection. The script performs no network connections to unexpected hosts, no obfuscated code execution, no data exfiltration, and no modifications outside its stated purpose. The only risk is potential cookie leakage via verbose logging (a user responsibility), but that does not constitute a supply-chain attack. The code is consistent with its intended utility.
</details>
<summary>
Benign shader download tool; no supply-chain threat.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/xscreensaver-6.15/hacks/glx/xshadertoy-download.pl. Status: SAFE -- Benign shader download tool; no supply-chain threat.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 98,895
  Completion Tokens: 11,008
  Total Tokens: 109,903
  Total Cost: $0.010882
  Execution Time: 61.93 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-xscreensaver-arch-logo.txt
Final Status: SAFE


No issues found.
