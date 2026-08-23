---
package: ocrmypdf
pkgver: 17.10.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 57431
completion_tokens: 9003
total_tokens: 66434
cost: 0.00368585182
execution_time: 148.63
files_reviewed: 12
files_skipped: 1
files_unauditable: 211
unpinned_sources: 0
date: 2026-08-23T19:14:21Z
file_verdicts:
  - file: ocrmypdf-17.10.0.tar.gz
    status: skipped
    summary: "Skipping binary file: ocrmypdf-17.10.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious indicators found.
  - file: ocrmypdf.install
    status: safe
    summary: Benign post-install message; no security concerns.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py
    status: safe
    summary: Standard plugin manager; no malicious code found.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py
    status: safe
    summary: No security issues; clean plugin registry code.
  - file: src/ocrmypdf-17.10.0/misc/webservice.py
    status: safe
    summary: Standard launcher script, no security issues.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py
    status: safe
    summary: Upstream OCR interface, no malicious behavior detected.
  - file: src/ocrmypdf-17.10.0/misc/synology.py
    status: safe
    summary: Standard OCR automation script, no malicious behavior.
  - file: src/ocrmypdf-17.10.0/misc/_webservice.py
    status: safe
    summary: Legitimate web UI wrapper for upstream OCRmyPDF.
  - file: src/ocrmypdf-17.10.0/misc/watcher.py
    status: safe
    summary: No malicious code; standard security practices.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py
    status: safe
    summary: Legitimate security module; no malicious behavior detected.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py
    status: safe
    summary: Standard validation code, no malicious behavior.
  - file: src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py
    status: safe
    summary: Standard Ghostscript interface, no indicators of malice.
---

