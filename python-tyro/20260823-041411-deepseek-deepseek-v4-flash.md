---
package: python-tyro
pkgver: 1.0.16
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 55128
completion_tokens: 7964
total_tokens: 63092
cost: 0.00377023136
execution_time: 121.68
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T04:14:11Z
file_verdicts:
  - file: tyro-1.0.16.tar.gz
    status: skipped
    summary: "Skipping binary file: tyro-1.0.16.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: src/tyro-1.0.16/docs/Makefile
    status: safe
    summary: Standard Sphinx documentation Makefile, no security issues.
  - file: src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py
    status: safe
    summary: Normal completion script, no security concerns.
  - file: src/tyro-1.0.16/src/tyro/_arguments.py
    status: safe
    summary: Standard tyro library file, no malicious behavior found.
  - file: src/tyro-1.0.16/src/tyro/__init__.py
    status: safe
    summary: Clean package init; no suspicious or malicious code.
  - file: src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py
    status: safe
    summary: Standard completion generator, no malicious behavior detected.
  - file: src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py
    status: safe
    summary: Standard completion generator, no malicious behavior found.
  - file: src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py
    status: safe
    summary: No security issues; legitimate completion generator.
  - file: src/tyro-1.0.16/src/tyro/_calling.py
    status: safe
    summary: Clean Python argument-parsing library code.
  - file: src/tyro-1.0.16/src/tyro/_cli.py
    status: safe
    summary: No malicious code found; standard CLI library module.
  - file: src/tyro-1.0.16/src/tyro/_unsafe_cache.py
    status: safe
    summary: Legitimate caching utility; no malicious behavior found.
---

