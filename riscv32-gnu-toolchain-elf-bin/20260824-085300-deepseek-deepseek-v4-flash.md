---
package: riscv32-gnu-toolchain-elf-bin
pkgver: 2026.08.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 79086
completion_tokens: 6727
total_tokens: 85813
cost: 0.0053117960
execution_time: 211.53
files_reviewed: 11
files_skipped: 1
files_unauditable: 153
unpinned_sources: 0
date: 2026-08-24T08:53:00Z
file_verdicts:
  - file: riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz
    status: skipped
    summary: "Skipping binary file: riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package for prebuilt RISC-V toolchain.
  - file: src/riscv/share/dejagnu/commands/help.sh
    status: safe
    summary: Standard help script, no malicious indicators.
  - file: src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh
    status: safe
    summary: Standard GCC fixincludes script, no malicious behavior.
  - file: src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py
    status: safe
    summary: Standard GDB pretty-printer module, no security issues.
  - file: src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py
    status: safe
    summary: Standard GDB pretty-printer script; no security concerns.
  - file: src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py
    status: safe
    summary: Legitimate GDB pretty-printer, no malicious code.
  - file: src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py
    status: safe
    summary: Legitimate GDB xmethods script; no malicious behavior detected.
  - file: src/riscv/share/gdb/python/gdb/FrameDecorator.py
    status: safe
    summary: Standard GDB Python frame decorator code, no security issues.
  - file: src/riscv/share/gdb/python/gdb/command/explore.py
    status: safe
    summary: Legitimate GDB script, no malicious behavior.
  - file: src/riscv/share/gdb/python/gdb/FrameIterator.py
    status: safe
    summary: Standard GDB Python iterator, no malicious code.
  - file: src/riscv/share/gdb/python/gdb/command/frame_filters.py
    status: safe
    summary: No malicious code found; standard GDB extension.
---

