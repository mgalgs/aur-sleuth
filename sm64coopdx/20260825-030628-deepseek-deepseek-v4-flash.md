---
package: sm64coopdx
pkgver: 1.5.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 101650
completion_tokens: 9679
total_tokens: 111329
cost: 0.010722034848
execution_time: 705.75
files_reviewed: 12
files_skipped: 0
files_unauditable: 565
unpinned_sources: 0
date: 2026-08-25T03:06:27Z
file_verdicts:
  - file: sm64coopdx.sh
    status: safe
    summary: Standard launcher script; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
  - file: src/sm64coopdx-1.5.1/extract_assets.py
    status: safe
    summary: Standard asset extraction script for SM64 decomp, no security issues.
  - file: src/sm64coopdx-1.5.1/autogen/autogen.sh
    status: safe
    summary: Standard build-generation script, no security issues.
  - file: src/sm64coopdx-1.5.1/autogen/common.py
    status: safe
    summary: Benign autogen utility; no malicious code or security issues found.
  - file: src/sm64coopdx-1.5.1/autogen/extract_constants.py
    status: safe
    summary: Safe build helper script.
  - file: src/sm64coopdx-1.5.1/Makefile
    status: safe
    summary: Standard build Makefile, no malicious activity found.
  - file: src/sm64coopdx-1.5.1/autogen/extract_structs.py
    status: safe
    summary: Normal source code extraction script, no security concerns.
  - file: src/sm64coopdx-1.5.1/autogen/extract_functions.py
    status: safe
    summary: Safe build helper with no malicious behavior.
  - file: src/sm64coopdx-1.5.1/autogen/convert_constants.py
    status: safe
    summary: Standard build script, no malicious behavior found.
  - file: src/sm64coopdx-1.5.1/autogen/convert_structs.py
    status: safe
    summary: Legitimate autogen tool; no malicious behavior.
  - file: src/sm64coopdx-1.5.1/autogen/convert_functions.py
    status: safe
    summary: Build-time code generator; no malicious activity.
---