Cloning https://aur.archlinux.org/python-tyro.git...
Cloned python-tyro
Analyzing python-tyro AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a source array pointing to the official GitHub archive of `brentyi/tyro`. No top-level command substitutions, no `pkgver()` function, and no suspicious code that executes during sourcing or source fetching. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only download the tarball (from the project's own GitHub releases), verify its checksum, and extract it; they will not execute any code from the extracted contents. No evidence of malice or unexpected behavior.
</details>
<summary>Standard PKGBUILD: safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD: safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, tyro-1.0.16.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed tyro-1.0.16.tar.gz. Status: SKIPPED -- Skipping binary file: tyro-1.0.16.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is fetched from the official GitHub repository with a pinned version tag and a valid SHA256 checksum. The build and package functions use standard Python packaging tools (python -m build, python -m installer) without any unexpected network requests, obfuscated code, or dangerous operations. Dependencies are appropriate for the package. No malicious behavior is present.
</details>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all required files.
Deciding which files to review next...
Note: 358 files available for selection; offering the 50 highest-priority to the model. 295 lower-priority file(s) were not offered.
LLM response for file selection:
src/tyro-1.0.16/docs/Makefile
src/tyro-1.0.16/src/tyro/__init__.py
src/tyro-1.0.16/src/tyro/_arguments.py
src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py
src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py
src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py
src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py
src/tyro-1.0.16/src/tyro/_calling.py
src/tyro-1.0.16/src/tyro/_cli.py
src/tyro-1.0.16/src/tyro/_unsafe_cache.py
Decided to review 10 additional files: src/tyro-1.0.16/docs/Makefile, src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py, src/tyro-1.0.16/src/tyro/_calling.py, src/tyro-1.0.16/src/tyro/_cli.py, src/tyro-1.0.16/src/tyro/_unsafe_cache.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/tyro-1.0.16/docs/Makefile...
[0/10] Reviewing src/tyro-1.0.16/docs/Makefile, src/tyro-1.0.16/src/tyro/__init__.py...
[0/10] Reviewing src/tyro-1.0.16/docs/Makefile, src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Sphinx documentation Makefile. It defines variables for the sphinx-build command, source and build directories, and provides a help target and a catch-all target that routes all unknown targets to sphinx-build. There are no network requests, obfuscated code, dangerous commands, or any deviation from expected packaging practices. The content is entirely benign and serves only to build documentation.</details>
<summary>Standard Sphinx documentation Makefile, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py...
+ Reviewed src/tyro-1.0.16/docs/Makefile. Status: SAFE -- Standard Sphinx documentation Makefile, no security issues.
[1/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py...
LLM auditresponse for _completion_script.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standalone completion script for tyro that reconstructs colon-split words, navigates subcommand/option contexts, and outputs completion suggestions to stdout. It uses only Python standard library (`sys`, `typing`) and contains no network requests, file operations, obfuscated code, execution of external commands, or any data exfiltration. The logic is standard for shell completion tasks and serves the package's stated purpose.
</details>
<summary>Normal completion script, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py...
[2/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_arguments.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_backends/_completion/_completion_script.py. Status: SAFE -- Normal completion script, no security concerns.
LLM auditresponse for _arguments.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_arguments.py` is a standard part of the `tyro` library and contains logic for converting type-annotated field definitions into `argparse` arguments. It imports only from the standard library and the package's own internal modules (`_fields`, `_settings`, `_singleton`, `_strings`, `_fmtlib`, `_backends._argparse`, `_typing_compat`, `conf._markers`, `constructors`). There are no network requests, system command executions, obfuscated code, eval calls, or any behavior that could exfiltrate data or install backdoors. The optional `shtab` import for tab completion is safely wrapped in a try/except. All operations are local to argument construction and help text generation. No signs of supply-chain attack or malicious intent.
</details>
<summary>Standard tyro library file, no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_arguments.py. Status: SAFE -- Standard tyro library file, no malicious behavior found.
[3/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python package `__init__.py` for the `tyro` library. It defines version, re-exports public API members, handles lazy imports for deprecated attributes, and provides a custom `__getattr__` for backward compatibility. There are no network requests, obfuscation, file operations, or system modifications beyond standard module loading. All imports reference the package's own submodules or standard library (`importlib`). This is entirely benign and follows normal Python packaging conventions.
</details>
<summary>
Clean package init; no suspicious or malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/tyro-1.0.16/src/tyro/__init__.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py...
[4/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py...
+ Reviewed src/tyro-1.0.16/src/tyro/__init__.py. Status: SAFE -- Clean package init; no suspicious or malicious code.
LLM auditresponse for _tyro_bash.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a standard bash completion generator for the tyro package. It produces a shell script that uses an embedded Python snippet (imported from the package's own `_python_completer` module) to compute completions from a specification built from the parser. The generated script:
- Reads the embedded Python via a heredoc and executes it with `python3 -`. No external code is downloaded; the Python is part of the tyro package.
- Handles colon-separated arguments by reconstructing the current word from `COMP_WORDS` — a known bash completion pattern.
- Delegates file completions to `compgen -f`.
- Registers `complete -F` for the program, which is normal CLI completion behavior.

No obfuscation, network requests, file exfiltration, or unexpected system modifications are present. The code is consistent with the stated purpose of generating bash completions and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard completion generator, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_bash.py. Status: SAFE -- Standard completion generator, no malicious behavior detected.
[5/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py, src/tyro-1.0.16/src/tyro/_calling.py...
LLM auditresponse for _tyro_zsh.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python module for generating Zsh completion scripts as part of the `tyro` command-line argument parsing library. It builds a completion specification and embeds Python logic to be executed at runtime by the user's shell. The generated script invokes the system Python interpreter with the current command-line words to produce completions — this is the normal, intended behavior for dynamic shell completion. There are no suspicious network requests, obfuscated code, unexpected file operations, or dangerous commands (eval, base64, curl, wget, etc.). The code only uses standard library imports and routine string formatting. The embedded Python code from `get_embedded_code()` is part of the same package and is not suspicious. No evidence of exfiltration, backdoors, or any supply-chain attack injection is present.
</details>
<summary>Standard completion generator, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py, src/tyro-1.0.16/src/tyro/_calling.py, src/tyro-1.0.16/src/tyro/_cli.py...
[6/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_calling.py, src/tyro-1.0.16/src/tyro/_cli.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_zsh.py. Status: SAFE -- Standard completion generator, no malicious behavior found.
LLM auditresponse for _tyro_fish.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_tyro_fish.py` is a standard completion generator for the `tyro` argument-parsing library. It builds a fish shell completion script that embeds Python code (obtained from the package's own `_python_completer` module) to handle completions at runtime.  

All string escaping (`_fish_escape_double_quoted`, `_fish_escape_single_quoted`) is correctly implemented to prevent shell injection in the generated script. The embedded Python code originates from within the same package and is not fetched from an external or unexpected source – it is the application's own completion logic. No network requests, obfuscation, file-system manipulation outside the package's scope, or other suspicious operations are present.  

The implementation follows normal packaging and shell-completion patterns. There is no evidence of malicious behavior or supply-chain attack.
</details>
<summary>
No security issues; legitimate completion generator.</summary>
</security_assessment>

[6/10] Reviewing src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py, src/tyro-1.0.16/src/tyro/_calling.py, src/tyro-1.0.16/src/tyro/_cli.py, src/tyro-1.0.16/src/tyro/_unsafe_cache.py...
[7/10] Reviewing src/tyro-1.0.16/src/tyro/_calling.py, src/tyro-1.0.16/src/tyro/_cli.py, src/tyro-1.0.16/src/tyro/_unsafe_cache.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_backends/_completion/_tyro_fish.py. Status: SAFE -- No security issues; legitimate completion generator.
LLM auditresponse for _calling.py:
<security_assessment>
<decision>SAFE</decision>
<details>
No security issues found. The file contains standard Python library code for building CLI argument parsers. All operations are in-memory data transformations: extracting values from argparse results and calling user-supplied functions with those values. There are no network requests, file operations, system commands, obfuscation, or any behavior that could exfiltrate data or execute untrusted code. The typical AUR practices are not relevant here as this is an upstream library source file, not a packaging script.
</details>
<summary>Clean Python argument-parsing library code.</summary>
</security_assessment>

[8/10] Reviewing src/tyro-1.0.16/src/tyro/_cli.py, src/tyro-1.0.16/src/tyro/_unsafe_cache.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_calling.py. Status: SAFE -- Clean Python argument-parsing library code.
LLM auditresponse for _cli.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_cli.py` is a standard module from the tyro Python library for generating command-line interfaces. It imports only standard library modules and internal package modules, with no external network requests, obfuscated code, or unexpected system operations. The code is well-structured and follows normal packaging practices for a CLI library. The shell completion feature (`--tyro-write-completion`) writes a user-specified path, which is a documented and intended functionality, not a supply-chain attack. No evidence of malicious behavior.
</details>
<summary>No malicious code found; standard CLI library module.</summary>
</security_assessment>

[9/10] Reviewing src/tyro-1.0.16/src/tyro/_unsafe_cache.py...
+ Reviewed src/tyro-1.0.16/src/tyro/_cli.py. Status: SAFE -- No malicious code found; standard CLI library module.
LLM auditresponse for _unsafe_cache.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_unsafe_cache.py` implements a caching decorator that relies on object identity (`id()`) for unhashable arguments. This is a fragile but non‑malicious pattern, explicitly named to warn users of its assumptions. The code contains no network requests, file operations, system modifications, obfuscated content, or execution of untrusted commands. The only unusual element is a conditional block under `pytest` that performs a probabilistic sanity check via `assert`; this is a developer‑aiding mechanism, not a backdoor or exfiltration vector. No evidence of a supply‑chain attack.
</details>
<summary>Legitimate caching utility; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/tyro-1.0.16/src/tyro/_unsafe_cache.py. Status: SAFE -- Legitimate caching utility; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: tyro-1.0.16.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,128
  Completion Tokens: 7,964
  Total Tokens: 63,092
  Total Cost: $0.003770
  Execution Time: 121.68 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-gn8i2u0j/tyro-1.0.16.tar.gz: [SKIPPED] Skipping binary file: tyro-1.0.16.tar.gz