Cloning https://aur.archlinux.org/riscv32-gnu-toolchain-elf-bin.git...
Cloned riscv32-gnu-toolchain-elf-bin
Analyzing riscv32-gnu-toolchain-elf-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging file for the riscv32-gnu-toolchain-elf-bin package. The source is fetched from the official GitHub releases URL, and the checksums are provided (not SKIP). There is no code in the global scope or `pkgver()` that could execute malicious actions during the `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` commands. The `package()` function (which contains file operations) is not executed during these steps. No suspicious patterns (curl, wget, eval, base64, exec) appear in the top-level scope. The download is from the package's own upstream, which is expected and safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no risky code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no risky code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz...
[1/2] Reviewing PKGBUILD...
! Reviewed riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz. Status: SKIPPED -- Skipping binary file: riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt toolchain from the official GitHub releases of riscv-collab/riscv-gnu-toolchain, with a valid SHA512 checksum. The `package()` function copies the extracted contents into `/opt`, creates standard symlinks for the toolchain binaries and sysroot, and strips ELF files. All operations are conventional for a binary toolchain package. There are no network requests to unexpected hosts, no obfuscated code, no exfiltration, and no execution of untrusted content. The `find -exec` with `/bin/sh -c` is used solely for creating symlinks and stripping, which is standard packaging practice. No evidence of supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR package for prebuilt RISC-V toolchain.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package for prebuilt RISC-V toolchain.
Reviewed all required files.
Deciding which files to review next...
Note: 153 compiled/archived file(s) cannot be audited as text and were not reviewed (src/riscv/riscv32-unknown-elf/bin/nm, src/riscv/riscv32-unknown-elf/bin/ar, src/riscv/riscv32-unknown-elf/bin/strip and 150 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1944 files available for selection; offering the 50 highest-priority to the model. 1581 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787561517-X1fhvsFzQ3w0pS4V180J', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are auditing the riscv32-gnu-toolchain-elf-bin package. The listing contains many files from inside the unpacked tarball (src/riscv/...). The package appears to be a prebuilt toolchain (as indicated by the filename riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz). The PKGBUILD has already been reviewed. The install hook has already been reviewed. The tarball source has been reviewed. Now we have a deep listing of extracted files.\n\nWe need to select up to 10 files most likely to contain malicious or dangerous code. The files are all inside src/riscv/share/gcc..., src/riscv/share/gdb..., and some others. They are mostly Python scripts for gcc and gdb Python pretty-printers and DAP debugging support. Also there is a shell script fixinc.sh which is part of gcc\'s install-tools.\n\nGiven that the package is a repackaged prebuilt binary toolchain, the AUR maintainer likely did not modify any of these files; they come from the upstream tarball. The attack vector would be if the upstream tarball itself contains malicious code, but that is a different scope (upstream supply chain). Our audit is focused on AUR packaging: is there any code injected by the maintainer? Since PKGBUILD and install hook are already reviewed, and these are all upstream files, there is likely nothing to find. However, we must still follow the instructions: "inspect the source code and AUR build files in this package to find any potential vulnerabilities, malicious code, or supply chain attack vectors." But we have limited review slots and priority is on files that run at build/install time. All these files are installed as part of the toolchain and do not run during makepkg or install (except fixinc... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787561517-X1fhvsFzQ3w0pS4V180J', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are auditing the riscv32-gnu-toolchain-elf-bin package. The listing contains many files from inside the unpacked tarball (src/riscv/...). The package appears to be a prebuilt toolchain (as indicated by the filename riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz). The PKGBUILD has already been reviewed. The install hook has already been reviewed. The tarball source has been reviewed. Now we have a deep listing of extracted files.\n\nWe need to select up to 10 files most likely to contain malicious or dangerous code. The files are all inside src/riscv/share/gcc..., src/riscv/share/gdb..., and some others. They are mostly Python scripts for gcc and gdb Python pretty-printers and DAP debugging support. Also there is a shell script fixinc.sh which is part of gcc\'s install-tools.\n\nGiven that the package is a repackaged prebuilt binary toolchain, the AUR maintainer likely did not modify any of these files; they come from the upstream tarball. The attack vector would be if the upstream tarball itself contains malicious code, but that is a different scope (upstream supply chain). Our audit is focused on AUR packaging: is there any code injected by the maintainer? Since PKGBUILD and install hook are already reviewed, and these are all upstream files, there is likely nothing to find. However, we must still follow the instructions: "inspect the source code and AUR build files in this package to find any potential vulnerabilities, malicious code, or supply chain attack vectors." But we have limited review slots and priority is on files that run at build/install time. All these files are installed as part of the toolchain and do not run during makepkg or install (except fixinc... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/dejagnu/commands/help.sh, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/explore.py, src/riscv/share/gdb/python/gdb/command/frame_filters.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh...
[0/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/share/dejagnu/commands/help.sh...
[0/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/share/dejagnu/commands/help.sh, src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py...
LLM auditresponse for help.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard help command script for the DejaGnu testing framework. It parses command-line options, locates the appropriate man page in a nearby `doc` directory, and invokes the `man` command. All operations are routine: argument handling with `case`, simple arithmetic with `expr`, path manipulation with `sed`, and file existence checks. There are no network requests, no execution of downloaded code, no base64/obfuscation, no system file modifications outside the package's own doc directory, and no references to any remote hosts. The script is well-structured with GPL licensing and clear comments. No evidence of malicious supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard help script, no malicious indicators.</summary>
</security_assessment>

[0/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/share/dejagnu/commands/help.sh, src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py...
[1/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py...
+ Reviewed src/riscv/share/dejagnu/commands/help.sh. Status: SAFE -- Standard help script, no malicious indicators.
LLM auditresponse for fixinc.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GCC fixincludes script, part of the toolchain's header-fixing machinery. It performs only local filesystem operations: creating directories, copying header files, handling symbolic links, and invoking the `fixincl` binary to patch ANSI-incompatible headers. There are no network requests, no encoded or obfuscated commands, no downloads, and no exfiltration of data. The script's behavior is entirely consistent with its documented purpose and with normal packaging practices. No evidence of supply-chain attack or malicious intent was found.
</details>
<evidence></evidence>
<summary>Standard GCC fixincludes script, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh, src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py...
[2/10] Reviewing src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py...
+ Reviewed src/riscv/libexec/gcc/riscv32-unknown-elf/16.1.0/install-tools/fixinc.sh. Status: SAFE -- Standard GCC fixincludes script, no malicious behavior.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python extension for libstdc++ pretty-printing, part of the GCC toolchain. It imports submodules (`printers`, `xmethods`) and registers them with GDB. There is no obfuscation, network access, system command execution, data exfiltration, or any unexpected behavior. It is a normal, expected component of a GNU toolchain package.
</details>
<evidence></evidence>
<summary>Standard GDB pretty-printer module, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py...
+ Reviewed src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/__init__.py. Status: SAFE -- Standard GDB pretty-printer module, no security issues.
[3/10] Reviewing src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py...
LLM auditresponse for libstdc++.a-gdb.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB auto-load script for libstdc++ pretty-printers, shipped with the RISC-V GNU toolchain. It performs routine operations: updating `sys.path` to locate the correct Python modules shipped with the toolchain, executing benign GDB `skip` commands to enhance debugging, and importing the official `libstdcxx.v6` pretty-printers. There are no network requests, no obfuscated code, no file operations outside of GDB’s environment, and no system modifications. The hardcoded paths to `/mnt/riscv/` are consistent with a build prefix and are not indicative of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard GDB pretty-printer script; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py...
[4/10] Reviewing src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py...
+ Reviewed src/riscv/riscv32-unknown-elf/lib/libstdc++.a-gdb.py. Status: SAFE -- Standard GDB pretty-printer script; no security concerns.
LLM auditresponse for printers.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB pretty-printers module for libstdc++ (part of the GCC toolchain). It contains only debug visualization code for C++ standard library types (e.g., `std::vector`, `std::map`, `std::string`, `std::unique_ptr`, etc.). The code imports standard Python modules (`gdb`, `itertools`, `re`, `sys`, `errno`, `datetime`) and uses them in expected ways. There are no network requests, no obfuscated or encoded commands, no file system modifications outside of GDB's internal interface, and no execution of external binaries. The file is the upstream source from the GNU project and serves a legitimate debugging purpose. No evidence of supply-chain attack or malicious intent was found.
</details>
<evidence></evidence>
<summary>Legitimate GDB pretty-printer, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py, src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py...
[5/10] Reviewing src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py...
+ Reviewed src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/printers.py. Status: SAFE -- Legitimate GDB pretty-printer, no malicious code.
LLM auditresponse for xmethods.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python extension that registers xmethods for libstdc++ container types (array, deque, forward_list, list, vector, set, map, unordered containers, unique_ptr, shared_ptr). It defines worker classes that interact with GDB’s internal data structures to provide debugger-side implementations of container methods. The code contains no network requests, obfuscation, credential theft, backdoors, or any operations outside the scope of debugging. It is a legitimate part of the GCC toolchain (GNU Project), distributed under the GPL. The file is consistent with its stated purpose and contains no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate GDB xmethods script; no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py, src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/explore.py...
[6/10] Reviewing src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/explore.py...
+ Reviewed src/riscv/share/gcc-16.1.0/python/libstdcxx/v6/xmethods.py. Status: SAFE -- Legitimate GDB xmethods script; no malicious behavior detected.
LLM auditresponse for FrameDecorator.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python module for frame decorators, sourced from the GNU Debugger upstream. It contains only legitimate GDB Python API calls (e.g., `gdb.Frame`, `gdb.solib_name`, `gdb.DUMMY_FRAME`, `gdb.SIGTRAMP_FRAME`) and standard Python constructs. There are no network requests, no obfuscated code, no dangerous commands (curl, wget, eval, base64, etc.), and no file operations outside the expected GDB debugging context. The code is well-documented and follows normal GDB extension practices. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard GDB Python frame decorator code, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/riscv/share/gdb/python/gdb/FrameDecorator.py, src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/explore.py, src/riscv/share/gdb/python/gdb/command/frame_filters.py...
[7/10] Reviewing src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/explore.py, src/riscv/share/gdb/python/gdb/command/frame_filters.py...
+ Reviewed src/riscv/share/gdb/python/gdb/FrameDecorator.py. Status: SAFE -- Standard GDB Python frame decorator code, no security issues.
LLM auditresponse for explore.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python script implementing the `explore` command, part of the upstream GNU Debugger source code. It uses only the official `gdb` Python API to interact with debugged program state (values, types, memory). There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no system file operations outside GDB's normal debugging context. The script is entirely benign and serves the legitimate purpose of interactive data structure exploration during debugging sessions.
</details>
<evidence></evidence>
<summary>Legitimate GDB script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/riscv/share/gdb/python/gdb/FrameIterator.py, src/riscv/share/gdb/python/gdb/command/frame_filters.py...
+ Reviewed src/riscv/share/gdb/python/gdb/command/explore.py. Status: SAFE -- Legitimate GDB script, no malicious behavior.
LLM auditresponse for FrameIterator.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python script that defines a `FrameIterator` class for iterating over GDB frame objects. It contains only class definitions, docstrings, and standard iterator methods (`__init__`, `__iter__`, `__next__`). There is no network activity, no obfuscated code, no file operations, and no execution of external commands. The code is identical to what is found in upstream GDB distributions and serves the expected purpose of iterating frames in a debug session. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard GDB Python iterator, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/riscv/share/gdb/python/gdb/command/frame_filters.py...
+ Reviewed src/riscv/share/gdb/python/gdb/FrameIterator.py. Status: SAFE -- Standard GDB Python iterator, no malicious code.
LLM auditresponse for frame_filters.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GDB Python extension that implements commands for managing frame filters. It solely defines GDB command classes and utility functions using only `sys` and `gdb` modules. There are no network requests, file operations outside GDB's own interfaces, obfuscated code, or any behavior that deviates from normal packaging. The code is clearly from the upstream GNU project (Free Software Foundation) and performs only its documented purpose of enabling, disabling, listing, and setting priorities on frame filters.
</details>
<evidence>
</evidence>
<summary>No malicious code found; standard GDB extension.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/riscv/share/gdb/python/gdb/command/frame_filters.py. Status: SAFE -- No malicious code found; standard GDB extension.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 79,086
  Completion Tokens: 6,727
  Total Tokens: 85,813
  Total Cost: $0.005312
  Execution Time: 211.53 seconds

Final Status: SAFE


No issues found.


Audit Skips:

riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz: [SKIPPED] Skipping binary file: riscv32-gnu-toolchain-elf-bin-2026.08.23-riscv32-elf-ubuntu-24.04-gcc.tar.xz
