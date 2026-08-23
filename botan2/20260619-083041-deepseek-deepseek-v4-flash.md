---
package: botan2
pkgver: 2.19.5
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 82595
completion_tokens: 7261
total_tokens: 89856
cost: 0.00874053
execution_time: 93.1
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:30:41Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: CVE-2024-50383.patch
    status: safe
    summary: Legitimate security patch; no malicious behavior.
  - file: src/Botan-2.19.5/src/build-data/detect_arch.cpp
    status: safe
    summary: Architecture detection snippet, no malicious content.
  - file: boost-fixes.patch
    status: safe
    summary: Legitimate boost compatibility patch, no malicious code.
  - file: src/Botan-2.19.5/src/build-data/detect_version.cpp
    status: safe
    summary: Standard compiler detection header, no security issues.
  - file: src/Botan-2.19.5/src/python/botan2.py
    status: safe
    summary: Legitimate Python wrapper for Botan crypto library; no malicious code.
  - file: src/Botan-2.19.5/src/cli/cli.cpp
    status: safe
    summary: Standard CLI framework code; no malicious behavior.
  - file: CVE-2024-50382.patch
    status: safe
    summary: Legitimate security patch for a cryptographic library.
  - file: src/Botan-2.19.5/src/cli/tls_client.cpp
    status: safe
    summary: Standard TLS client code, no malicious behavior.
  - file: src/Botan-2.19.5/src/cli/roughtime.cpp
    status: safe
    summary: Standard Botan Roughtime CLI utility – no malicious behavior.
  - file: src/Botan-2.19.5/configure.py
    status: safe
    summary: Standard build configuration script for Botan library; no malicious code.
  - file: fix-oaep-unpad-breaking-change.patch
    status: safe
    summary: Patch weakens OAEP security but is not malicious.
---

