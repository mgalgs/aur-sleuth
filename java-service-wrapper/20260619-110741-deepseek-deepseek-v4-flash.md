---
package: java-service-wrapper
pkgver: 3.6.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 146181
completion_tokens: 7843
total_tokens: 154024
cost: 0.01456803
execution_time: 61.01
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T11:07:41Z
file_verdicts:
  - file: wrapper_3.6.4_src.tar.gz
    status: skipped
    summary: "Skipping binary file: wrapper_3.6.4_src.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD from official source with checksums.
  - file: src/wrapper_3.6.4_src/src/c/wrapper_cipher.c
    status: safe
    summary: Standard cipher handling code, no security threat.
  - file: src/wrapper_3.6.4_src/build64.sh
    status: safe
    summary: Standard build helper script, no security concerns.
  - file: src/wrapper_3.6.4_src/build-tests.xml
    status: safe
    summary: Standard Ant build file for testing; no malicious content found.
  - file: src/wrapper_3.6.4_src/src/c/wrapper_file.c
    status: safe
    summary: Legitimate configuration parsing code; no malicious activity observed.
  - file: src/wrapper_3.6.4_src/build32.sh
    status: safe
    summary: Standard Ant build wrapper, no security issues.
  - file: src/wrapper_3.6.4_src/src/c/wrapper_unix.c
    status: safe
    summary: Legitimate upstream source file, no malicious behavior detected.
  - file: src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c
    status: safe
    summary: Legitimate wrapper source; no malicious behavior found.
  - file: src/wrapper_3.6.4_src/src/c/wrapper.c
    status: safe
    summary: Standard Tanuki Wrapper source code, no malicious injection.
  - file: src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c
    status: safe
    summary: Standard wrapper permission-checking code, no injection.
  - file: src/wrapper_3.6.4_src/build.xml
    status: safe
    summary: Standard Ant build script with no malicious behavior.
---

Cloning https://aur.archlinux.org/java-service-wrapper.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f49p98_p...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f49p98_p
Analyzing java-service-wrapper AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f49p98_p) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only static variables at the global scope, and `pkgver()` is not defined, so no code executes when the file is sourced. The sole source entry is an HTTPS URL from the project's official domain (`wrapper.tanukisoftware.com`) with a valid SHA256 checksum. The `prepare()`, `build()`, and `package()` functions are present but are **not** executed under `--nobuild --nodeps --noprepare` or `--printsrcinfo`. There is no top-level command substitution, no obfuscated code, and no reference to unverified or external code execution. Therefore, running these two commands does not introduce any risk of malicious code execution.
</details>
<summary>
No dangerous top-level code; source is official and pinned.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code; source is official and pinned.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, wrapper_3.6.4_src.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed wrapper_3.6.4_src.tar.gz. Status: SKIPPED -- Skipping binary file: wrapper_3.6.4_src.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, straightforward build recipe for the java-service-wrapper package. The source is downloaded from the official Tanuki Software website with a fixed version and a SHA-256 checksum provided, ensuring integrity. The build process uses `ant` and `javac` as expected, and the `install` commands place files only into the package directory (`$pkgdir`).  

There is no evidence of malicious behavior: no network requests to unexpected hosts, no obfuscated code, no execution of fetched content, no exfiltration of system data, no backdoors, and no modification of files outside the package scope. The sourcing of `/etc/profile` and `/etc/ant.conf` is a common convenience to pick up the user's Java environment and is not a security risk.  