Cloning https://aur.archlinux.org/sm64coopdx.git...
Cloned sm64coopdx
Analyzing sm64coopdx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, a standard source array pointing to an official GitHub tarball and a local helper script, and function bodies for `prepare()`, `build()`, and `package()`. These functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The top-level code is static assignments with no command substitution or dangerous operations. No `pkgver()` function is defined, so the default static version is used. There is no obfuscation, no unexpected network destinations, and no code that would exfiltrate data or execute arbitrary commands during sourcing. The provided MD5 checksums are present and standard; even if they were skipped, it would not be a safety concern for this narrow gate. Fetching and extracting the source archive is the intended operation and poses no immediate risk. This file passes the initial safety gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code or pkgver() – safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code or pkgver() – safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, sm64coopdx.sh...
LLM auditresponse for sm64coopdx.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the sm64coopdx game. It defines the save directory according to XDG conventions, creates it if needed, sets the library path to include the package-specific directory, and executes the main binary with appropriate flags. No suspicious commands, network requests, obfuscation, or unexpected file operations are present. The script follows normal packaging practices for a game launcher.
</details>
<evidence>
</evidence>
<summary>Standard launcher script; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed sm64coopdx.sh. Status: SAFE -- Standard launcher script; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It fetches the source tarball from the official GitHub repository with a pinned version tag and provides MD5 checksums for both sources. Build and package steps are straightforward: running `make`, then installing the binary, shared libraries, game data, a wrapper script, icon, and desktop entry. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The wrapper script (`${pkgname}.sh`) is included as a separate source with a checksum; without seeing its content, there is no evidence of malice in the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 565 compiled/archived file(s) cannot be audited as text and were not reviewed (v1.5.1.tar.gz, src/sm64coopdx-1.5.1/docs/lua/examples/audio-test/sound/music.mp3, src/sm64coopdx-1.5.1/docs/lua/examples/audio-test/sound/sample.mp3 and 562 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3712 files available for selection; offering the 50 highest-priority to the model. 1790 lower-priority file(s) were not offered.
LLM response for file selection:
src/sm64coopdx-1.5.1/Makefile
src/sm64coopdx-1.5.1/autogen/autogen.sh
src/sm64coopdx-1.5.1/extract_assets.py
src/sm64coopdx-1.5.1/autogen/common.py
src/sm64coopdx-1.5.1/autogen/extract_constants.py
src/sm64coopdx-1.5.1/autogen/extract_functions.py
src/sm64coopdx-1.5.1/autogen/extract_structs.py
src/sm64coopdx-1.5.1/autogen/convert_constants.py
src/sm64coopdx-1.5.1/autogen/convert_functions.py
src/sm64coopdx-1.5.1/autogen/convert_structs.py
Decided to review 10 additional files: src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/autogen.sh, src/sm64coopdx-1.5.1/extract_assets.py, src/sm64coopdx-1.5.1/autogen/common.py, src/sm64coopdx-1.5.1/autogen/extract_constants.py, src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py, src/sm64coopdx-1.5.1/autogen/convert_functions.py, src/sm64coopdx-1.5.1/autogen/convert_structs.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/sm64coopdx-1.5.1/Makefile...
[0/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/extract_assets.py...
[0/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/extract_assets.py, src/sm64coopdx-1.5.1/autogen/autogen.sh...
LLM auditresponse for extract_assets.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `extract_assets.py` is a standard asset extraction tool for the Super Mario 64 decompilation project. It reads local ROM files, verifies their SHA1 hashes against expected values, and extracts game assets (textures, sounds, etc.) using locally built tools from the `tools/` directory.  

- No network requests are made; all operations are on local files within the build directory.  
- No obfuscated code or encoded commands are present.  
- The `os.system` call in `clean_assets` only removes a specific subdirectory (`sound/samples/extended/`) as part of cleaning generated assets—this is normal for asset regeneration.  
- All subprocess invocations use explicit argument lists (preventing shell injection) and reference local tool binaries built from the same source tree.  

There is no evidence of data exfiltration, backdoors, or supply-chain injection. The script performs exactly the asset extraction/cleanup tasks expected by the upstream project.
</details>
<evidence></evidence>
<summary>Standard asset extraction script for SM64 decomp, no security issues.</summary>
</security_assessment>

[0/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/extract_assets.py, src/sm64coopdx-1.5.1/autogen/autogen.sh, src/sm64coopdx-1.5.1/autogen/common.py...
[1/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/autogen.sh, src/sm64coopdx-1.5.1/autogen/common.py...
+ Reviewed src/sm64coopdx-1.5.1/extract_assets.py. Status: SAFE -- Standard asset extraction script for SM64 decomp, no security issues.
LLM auditresponse for autogen.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard autogen script that runs several Python scripts from the `./autogen/` directory. It performs no network requests, no obfuscated commands, no unusual file operations, and no system modifications beyond running the package's own build tools. All invoked scripts are local within the source tree, consistent with a normal build/generation step. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard build-generation script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/autogen.sh, src/sm64coopdx-1.5.1/autogen/common.py, src/sm64coopdx-1.5.1/autogen/extract_constants.py...
[2/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/common.py, src/sm64coopdx-1.5.1/autogen/extract_constants.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/autogen.sh. Status: SAFE -- Standard build-generation script, no security issues.
LLM auditresponse for common.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python helper module used by the sm64coopdx build/autogen process to translate C type definitions into Lua type annotations for documentation. It imports only `os` and `re` (plus local `vec_types`), and all functions perform string parsing/mapping (e.g., `translate_type_to_lvt`, `translate_type_to_lot`, `translate_type_to_lua`, `translate_type_to_rnd`, `gen_comment_header`). There are no network operations, no subprocess calls, no `eval`/`exec`, no obfuscation, no file writes outside the build tree, and no references to system files or environment data. The code is purely syntactic and deterministic. The use of `os.path` is limited to resolving a relative path within the source tree (in `get_path`). No injection, backdoor, or supply-chain indicators are present.
</details>
<evidence>
</evidence>
<summary>
Benign autogen utility; no malicious code or security issues found.</summary>
</security_assessment>

[2/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/common.py, src/sm64coopdx-1.5.1/autogen/extract_constants.py, src/sm64coopdx-1.5.1/autogen/extract_functions.py...
[3/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/extract_constants.py, src/sm64coopdx-1.5.1/autogen/extract_functions.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/common.py. Status: SAFE -- Benign autogen utility; no malicious code or security issues found.
LLM auditresponse for extract_constants.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python script used during the build process to extract constants (enums and defines) from C header files. It performs standard text processing: reading a file, stripping comments, removing whitespace, and filtering relevant lines. It includes a special case for `levels/level_defines.h` that reformats level definitions into an enum. There are no network requests, no execution of external commands, no obfuscated code, and no dangerous operations (no `eval`, `exec`, `curl`, `wget`, or base64 decoding). The script only reads a file specified via command-line argument and writes output to stdout, which is typical for a build helper. The code is transparent and matches the expected functionality for its purpose. No evidence of any supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Safe build helper script.</summary>
</security_assessment>

[3/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/extract_constants.py, src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py...
[4/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/extract_constants.py. Status: SAFE -- Safe build helper script.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build system for the sm64coopdx cooperative multiplayer mod of Super Mario 64. It defines compilation flags, source directories, dependencies (such as Discord SDK, CoopNet, Lua libraries), and build rules. No commands fetch or execute code from remote or unexpected hosts. All network-related components (Discord SDK, updater) are provided as precompiled binaries within the source tree, and the Makefile merely copies them into the build directory—no download occurs at build time. Git revision and build timestamps are retrieved for informational purposes, which is normal. File operations are limited to standard build actions (compiling, linking, copying assets, cleaning). No obfuscated commands, encoded payloads, or exfiltration logic are present. Any potential concerns about precompiled binaries are a supply-chain hygiene issue, not evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard build Makefile, no malicious activity found.</summary>
</security_assessment>

[4/10] Reviewing src/sm64coopdx-1.5.1/Makefile, src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py...
[5/10] Reviewing src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py...
+ Reviewed src/sm64coopdx-1.5.1/Makefile. Status: SAFE -- Standard build Makefile, no malicious activity found.
LLM auditresponse for extract_structs.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python script used to extract C struct definitions from source files. It performs standard file reading, text processing (removing comments, macros, directives), and pattern matching with regular expressions. There are no network requests, no execution of external commands, no obfuscated code, no dangerous operations like `eval` or `exec`, and no attempts to access or exfiltrate sensitive data. The script is part of the upstream package's build tooling (autogen stage) and is consistent with normal packaging practices. It does not contain any injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Normal source code extraction script, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/extract_structs.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py, src/sm64coopdx-1.5.1/autogen/convert_functions.py...
[6/10] Reviewing src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py, src/sm64coopdx-1.5.1/autogen/convert_functions.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/extract_structs.py. Status: SAFE -- Normal source code extraction script, no security concerns.
LLM auditresponse for extract_functions.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard code generation helper used during the build process. It reads a C source file, strips preprocessor directives, comments, and certain macros, then extracts function declarations and associated descriptions (from markers like `|description|`/`|descriptionEnd|`). The only file I/O is reading the input file provided as a command-line argument; it does not write files, make network requests, or execute external commands. All operations are string manipulations using Python's standard library (`os`, `re`, `sys`). There is no obfuscated code, no encoded payloads, and no behavior that deviates from what is expected for an autogen utility in a game compilation pipeline. This presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Safe build helper with no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/sm64coopdx-1.5.1/autogen/extract_functions.py, src/sm64coopdx-1.5.1/autogen/convert_constants.py, src/sm64coopdx-1.5.1/autogen/convert_functions.py, src/sm64coopdx-1.5.1/autogen/convert_structs.py...
[7/10] Reviewing src/sm64coopdx-1.5.1/autogen/convert_constants.py, src/sm64coopdx-1.5.1/autogen/convert_functions.py, src/sm64coopdx-1.5.1/autogen/convert_structs.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/extract_functions.py. Status: SAFE -- Safe build helper with no malicious behavior.
LLM auditresponse for convert_constants.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an autogen script that parses C source headers to extract constants and generate Lua constant files, documentation, and definitions. It reads from local source files, uses standard Python I/O, and writes output to files within the project directory. There is no network access, no execution of external commands, no obfuscated code, and no suspicious operations. The `eval` call in `process_enum` is constrained to numeric expressions only (empty globals/locals). All file paths are internal to the package. The script performs standard build-time code generation and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard build script, no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/sm64coopdx-1.5.1/autogen/convert_functions.py, src/sm64coopdx-1.5.1/autogen/convert_structs.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/convert_constants.py. Status: SAFE -- Standard build script, no malicious behavior found.
LLM auditresponse for convert_structs.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a code generation script used during the build process of sm64coopdx. It reads C header files from the project's source tree, parses struct definitions, and automatically generates C source, headers, documentation, and Lua definitions. All file operations are confined to the project's own directory structure (e.g., `src/pc/lua/`, `docs/lua/`, `autogen/lua_definitions/`). The script makes no network requests, does not use `eval`, `exec`, or base64 decoding, and contains no obfuscated code. The only external modules imported are local project modules (`extract_structs`, `extract_object_fields`, `common`, `vec_types`). The fuzz functionality writes to a local file only when explicitly invoked with a `fuzz` argument, and even then only reads from `fuzz_from` (empty) and writes to `fuzz_to` (empty) — no untrusted data is fetched. There is no evidence of data exfiltration, backdoors, or any behavior outside the normal build automation of this project.
</details>
<evidence></evidence>
<summary>Legitimate autogen tool; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/sm64coopdx-1.5.1/autogen/convert_functions.py...
+ Reviewed src/sm64coopdx-1.5.1/autogen/convert_structs.py. Status: SAFE -- Legitimate autogen tool; no malicious behavior.
LLM auditresponse for convert_functions.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a code generation script used during the build process of the sm64coopdx game. It reads local C header and source files, extracts function declarations, and generates Lua bindings in C, Markdown documentation, and Lua definition files. All file operations are confined to the source/build directory (e.g., `src/pc/lua/smlua_functions_autogen.c`, `docs/lua/functions*.md`, `autogen/lua_definitions/functions.lua`). No network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or system modifications outside the expected build tree are present. The script includes allow/deny lists to control which functions are exposed, and handles special cases for sound functions, vector types, and optional parameters. This is standard practice for automating binding generation in a moddable game engine. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Build-time code generator; no malicious activity.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/sm64coopdx-1.5.1/autogen/convert_functions.py. Status: SAFE -- Build-time code generator; no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 101,650
  Completion Tokens: 9,679
  Total Tokens: 111,329
  Total Cost: $0.010722
  Execution Time: 705.75 seconds

Final Status: SAFE


No issues found.