Cloning https://aur.archlinux.org/botan2.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-le5z_4ll...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-le5z_4ll
Analyzing botan2 AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-le5z_4ll) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous top-level code or `pkgver()` function. The `source` array references the official upstream tarball, a detached signature, and four patch files—all with pinned checksums (the `.asc` file uses `SKIP`, which is standard for detached signatures). The global scope defines an associative array and appends its keys to `makedepends`, which is benign. No commands like `eval`, `curl`, `wget`, or anything that could exfiltrate data or execute remote code appear in the global scope. The `prepare()`, `build()`, `check()`, and `package()` functions are **not executed** during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, so any code within them is out of scope for this gate. Running the two specified commands is safe.
</details>
<summary>Safe: no malicious code in global scope or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious code in global scope or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, CVE-2024-50383.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `botan2` package is a standard Arch Linux packaging file. It downloads the source from the official upstream site (`https://botan.randombit.net/`) with verified PGP signatures and checksums. The build process uses the project’s own `configure.py` script and `make`, which is expected. The patches applied are for bug fixes and CVEs; they are not obfuscated or suspicious. There are no network requests beyond the declared source, no execution of arbitrary code from untrusted origins, no data exfiltration, and no system modifications outside the normal installation path. All commands (`patch`, `make`, `install`) are standard packaging operations. The file shows no evidence of malicious or dangerous behavior.
</details>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[1/2] Reviewing CVE-2024-50383.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
LLM auditresponse for CVE-2024-50383.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a legitimate security fix for a constant-time vulnerability (CVE-2024-50383) in the Botan2 library. It replaces a non-constant-time carry detection in `donna128` arithmetic operations with a constant-time alternative using `CT::Mask`. There is no evidence of malicious behavior such as data exfiltration, backdoors, or unexpected code execution. The change is consistent with standard cryptographic library practices.
</details>
<summary>Legitimate security patch; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed CVE-2024-50383.patch. Status: SAFE -- Legitimate security patch; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 2418 files available for selection; offering the 50 highest-priority to the model. 1814 lower-priority file(s) were not offered.
LLM response for file selection:
CVE-2024-50382.patch
boost-fixes.patch
fix-oaep-unpad-breaking-change.patch
src/Botan-2.19.5/configure.py
src/Botan-2.19.5/src/build-data/detect_arch.cpp
src/Botan-2.19.5/src/build-data/detect_version.cpp
src/Botan-2.19.5/src/python/botan2.py
src/Botan-2.19.5/src/cli/cli.cpp
src/Botan-2.19.5/src/cli/tls_client.cpp
src/Botan-2.19.5/src/cli/roughtime.cpp
Decided to review 10 additional files: CVE-2024-50382.patch, boost-fixes.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing boost-fixes.patch...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp...
[0/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_arch.cpp, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
LLM auditresponse for detect_arch.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only preprocessor directives to detect the target architecture at compile time. It defines macros like `X86_64`, `ARM64`, etc., based on standard compiler-defined macros. There are no network requests, file operations, obfuscated code, or any behavior that could be considered malicious. It is a standard architecture detection snippet commonly used in build systems.
</details>
<summary>Architecture detection snippet, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing boost-fixes.patch, CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed src/Botan-2.19.5/src/build-data/detect_arch.cpp. Status: SAFE -- Architecture detection snippet, no malicious content.
LLM auditresponse for boost-fixes.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain patch file updating boost::asio API calls (e.g., `expires_from_now` → `expires_after`, `io_service` → `io_context`, async_connect overloads, etc.) to work with newer Boost versions. It also removes an outdated `boost_system` library dependency in `info.txt`. No network requests, obfuscation, file operations, or any behavior beyond normal source code compatibility fixes.
</details>
<summary>Legitimate boost compatibility patch, no malicious code.</summary>
</security_assessment>

[2/10] Reviewing CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/build-data/detect_version.cpp, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed boost-fixes.patch. Status: SAFE -- Legitimate boost compatibility patch, no malicious code.
LLM auditresponse for detect_version.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file used by the Botan build system to detect the compiler version. It uses preprocessor macros to identify MSVC, IBM XL, Clang (including Apple Clang), and GCC, and outputs version numbers. There are no network requests, file operations, obfuscated code, or any commands that could execute arbitrary actions. The content is entirely declarative and safe.
</details>
<summary>Standard compiler detection header, no security issues.</summary>
</security_assessment>

[3/10] Reviewing CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/python/botan2.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed src/Botan-2.19.5/src/build-data/detect_version.cpp. Status: SAFE -- Standard compiler detection header, no security issues.
LLM auditresponse for botan2.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `botan2.py` is a standard Python ctypes wrapper for the Botan cryptographic library. It loads the Botan shared library (`libbotan-2.so`, `libbotan-2.dylib`, or `botan.dll`) and exposes its FFI functions through Python classes and methods. There is no evidence of malicious behavior: no network requests, no obfuscated code, no unexpected file operations, no system modifications, no backdoors, and no data exfiltration. The code is well-documented and follows standard packaging practices for a Python module that wraps a native library. The only dynamic behavior is loading the shared library from a list of platform-specific names, which is normal and expected for cross-platform compatibility.
</details>
<summary>Legitimate Python wrapper for Botan crypto library; no malicious code.</summary>
</security_assessment>

[4/10] Reviewing CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/cli/cli.cpp, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed src/Botan-2.19.5/src/python/botan2.py. Status: SAFE -- Legitimate Python wrapper for Botan crypto library; no malicious code.
LLM auditresponse for cli.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (cli.cpp) contains standard C++ source code for a command-line interface framework used by the Botan library. It includes headers, defines a `Command` class with argument parsing (via `Argument_Parser`), file I/O (`std::ifstream`/`std::ofstream`), RNG initialization, password prompting, and output formatting (hex, base64, base58). 

There are no signs of malicious activity: no obfuscated code, no unexpected network requests, no dangerous shell commands or executions, no attempts to exfiltrate data, and no modifications to system configuration outside the application's scope. The code does exactly what a CLI framework should do—parse user-provided parameters and perform requested operations using the Botan library. It poses no supply-chain risk.
</details>
<summary>Standard CLI framework code; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing CVE-2024-50382.patch, fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed src/Botan-2.19.5/src/cli/cli.cpp. Status: SAFE -- Standard CLI framework code; no malicious behavior.
LLM auditresponse for CVE-2024-50382.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch for the Botan cryptographic library that backports a fix for CVE-2024-50382, a compiler-induced side channel vulnerability. It adds constant-time barriers (`value_barrier`) and modifies GHASH operations to use constant-time masks, preventing compilers from optimizing away security-critical code. This is standard cryptographic hardening and contains no evidence of malicious behavior (no network access, obfuscation, file exfiltration, or unexpected system modifications).
</details>
<summary>Legitimate security patch for a cryptographic library.</summary>
</security_assessment>

[6/10] Reviewing fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/cli/tls_client.cpp, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed CVE-2024-50382.patch. Status: SAFE -- Legitimate security patch for a cryptographic library.
LLM auditresponse for tls_client.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate TLS client command-line tool from the Botan cryptographic library. It implements standard TLS client functionality: connecting to a remote host, handling TLS handshakes, verifying certificates, and exchanging data. All network operations are directed to the user-specified host and port, which is the expected behavior of a TLS client utility. There is no evidence of malicious code such as data exfiltration, backdoors, obfuscated commands, or unexpected system modifications. The code follows normal packaging and application patterns for a CLI TLS tool.</details>
<summary>Standard TLS client code, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py, src/Botan-2.19.5/src/cli/roughtime.cpp...
+ Reviewed src/Botan-2.19.5/src/cli/tls_client.cpp. Status: SAFE -- Standard TLS client code, no malicious behavior.
LLM auditresponse for roughtime.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Botan CLI source file for Roughtime time synchronization. It implements two commands: `roughtime_check` (parses and validates a Roughtime chain file) and `roughtime` (queries Roughtime servers). All network requests, file reads, and writes are performed using user-supplied arguments (server addresses, chain files, server list files). No hardcoded or unexpected network destinations exist. The code uses Botan's own cryptographic libraries for validation. There is no obfuscated code, no `eval`, `curl`, `wget`, or similar dangerous constructs. File operations are limited to user-specified chain files and a servers list file, with no modification of system files outside the application's scope. This is standard utility code with no evidence of malicious injection.
</details>
<summary>Standard Botan Roughtime CLI utility – no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing fix-oaep-unpad-breaking-change.patch, src/Botan-2.19.5/configure.py...
+ Reviewed src/Botan-2.19.5/src/cli/roughtime.cpp. Status: SAFE -- Standard Botan Roughtime CLI utility – no malicious behavior.
LLM auditresponse for configure.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build configuration script (`configure.py`) for the Botan cryptographic library. It parses command-line options, detects compiler and platform features, generates build files (Makefile, CMakeLists.txt, etc.), and sets up header/source linking. The visible code uses only normal Python operations: file I/O, subprocess to run compilers or git (for version detection), and argument parsing. No suspicious patterns (curl, wget, eval, base64, exec, obfuscated code, or exfiltration) are present. The script conforms to standard packaging practices for a build system and does not contain any supply-chain attack indicators. The file is judged SAFE.
</details>
<summary>Standard build configuration script for Botan library; no malicious code.</summary>
</security_assessment>

[9/10] Reviewing fix-oaep-unpad-breaking-change.patch...
+ Reviewed src/Botan-2.19.5/configure.py. Status: SAFE -- Standard build configuration script for Botan library; no malicious code.
LLM auditresponse for fix-oaep-unpad-breaking-change.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that partially reverts an upstream commit in the Botan library. It weakens OAEP unpadding to accept missing leading zero bytes, which was a breaking change introduced by a side-channel fix. The patch is clearly derived from the official Botan repository (referencing specific commits). It does not contain any obfuscated code, network requests, file operations, or commands that would indicate a supply-chain attack. The change reduces security in favor of backward compatibility, but that is an upstream design decision, not an injection of malicious code. There are no signs of exfiltration, backdoors, or other dangerous behaviors.
</details>
<summary>
Patch weakens OAEP security but is not malicious.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed fix-oaep-unpad-breaking-change.patch. Status: SAFE -- Patch weakens OAEP security but is not malicious.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 82,595
  Completion Tokens: 7,261
  Total Tokens: 89,856
  Total Cost: $0.008741
  Execution Time: 93.10 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-botan2.txt
Final Status: SAFE


No issues found.