All operations are consistent with legitimate packaging practices. The file presents no supply-chain attack indicators.
</details>
<summary>Clean PKGBUILD from official source with checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD from official source with checksums.
Reviewed all required files.
Deciding which files to review next...
Note: 272 files available for selection; offering the 50 highest-priority to the model. 214 lower-priority file(s) were not offered.
LLM response for file selection:
src/wrapper_3.6.4_src/build32.sh
src/wrapper_3.6.4_src/build64.sh
src/wrapper_3.6.4_src/build-tests.xml
src/wrapper_3.6.4_src/build.xml
src/wrapper_3.6.4_src/src/c/wrapper.c
src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c
src/wrapper_3.6.4_src/src/c/wrapper_file.c
src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c
src/wrapper_3.6.4_src/src/c/wrapper_cipher.c
src/wrapper_3.6.4_src/src/c/wrapper_unix.c
Decided to review 10 additional files: src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_cipher.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_cipher.c...
[0/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_cipher.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
LLM auditresponse for wrapper_cipher.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wrapper_cipher.c` is a standard component of the Tanuki Java Service Wrapper, providing cipher handling functions for masking and deciphering sensitive data (e.g., passwords in configuration). The code uses standard C library calls (`malloc`, `free`, `_tcsncpy`, etc.) and contains no network requests, no obfuscated or encoded commands, no execution of external binaries, and no file operations outside of its stated purpose. All operations are confined to in-memory buffer manipulation and logging. There is nothing that deviates from normal application functionality or packaging practices. No signs of a supply-chain attack or malicious injection.
</details>
<summary>Standard cipher handling code, no security threat.</summary>
</security_assessment>

[1/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build64.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper_cipher.c. Status: SAFE -- Standard cipher handling code, no security threat.
LLM auditresponse for build64.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward shell script used to invoke Apache Ant with a build.xml file, setting the `-Dbits=64` parameter. It contains no network requests, no obfuscated code, no file exfiltration, and no execution of untrusted content from external sources. The script simply echoes a header and runs `ant` with the provided arguments. There is no evidence of malicious behavior; it is a standard packaging helper.
</details>
<summary>
Standard build helper script, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build-tests.xml, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
+ Reviewed src/wrapper_3.6.4_src/build64.sh. Status: SAFE -- Standard build helper script, no security concerns.
LLM auditresponse for build-tests.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache Ant build file (`build-tests.xml`) from the Java Service Wrapper project (tanukisoftware). It sets up test configuration files and test scripts for the wrapper's test suite. The file contains only routine operations: copying and replacing tokens in template configuration files, creating test scripts via echo/filter/copy, setting executable permissions, and cleaning up temporary files. No network requests (curl/wget), obfuscated code, encoded payloads, or commands that would exfiltrate data or execute untrusted code are present. The JavaScript engine detection logic is a normal Ant construct to test for built-in vs. external scripting engine support, not a security threat. The file is consistent with a legitimate upstream build system for the Java Service Wrapper project and does not contain any injected malicious behavior.
</details>
<summary>Standard Ant build file for testing; no malicious content found.</summary>
</security_assessment>

[3/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_file.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
+ Reviewed src/wrapper_3.6.4_src/build-tests.xml. Status: SAFE -- Standard Ant build file for testing; no malicious content found.
LLM auditresponse for wrapper_file.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wrapper_file.c` is a standard C source file from the Tanuki Java Service Wrapper, a well-known and widely used software package. It implements configuration file reading, including support for includes, encoding detection, and variable expansion. There is no obfuscated code, no suspicious network requests, no execution of downloaded content, no exfiltration of sensitive data, and no backdoors. All operations are limited to reading local configuration files and performing standard string operations. The code follows expected patterns for a service wrapper configuration parser. No evidence of a supply-chain attack or genuinely malicious behavior was found.
</details>
<summary>Legitimate configuration parsing code; no malicious activity observed.</summary>
</security_assessment>

[4/10] Reviewing src/wrapper_3.6.4_src/build32.sh, src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper_file.c. Status: SAFE -- Legitimate configuration parsing code; no malicious activity observed.
LLM auditresponse for build32.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `build32.sh` is a simple wrapper that runs Apache Ant with a `build.xml` file located in the same directory. It constructs the build file path using `pwd` and `dirname`, then invokes `ant` with `-Dbits=32` and any additional arguments. There are no network requests, encoded commands, file exfiltration, or other dangerous operations. The script performs only standard build automation tasks and contains no signs of malicious intent.
</details>
<summary>Standard Ant build wrapper, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c, src/wrapper_3.6.4_src/src/c/wrapper_unix.c...
+ Reviewed src/wrapper_3.6.4_src/build32.sh. Status: SAFE -- Standard Ant build wrapper, no security issues.
LLM auditresponse for wrapper_unix.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the Tanuki Java Service Wrapper, a well-known open-source project for running Java applications as daemons/services. The code contains typical POSIX system calls for process management (fork, setsid, kill, pipe, signal handling), file I/O, and threading. There are no network requests, no downloads from external sources, no obfuscated or encoded commands, no attempts to exfiltrate data, and no backdoors. The file is consistent with the upstream project's source code and does not exhibit any signs of a supply-chain attack. The truncated portions are not expected to contain malicious content given the nature of the file and the absence of suspicious patterns in the visible sections.
</details>
<summary>Legitimate upstream source file, no malicious behavior detected.</summary>
</security_assessment>

[6/10] Reviewing src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper_unix.c. Status: SAFE -- Legitimate upstream source file, no malicious behavior detected.
LLM auditresponse for wrapper_jvm_launch.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wrapper_jvm_launch.c` is a standard source file from the Tanuki Software Java Service Wrapper, a well-known and legitimate open-source project. It contains functions that launch child Java processes to query the JVM version, bootstrap a jar file, and perform a dry run of the Java command. All operations are confined to the expected behavior of a Java service wrapper: spawning Java executables with user-configured command lines and parsing their output. There is no malicious code, no network requests beyond what the wrapper itself initiates (which is the user&apos;s configured Java command), no obfuscation, no data exfiltration, and no execution of attacker-controlled content. The file&apos;s purpose is entirely aligned with the upstream project&apos;s functionality.
</details>
<summary>Legitimate wrapper source; no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper.c, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper_jvm_launch.c. Status: SAFE -- Legitimate wrapper source; no malicious behavior found.
LLM auditresponse for wrapper.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wrapper.c` is the main source file of the Tanuki Java Service Wrapper, a legitimate open-source project. The provided code shows standard operations for process management, logging, configuration loading, signal handling, and inter-process communication with a Java Virtual Machine over loopback sockets. No evidence of obfuscation, data exfiltration, downloads from unexpected hosts, or execution of attacker-controlled code was found. All network operations use loopback addresses (127.0.0.1, ::1) as expected for JVM communication. The code includes standard security features (secure file handling, cipher support) which are part of the wrapper's design. There are no suspicious patterns such as `curl`, `wget`, `base64`, `eval`, or `exec` in malicious contexts. The file is consistent with the upstream project's source code and does not exhibit supply-chain attack indicators.
</details>
<summary>Standard Tanuki Wrapper source code, no malicious injection.</summary>
</security_assessment>

[8/10] Reviewing src/wrapper_3.6.4_src/build.xml, src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper.c. Status: SAFE -- Standard Tanuki Wrapper source code, no malicious injection.
LLM auditresponse for wrapper_secure_file.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source from the <b>Tanuki Java Service Wrapper</b> ("wrapper_secure_file.c"). It implements file permission checking on both Windows and Unix platforms to ensure sensitive files (such as configuration files containing passwords) have secure permissions. The code performs normal operating system calls (GetFileSecurity, stat, getgrnam, etc.) to retrieve file security descriptors and compare them against allowed accounts/groups defined in the wrapper configuration. There are no network requests, code downloads, obfuscation, eval statements, base64 decoding, or any other indicators of a supply-chain attack. The file does not exfiltrate data, install backdoors, or modify unrelated system files. It is purely upstream functionality for auditing file permissions within the wrapper's scope.
</details>
<summary>Standard wrapper permission-checking code, no injection.</summary>
</security_assessment>

[9/10] Reviewing src/wrapper_3.6.4_src/build.xml...
+ Reviewed src/wrapper_3.6.4_src/src/c/wrapper_secure_file.c. Status: SAFE -- Standard wrapper permission-checking code, no injection.
LLM auditresponse for build.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache Ant build script for the Java Service Wrapper (Tanuki Software). It contains targets for compiling Java and C sources, creating JARs, generating release archives, and cleaning build artifacts. All `exec` tasks invoke legitimate build tools: `make`/`gmake` for compiling native code, `strip` for symbol stripping, `jar` for Java module operations, and `bash`/`powershell` for date validation. There are no network requests (no `curl`, `wget`), no encoded/obfuscated commands, no attempts to access sensitive system files, and no execution of code from untrusted sources. The file loads property files (`~/.ant.properties`, `ant.properties`) which is typical Ant behavior and not inherently dangerous. No supply-chain attack indicators are present.
</details>
<summary>Standard Ant build script with no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/wrapper_3.6.4_src/build.xml. Status: SAFE -- Standard Ant build script with no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wrapper_3.6.4_src.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 146,181
  Completion Tokens: 7,843
  Total Tokens: 154,024
  Total Cost: $0.014568
  Execution Time: 61.01 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-java-service-wrapper.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f49p98_p/wrapper_3.6.4_src.tar.gz: [SKIPPED] Skipping binary file: wrapper_3.6.4_src.tar.gz