Cloning https://aur.archlinux.org/ocrmypdf.git...
Cloned ocrmypdf
Analyzing ocrmypdf AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, a source from `files.pythonhosted.org` (PyPI), and a pinned SHA-256 checksum. There is no `pkgver()` function, and no top-level code execution or dangerous commands (e.g., `curl`, `eval`, obfuscation). The source download and extraction will write files to disk but not execute them, and `--nobuild`/`--noprepare` prevents any code in `build()` or `package()` from running. The referenced install file (`ocrmypdf.install`) is not sourced during this gate. No malicious behavior is present in the global scope.</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, ocrmypdf.install...
[0/3] Reviewing PKGBUILD, ocrmypdf.install, ocrmypdf-17.10.0.tar.gz...
[1/3] Reviewing PKGBUILD, ocrmypdf.install...
! Reviewed ocrmypdf-17.10.0.tar.gz. Status: SKIPPED -- Skipping binary file: ocrmypdf-17.10.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package recipe for `ocrmypdf`, version 17.10.0. It fetches the source tarball from the official Python Package Index (files.pythonhosted.org) and verifies it with a pinned SHA256 checksum. The build and package steps use the standard Python toolchain (`python -m build`, `python -m installer`). There are no obfuscated commands, no unexpected network requests, no execution of downloaded code outside the expected workflow, and no attempts to exfiltrate data. The only file referenced but not shown (`ocrmypdf.install`) is a common AUR pattern for install scripts, but since it is not present we cannot evaluate it; however, that does not affect the safety of this PKGBUILD. All operations are consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing ocrmypdf.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious indicators found.
LLM auditresponse for ocrmypdf.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-install script for the ocrmypdf package. It only contains an echo statement reminding the user to install the appropriate tesseract language data package (e.g., tesseract-data-eng). There are no dangerous commands, network requests, file manipulations, or obfuscated code. The behavior is entirely consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Benign post-install message; no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed ocrmypdf.install. Status: SAFE -- Benign post-install message; no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 211 compiled/archived file(s) cannot be audited as text and were not reviewed (src/ocrmypdf-17.10.0/src/ocrmypdf/data/sRGB.icc, src/ocrmypdf-17.10.0/tests/cache/manifest.jsonl, src/ocrmypdf-17.10.0/tests/cache/2400dpi/__-l__eng__000001_ocr.png__000001_ocr_hocr__hocr__txt/hocr.bin and 208 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 239 files available for selection; offering the 50 highest-priority to the model. 171 lower-priority file(s) were not offered.
LLM response for file selection:
src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py
src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py
src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py
src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py
src/ocrmypdf-17.10.0/misc/webservice.py
src/ocrmypdf-17.10.0/misc/_webservice.py
src/ocrmypdf-17.10.0/misc/synology.py
src/ocrmypdf-17.10.0/misc/watcher.py
src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py
src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py
Decided to review 10 additional files: src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/webservice.py, src/ocrmypdf-17.10.0/misc/_webservice.py, src/ocrmypdf-17.10.0/misc/synology.py, src/ocrmypdf-17.10.0/misc/watcher.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py...
[0/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py...
[0/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py...
LLM auditresponse for _plugin_manager.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a type-safe wrapper around pluggy.PluginManager for loading plugins. It loads plugins from three sources: built-in modules via `pkgutil.iter_modules`, setuptools entry points via `load_setuptools_entrypoints`, and user-specified plugins (as file paths or dotted module names). All plugin loading uses standard, well-known Python import mechanisms (`importlib.import_module`, `importlib.util.spec_from_file_location`). There is no obfuscated code, no network requests, no execution of fetched scripts, no file exfiltration, and no unusual system modifications. The code is consistent with the stated purpose of managing plugins for ocrmypdf. While allowing user-specified plugin paths could theoretically be misused if an attacker controls the arguments, that is intended functionality and not a supply-chain attack vector in the package itself. The file contains no injected malicious code.
</details>
<evidence></evidence>
<summary>Standard plugin manager; no malicious code found.</summary>
</security_assessment>

[1/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_manager.py. Status: SAFE -- Standard plugin manager; no malicious code found.
[1/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py...
LLM auditresponse for _plugin_registry.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a plugin option registry using Pydantic models. It provides two methods: one to register option models with a namespace and one to retrieve all registered models as a copy. The code is straightforward, contains no network operations, file system modifications, execution of untrusted commands, or any other suspicious activity. It follows standard Python packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>No security issues; clean plugin registry code.</summary>
</security_assessment>

[1/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/webservice.py...
[2/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/webservice.py...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_plugin_registry.py. Status: SAFE -- No security issues; clean plugin registry code.
LLM auditresponse for webservice.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launcher script for the OCRmyPDF web service. It checks for the `streamlit` dependency and then uses `os.execvp` to replace the current process with `python -m streamlit run misc/_webservice.py`. There is no obfuscated code, no unexpected network requests, no file operations outside the package scope, and no deviation from standard packaging practices. The script only serves to start the application's own web service component.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/webservice.py, src/ocrmypdf-17.10.0/misc/_webservice.py...
[3/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py...
+ Reviewed src/ocrmypdf-17.10.0/misc/webservice.py. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for tesseract.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream module from the ocrmypdf source tarball. It provides a Python interface to the Tesseract OCR executable. The code constructs and runs Tesseract subprocesses with standard arguments (languages, engine mode, page segmentation mode, etc.). There are no suspicious network requests, no obfuscated code, no base64/curl/wget usage, and no attempts to exfiltrate data or modify system files. All subprocess calls use a list-based argument construction (no shell injection). The behavior is entirely consistent with the stated purpose of interfacing with Tesseract. No evidence of a supply-chain attack or malicious injection was found.
</details>
<evidence></evidence>
<summary>Upstream OCR interface, no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py, src/ocrmypdf-17.10.0/misc/synology.py...
[4/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py, src/ocrmypdf-17.10.0/misc/synology.py...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/tesseract.py. Status: SAFE -- Upstream OCR interface, no malicious behavior detected.
LLM auditresponse for synology.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an example helper for running OCRmyPDF on a Synology NAS. It walks a directory tree, finds PDF files, sends each through a Docker container (`jbarlow83/ocrmypdf`) for OCR processing, and then moves the output and original files to directories specified via command-line arguments.  

The operations are consistent with its stated purpose:  
- It uses `subprocess.run` to invoke Docker, which is the intended way to run OCRmyPDF in this environment.  
- It writes logs and moves files using `shutil.move` with paths derived from command-line arguments and directory walking.  
- There is no obfuscation, no network requests beyond the Docker image pull (which is upstream and expected), no base64 decoding, no `eval`, and no attempt to exfiltrate or modify system files.  

While the script relies on mutable command-line arguments and runs as root (as noted in a comment), these are operational choices, not supply-chain attacks. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard OCR automation script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py...
+ Reviewed src/ocrmypdf-17.10.0/misc/synology.py. Status: SAFE -- Standard OCR automation script, no malicious behavior.
[5/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py, src/ocrmypdf-17.10.0/misc/watcher.py...
LLM auditresponse for _webservice.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream web service wrapper for OCRmyPDF using Streamlit. It builds command-line arguments from user input and invokes `ocrmypdf` as a subprocess. No signs of supply-chain attack (no obfuscation, no unexpected network requests, no data exfiltration, no backdoors). All operations are consistent with the application's intended functionality. The free-text inputs (e.g., pages, metadata) could theoretically be vectors for argument injection, but that would be an upstream application vulnerability, not a malicious injection by the AUR packager. The code uses standard libraries and standard packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate web UI wrapper for upstream OCRmyPDF.</summary>
</security_assessment>

[5/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/_webservice.py, src/ocrmypdf-17.10.0/misc/watcher.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py...
[6/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/watcher.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py...
+ Reviewed src/ocrmypdf-17.10.0/misc/_webservice.py. Status: SAFE -- Legitimate web UI wrapper for upstream OCRmyPDF.
LLM auditresponse for watcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `watcher.py` is part of the ocrmypdf package and implements a directory watcher that OCRs newly added PDFs. It does not contain any malicious code. The script follows standard security practices: it imports a dedicated security module (`ocrmypdf._watcher_security`) that performs checks such as ensuring data directories are isolated from the code zone, preventing watch loops, validating settings files, and verifying plugins. The file operations (reading, writing, moving) are all limited to the configured input, output, and archive directories, and the script checks for path traversal and symlink attacks before processing. There is no obfuscation, no network requests, and no exfiltration of data. The only potential concern is the use of `load_dotenv()` without a specific path, but the script's own isolation checks ensure that the working directory (where `.env` would be loaded from) is not writable by an attacker. This is a legitimate design choice, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>No malicious code; standard security practices.</summary>
</security_assessment>

[6/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/misc/watcher.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py...
[7/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py...
+ Reviewed src/ocrmypdf-17.10.0/misc/watcher.py. Status: SAFE -- No malicious code; standard security practices.
LLM auditresponse for _watcher_security.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a security enforcement module for the ocrmypdf watched-folder helper. It implements path isolation checks to ensure that data directories (input, output, archive) do not overlap with the Python interpreter, virtual environment, site-packages, or any location on `sys.path` or `$PATH`. It also validates that settings files and plugin paths are not inside writable data directories and that files are regular files (not symlinks, FIFOs, etc.). All code uses standard library modules (`os`, `pathlib`, `stat`, `sysconfig`, `site`, `sys`) for path normalization and checks. There are no network requests, obfuscated code, file operations outside the intended scope, or any signs of malicious or injected behavior. The functions are consistent with the package's documented security design to prevent supply-chain attacks via the watcher feature.
</details>
<evidence>
</evidence>
<summary>Legitimate security module; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py, src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_watcher_security.py. Status: SAFE -- Legitimate security module; no malicious behavior detected.
LLM auditresponse for _validation.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements validation logic for OCRmyPDF command-line options and input/output handling. It checks for incompatible options, language availability, file writability, and performs platform checks. All operations are standard Python file I/O (copyfileobj, symlink creation, stat calls) and library imports (pikepdf, logging). There are no network requests, obfuscated code, eval calls, or execution of untrusted content. The code is consistent with the application's intended functionality and does not exhibit any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard validation code, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_validation.py. Status: SAFE -- Standard validation code, no malicious behavior.
LLM auditresponse for ghostscript.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ghostscript.py` is a standard Python module that provides an interface to the Ghostscript executable for PDF rasterization and PDF/A generation. All operations are consistent with the package's stated purpose: it constructs command-line arguments and calls Ghostscript, handles its output, and performs image processing with PIL. No network requests, obfuscated code, base64 decoding, eval, or other suspicious patterns are present. The use of `subprocess` to invoke `gs` is expected. The code is well-documented and follows standard practices. There is no evidence of supply-chain attack indicators such as data exfiltration, backdoors, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>Standard Ghostscript interface, no indicators of malice.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ocrmypdf-17.10.0/src/ocrmypdf/_exec/ghostscript.py. Status: SAFE -- Standard Ghostscript interface, no indicators of malice.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: ocrmypdf-17.10.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,431
  Completion Tokens: 9,003
  Total Tokens: 66,434
  Total Cost: $0.003686
  Execution Time: 148.63 seconds

Final Status: SAFE


No issues found.


Audit Skips:

ocrmypdf-17.10.0.tar.gz: [SKIPPED] Skipping binary file: ocrmypdf-17.10.0.tar.gz
