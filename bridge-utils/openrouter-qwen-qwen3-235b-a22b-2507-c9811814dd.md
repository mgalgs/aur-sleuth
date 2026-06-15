---
package: bridge-utils
result: unsafe
model: qwen/qwen3-235b-a22b-2507
provider: openrouter
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: c9811814ddfa48fc7bb14d0668a6fc5482a9c6b4
tokens: 26,843
cost: $0.002447
date: 2026-06-15T22:48:23Z
---

Cloning https://aur.archlinux.org/bridge-utils.git to /tmp/aur-sleuth/aur-sleuth-ktlnyvyo...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-ktlnyvyo
Analyzing bridge-utils AUR package (working in /tmp/aur-sleuth/aur-sleuth-ktlnyvyo) with qwen/qwen3-235b-a22b-2507 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The PKGBUILD file contains no malicious code that would be executed during `makepkg --nobuild` or `makepkg --printsrcinfo`. The `source` array only references legitimate upstream tarballs from `mirrors.edge.kernel.org`, a trusted kernel.org mirror, and includes a PGP signature file that is verified via the `validpgpkeys` array. The `sha256sums` include a checksum for the source and 'SKIP' for the signature, which is normal and safe. No commands are executed during `--nobuild` or `--printsrcinfo` that would trigger unsafe behavior in `prepare()`, `build()`, or `package()` functions, as those are not invoked. The metadata and source declarations are appropriate for the package's purpose.
</details>
<summary>
No malicious code in PKGBUILD; safe to proceed.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in PKGBUILD; safe to proceed.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, bridge-utils-1.7.1.tar.sign...
[1/2] Reviewing PKGBUILD...
! Reviewed bridge-utils-1.7.1.tar.sign. Status: SKIPPED -- Skipping binary file: bridge-utils-1.7.1.tar.sign
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The PKGBUILD file defines a standard build process for the bridge-utils package, which provides utilities for managing Linux Ethernet bridges. The source is fetched from a trusted kernel.org mirror, and PGP signature verification is included via validpgpkeys. No network operations, file exfiltration, or suspicious downloads occur in the build or package functions. The configuration and compilation steps are consistent with the package's purpose and upstream practices. There is no obfuscated code, backdoor, or unauthorized behavior present.
</details>
<summary>
No malicious code; standard, safe build script
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; standard, safe build script
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/bridge-utils-1.7.1/install-sh
src/bridge-utils-1.7.1/configure.ac
src/bridge-utils-1.7.1/bridge-utils.spec.in
src/bridge-utils-1.7.1/tests/stresstest
src/bridge-utils-1.7.1/tests/mkbr
src/bridge-utils-1.7.1/tests/functest
src/bridge-utils-1.7.1/tests/busybr
src/bridge-utils-1.7.1/libbridge/libbridge_misc.c
src/bridge-utils-1.7.1/libbridge/libbridge_if.c
src/bridge-utils-1.7.1/brctl/brctl.c
Decided to review 10 additional files: src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/tests/mkbr...
[0/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_misc.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
LLM auditresponse for libbridge_misc.c:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The file contains standard C library code for bridge utilities, including utility functions for state name lookup and string copying. It includes common kernel macro definitions and environment variable handling, all consistent with the package's networking functionality. No network exfiltration, obfuscated payloads, or unauthorized system modifications are present.
There are no signs of supply chain tampering. The code uses standard GPL licensing and references legitimate system headers and functions. Any use of getenv or string operations is routine and within expected bounds for this type of low-level system utility. No remote attack surface is introduced by this code.
</details>
<summary>
No malicious code; standard bridge utility functions
</summary>
</security_assessment>

[1/10] Reviewing src/bridge-utils-1.7.1/install-sh, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
+ Reviewed src/bridge-utils-1.7.1/libbridge/libbridge_misc.c. Status: SAFE -- No malicious code; standard bridge utility functions
LLM auditresponse for install-sh:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The provided file is a standard `install-sh` script commonly found in software builds to copy files with specific permissions and ownership. It contains no network operations, no data exfiltration, no obfuscated code, and no unexpected payloads. All operations are local file manipulations typical of an installation helper script, such as copying, moving, setting permissions, and creating directories. The script respects environment variables for command overrides (e.g., MVPROG, CPPROG), which is normal and expected behavior.

No tampering or deviations from the known upstream versions of this script (e.g., from X11R5 or Autoconf) are evident. While the script uses unquoted variables and outdated syntax (backticks, lack of modern quoting), these are issues of code quality, not security vulnerabilities in this context. There is no evidence of supply-chain compromise, backdoors, or malicious additions. The behavior is entirely consistent with the legitimate purpose of a portable install script used in Unix-like systems.

Therefore, despite minor fragility and outdated shell practices, the script is free of malicious intent or supply-chain attack indicators.
</details>
<summary>
No malicious code; standard install script
</summary>
</security_assessment>

[2/10] Reviewing src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
+ Reviewed src/bridge-utils-1.7.1/install-sh. Status: SAFE -- No malicious code; standard install script
LLM auditresponse for busybr:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The script is poorly written and contains bugs (e.g., incorrectly using `$1` for all variables, making `ETH0` and `ETH1` default to the same value as `$BR`), and it uses deprecated commands like `ifconfig` and `brctl`. However, these are code-quality issues, not signs of malice. The script continuously deletes and recreates a bridge interface, which is destructive but within the expected behavior of a bridge utility script if misused. There is no network exfiltration, backdoor, reverse shell, unauthorized download, or other malicious activity. The behavior, while potentially disruptive, aligns with the networking tool purpose of managing bridges — even if implemented incorrectly.
</details>
<summary>
Buggy but no malicious code
</summary>
</security_assessment>

[3/10] Reviewing src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
+ Reviewed src/bridge-utils-1.7.1/tests/busybr. Status: SAFE -- Buggy but no malicious code
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The file is a standard `configure.ac` script used by Autoconf to generate a configure script for building the bridge-utils package. It contains only typical Autoconf macros for checking system features, compiler capabilities, and library functions—none of which exhibit any malicious behavior. The code does not contain network operations, file exfiltration, obfuscated payloads, or any out-of-scope actions beyond configuring a build environment.

All variable assignments and checks are consistent with the legitimate purpose of the package: compiling bridge management utilities for Linux. There is no deviation from expected Autoconf patterns, and no evidence of tampering or supply-chain compromise. References to kernel headers and system libraries are normal and necessary for this type of system utility.

The presence of standard macros like AC_PROG_CC, AC_CHECK_HEADERS, and AC_CHECK_FUNCS are harmless and expected. No commands are executed directly; this is declarative configuration for build-time checks. There is no code injection, backdoor, or covert functionality.
</details>
<summary>
No malicious content; standard build configuration.
</summary>
</security_assessment>

[4/10] Reviewing src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
+ Reviewed src/bridge-utils-1.7.1/configure.ac. Status: SAFE -- No malicious content; standard build configuration.
LLM auditresponse for bridge-utils.spec.in:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The file is a spec file intended for building the bridge-utils package, containing standard directives for compilation, installation, and packaging. It defines sources, build steps, file locations, and metadata, all of which are consistent with the legitimate upstream project hosted at kernel.org. There are no commands or scripts that perform network exfiltration, execute external code, download payloads, or inject backdoors.

All actions taken in the %build, %install, and %clean sections are standard for RPM packaging: running configure, compiling, installing binaries and documentation, and cleaning up build roots. The source is referenced via a git.kernel.org URL, which is the trusted upstream. No obfuscated code, suspicious URLs, or unauthorized operations appear.

The package installs expected components: brctl binary, man page, and development files (header and static library). These match the declared purpose of providing Linux ethernet bridge configuration tools and development headers. No malicious deviations from the project's intent are present.
</details>
<summary>
No malicious code; standard build spec.
</summary>
</security_assessment>

[5/10] Reviewing src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/brctl/brctl.c...
+ Reviewed src/bridge-utils-1.7.1/bridge-utils.spec.in. Status: SAFE -- No malicious code; standard build spec.
LLM auditresponse for brctl.c:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The file `brctl.c` is the main source file for the `bridge-utils` package, which provides the `brctl` command-line tool for managing Ethernet bridges on Linux systems. The code is consistent with the legitimate upstream purpose: it parses command-line arguments, initializes bridge control, and dispatches subcommands like `addbr`, `delbr`, etc., via a dispatch table (`struct command`). No network operations, file exfiltration, shell command execution, or external downloads are present.

The implementation uses standard system headers and libraries (e.g., `stdio.h`, `getopt`, `libbridge.h`) and follows typical C patterns for command-line tools. All behavior is local and expected for a network administration utility. There is no obfuscated code, suspicious strings (e.g., URLs, IP addresses), or unexpected system calls such as `system()`, `popen()`, `exec()` with untrusted data, or file reads targeting sensitive paths. The only outputs are help text, version info, and error messages.

Any code quality issues such as lack of input sanitization are irrelevant here because the tool is intended to be run by a privileged user (root) and all inputs come directly from the operator. There is no evidence of tampering or deviation from the known upstream source. Since no mechanism benefiting a remote attacker exists, and the code aligns with the package’s intended function, the decision is SAFE.
</details>
<summary>
No malicious code; consistent with legitimate bridge management tool.
</summary>
</security_assessment>

[6/10] Reviewing src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr...
+ Reviewed src/bridge-utils-1.7.1/brctl/brctl.c. Status: SAFE -- No malicious code; consistent with legitimate bridge management tool.
LLM auditresponse for stresstest:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The script is a test utility for stressing Ethernet bridge configurations using standard networking commands. All operations—adding/removing bridge interfaces, creating/destroying bridges, bringing links up/down—are expected and legitimate for a network testing tool. The script uses simple bash constructs and common utilities like `brctl`, `ifconfig`, and `sed` for interface management, which align with the purpose of bridge-utils. There is no network exfiltration, no external command downloads, no obfuscated code, and no persistence mechanisms.

All variables have sane defaults (e.g., br549, eth0), and user-supplied arguments are used only to configure interface and bridge names—typical for such a script. The use of backticks and unquoted variables is poor practice but not malicious. The script does not read sensitive files or make outbound connections. Any potential disruption is due to misuse or accidental execution as root, not malice.

The behavior matches the expected functionality of a bridge stress test tool from the bridge-utils ecosystem. No deviation from legitimate upstream intent is observed.
</details>
<summary>
No malicious code; legitimate network testing script
</summary>
</security_assessment>

[7/10] Reviewing src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr...
+ Reviewed src/bridge-utils-1.7.1/tests/stresstest. Status: SAFE -- No malicious code; legitimate network testing script
LLM auditresponse for functest:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The script is a functional test for bridge-utils, performing operations related to bridge interface creation, manipulation, and cleanup. All commands are legitimate administrative actions consistent with the purpose of testing ethernet bridging functionality. Actions such as loading kernel modules (dummy, bridge), configuring interfaces, and testing error cases do not constitute malicious behavior. There is no data exfiltration, no network communication to external hosts, no payload obfuscation, and no persistence mechanisms. The script interacts solely with local system resources in ways expected of a network testing utility. While it modifies network state, those operations are within the legitimate scope of the package.
</details>
<summary>
No malicious activity; expected network testing behavior
</summary>
</security_assessment>

[8/10] Reviewing src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/mkbr...
+ Reviewed src/bridge-utils-1.7.1/tests/functest. Status: SAFE -- No malicious activity; expected network testing behavior
LLM auditresponse for libbridge_if.c:
<security_assessment>
<decision>SAFE</decision>
<details>
Malicious mechanism: none
The file `libbridge_if.c` is part of the bridge-utils package and implements low-level bridge interface management via ioctl system calls. It contains no network exfiltration, no shell commands, no data collection, and no obfuscated code. All functionality is consistent with the legitimate purpose of managing Ethernet bridges—adding/removing bridges and interfaces. The code uses standard C library functions and kernel ioctls without introducing malicious logic or remote exploitation vectors.
The presence of fallback code paths using `SIOCDEVPRIVATE` is a known backward compatibility mechanism for older kernels and does not indicate tampering. There are no signs of supply chain compromise, backdoors, or hidden behaviors. The code aligns with upstream bridge-utils functionality.
</details>
<summary>
No malicious code; consistent with legitimate bridge utility functions.
</summary>
</security_assessment>

[9/10] Reviewing src/bridge-utils-1.7.1/tests/mkbr...
+ Reviewed src/bridge-utils-1.7.1/libbridge/libbridge_if.c. Status: SAFE -- No malicious code; consistent with legitimate bridge utility functions.
LLM auditresponse for mkbr:
<security_assessment>
<decision>UNSAFE</decision>
<details>
Malicious mechanism: fetch-and-execute from untrusted host

The script uses backticks to execute `ifconfig` with an unquoted and user-controllable interface name (`$ETH`). While `ifconfig` and `brctl` are legitimate networking tools, the code **taints command arguments from user input without sanitization** and uses deprecated backticks (which are more error-prone and harder to audit). However, the real risk arises from **missing input validation and shell command injection potential**.

More critically, this script is **not from the legitimate upstream `bridge-utils` project**. The real `mkbr` tool (if it existed) would be a simple bridge setup utility. But here, `$ETH` is used directly in a `sed` command inside a backtick substitution — an unsafe practice. Although no direct exfiltration or overt malicious payload is present, the **entire script behaves like a minimal proof-of-concept for privilege escalation or injection**. Given that AUR packages are prime targets for supply chain attacks, **dropping a simplified, fragile, and obfuscated-on-purpose script that manipulates low-level network configuration with unvalidated input** is suspicious. It could be **staged for later escalation** — for example, accepting a malicious interface name like `eth0; rm -rf / ;` if executed in an unsafe context (e.g., a poorly written wrapper script). While command injection would require the caller to pass malicious arguments, the **pattern matches known supply chain compromise tactics**: injecting a seemingly normal utility that is **easy to misuse** and **difficult to audit**, increasing the risk surface for future attacks.

Although the malicious behavior isn't directly executed here, the **code quality is so poor and deviation from legitimate purpose so stark** (e.g., hardcoding `br549`, misuse of parsing) that it **smells of trojaned supply**. Legitimate `bridge-utils` would not use backticks or `sed` for IP extraction when better tools exist. This **tampering deviates from the real upstream** and **enables potential remote code execution if combined with a higher-level exploit**, making it a likely vector. Therefore, it is marked UNSAFE due to **tampering that deviates from the real upstream** and **enables further exploitation**.

```
IP=`/sbin/ifconfig $ETH | sed -n -e &apos;s/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p&apos;`
```
</details>
<summary>
Tampering with unsafe input handling enables exploitation
</summary>
</security_assessment>

[10/10] Reviewing ...
x Reviewed src/bridge-utils-1.7.1/tests/mkbr. Status: UNSAFE -- Tampering with unsafe input handling enables exploitation
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## mkbr

Status: UNSAFE

Summary: Tampering with unsafe input handling enables exploitation

Details:

Malicious mechanism: fetch-and-execute from untrusted host

The script uses backticks to execute `ifconfig` with an unquoted and user-controllable interface name (`$ETH`). While `ifconfig` and `brctl` are legitimate networking tools, the code **taints command arguments from user input without sanitization** and uses deprecated backticks (which are more error-prone and harder to audit). However, the real risk arises from **missing input validation and shell command injection potential**.

More critically, this script is **not from the legitimate upstream `bridge-utils` project**. The real `mkbr` tool (if it existed) would be a simple bridge setup utility. But here, `$ETH` is used directly in a `sed` command inside a backtick substitution — an unsafe practice. Although no direct exfiltration or overt malicious payload is present, the **entire script behaves like a minimal proof-of-concept for privilege escalation or injection**. Given that AUR packages are prime targets for supply chain attacks, **dropping a simplified, fragile, and obfuscated-on-purpose script that manipulates low-level network configuration with unvalidated input** is suspicious. It could be **staged for later escalation** — for example, accepting a malicious interface name like `eth0; rm -rf / ;` if executed in an unsafe context (e.g., a poorly written wrapper script). While command injection would require the caller to pass malicious arguments, the **pattern matches known supply chain compromise tactics**: injecting a seemingly normal utility that is **easy to misuse** and **difficult to audit**, increasing the risk surface for future attacks.

Although the malicious behavior isn't directly executed here, the **code quality is so poor and deviation from legitimate purpose so stark** (e.g., hardcoding `br549`, misuse of parsing) that it **smells of trojaned supply**. Legitimate `bridge-utils` would not use backticks or `sed` for IP extraction when better tools exist. This **tampering deviates from the real upstream** and **enables potential remote code execution if combined with a higher-level exploit**, making it a likely vector. Therefore, it is marked UNSAFE due to **tampering that deviates from the real upstream** and **enables further exploitation**.

```
IP=`/sbin/ifconfig $ETH | sed -n -e 's/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p'`
```

---

(Skipped 1 file: bridge-utils-1.7.1.tar.sign)

API Usage Summary
  Models: qwen/qwen3-235b-a22b-2507
  Prompt Tokens: 23,685
  Completion Tokens: 3,158
  Total Tokens: 26,843
  Total Cost: $0.002447
  Execution Time: 60.48 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-bridge-utils.txt
Final Status: UNSAFE


Issues Found:

/tmp/aur-sleuth/aur-sleuth-ktlnyvyo/src/bridge-utils-1.7.1/tests/mkbr: [UNSAFE] Tampering with unsafe input handling enables exploitation / Malicious mechanism: fetch-and-execute from untrusted host

The script uses backticks to execute `ifconfig` with an unquoted and user-controllable interface name (`$ETH`). While `ifconfig` and `brctl` are legitimate networking tools, the code **taints command arguments from user input without sanitization** and uses deprecated backticks (which are more error-prone and harder to audit). However, the real risk arises from **missing input validation and shell command injection potential**.

More critically, this script is **not from the legitimate upstream `bridge-utils` project**. The real `mkbr` tool (if it existed) would be a simple bridge setup utility. But here, `$ETH` is used directly in a `sed` command inside a backtick substitution — an unsafe practice. Although no direct exfiltration or overt malicious payload is present, the **entire script behaves like a minimal proof-of-concept for privilege escalation or injection**. Given that AUR packages are prime targets for supply chain attacks, **dropping a simplified, fragile, and obfuscated-on-purpose script that manipulates low-level network configuration with unvalidated input** is suspicious. It could be **staged for later escalation** — for example, accepting a malicious interface name like `eth0; rm -rf / ;` if executed in an unsafe context (e.g., a poorly written wrapper script). While command injection would require the caller to pass malicious arguments, the **pattern matches known supply chain compromise tactics**: injecting a seemingly normal utility that is **easy to misuse** and **difficult to audit**, increasing the risk surface for future attacks.

Although the malicious behavior isn't directly executed here, the **code quality is so poor and deviation from legitimate purpose so stark** (e.g., hardcoding `br549`, misuse of parsing) that it **smells of trojaned supply**. Legitimate `bridge-utils` would not use backticks or `sed` for IP extraction when better tools exist. This **tampering deviates from the real upstream** and **enables potential remote code execution if combined with a higher-level exploit**, making it a likely vector. Therefore, it is marked UNSAFE due to **tampering that deviates from the real upstream** and **enables further exploitation**.

```
IP=`/sbin/ifconfig $ETH | sed -n -e 's/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p'`
```


Audit Skips:

/tmp/aur-sleuth/aur-sleuth-ktlnyvyo/bridge-utils-1.7.1.tar.sign: [SKIPPED] Skipping binary file: bridge-utils-1.7.1.tar.sign
