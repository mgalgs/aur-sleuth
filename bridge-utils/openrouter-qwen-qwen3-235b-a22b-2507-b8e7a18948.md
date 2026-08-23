---
package: bridge-utils
result: unsafe
model: qwen/qwen3-235b-a22b-2507
provider: openrouter
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: b8e7a18948cb58570330ab6c543cd3ed4311a6ca
tokens: 23,942
cost: $0.002190
date: 2026-06-15T22:36:51Z
---

Cloning https://aur.archlinux.org/bridge-utils.git to /tmp/aur-sleuth/aur-sleuth-qbdn9zzg...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-qbdn9zzg
Analyzing bridge-utils AUR package (working in /tmp/aur-sleuth/aur-sleuth-qbdn9zzg) with qwen/qwen3-235b-a22b-2507 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file defines standard build and packaging steps for the `bridge-utils` package, which provides utilities for managing Linux Ethernet bridges. The `source` array references only official, verifiable upstream URLs hosted on `mirrors.edge.kernel.org`, a trusted domain under the Linux Foundation. The source includes both the tarball and its associated `.sign` file for PGP verification, and the `validpgpkeys` array specifies the known key for Stephen Hemminger, a legitimate maintainer of the project.

Neither `makepkg --nobuild` nor `makepkg --printsrcinfo` will execute the `prepare`, `build`, or `package` functions; they only parse the PKGBUILD to download sources or generate `.SRCINFO`. The `source` array contains no remote execution constructs, inline commands, or suspicious URIs (e.g., `curl|bash`, `ftp://`, or base64-encoded payloads). The use of `{xz,sign}` expansion is standard and safe in this context. No malicious code, backdoors, or supply-chain compromise vectors are present that would be triggered by these commands.

The file adheres to expected AUR packaging practices and poses no risk during source retrieval or metadata printing.
</details>
<summary>
No malicious code in source or build steps</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in source or build steps[/]
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
The PKGBUILD file defines a standard build process for the `bridge-utils` package, which provides utilities for managing Linux Ethernet bridges. The source is pulled from a trusted kernel.org mirror, and a valid PGP key is specified for signature verification. The build and package functions follow typical Autotools workflows, with no deviations or suspicious commands.

There are no network operations beyond downloading the source, no obfuscated code, and no unexpected payloads. The PGP key belongs to Stephen Hemminger, a known contributor to networking tools in the Linux ecosystem. All actions are consistent with the package's purpose and pose no supply-chain risk.

No malicious behavior, backdoors, or tampering were found.
</details>
<summary>
No malicious content detected; standard, safe build script
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious content detected; standard, safe build script
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/bridge-utils-1.7.1/configure.ac
src/bridge-utils-1.7.1/bridge-utils.spec.in
src/bridge-utils-1.7.1/tests/stresstest
src/bridge-utils-1.7.1/tests/rmbr
src/bridge-utils-1.7.1/tests/mkbr
src/bridge-utils-1.7.1/tests/functest
src/bridge-utils-1.7.1/tests/busybr
src/bridge-utils-1.7.1/libbridge/libbridge_init.c
src/bridge-utils-1.7.1/libbridge/libbridge_if.c
src/bridge-utils-1.7.1/brctl/brctl.c
Decided to review 10 additional files: src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/busybr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/rmbr...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c...
[0/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/functest, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
LLM auditresponse for functest:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `functest` is a functional test for the `bridge-utils` package, designed to verify the correct operation of Ethernet bridging in the Linux kernel. It performs legitimate operations such as creating bridges, adding and removing network interfaces, testing error conditions, and verifying bridge behavior under various configurations. All commands used — including `brctl`, `ifconfig`, `modprobe`, and `rmmod` — are appropriate for this purpose and align with the expected functionality of a networking test suite.

There is no evidence of malicious activity. The script does not exfiltrate data, make network connections, execute downloaded code, or perform any out-of-scope actions. It uses hardcoded interface and bridge names (e.g., `br549`, `eth0`, `dummy` devices), which are typical in test scripts. The use of `set -e` and `set +e` for error control, along with manual user prompts (`read -p "Ok?"`), further indicates it is intended for interactive testing and debugging, not automated abuse. No obfuscation, suspicious payloads, or persistence mechanisms are present.

While the script performs powerful operations (e.g., loading/unloading kernel modules, modifying network interfaces), these are fully consistent with its purpose as a bridge utility test. No signs of supply-chain compromise or injected malicious code are found.
</details>
<summary>
Legitimate test script, no malicious code</summary>
</security_assessment>

[1/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_init.c, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/tests/functest. Status: SAFE -- Legitimate test script, no malicious code
LLM auditresponse for libbridge_init.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided C source file `libbridge_init.c` is part of the `bridge-utils` package, which provides utilities for managing Ethernet bridge devices on Linux. The code initializes a socket for bridge operations, implements functions to enumerate bridges and their associated ports using either sysfs (modern) or ioctl (legacy) interfaces, and exports these functionalities through a clean API.

An analysis for supply-chain compromise reveals no malicious behavior. All functions serve the stated purpose of bridge interface management. The code accesses standard system paths like `/sys/class/net/` and uses expected socket and ioctl calls to interact with the kernel's bridging subsystem. There are no network exfiltration attempts, no shell command executions, no obfuscated payloads, and no unauthorized file reads (e.g., no access to `/etc/shadow`, SSH keys, or browser data). The use of low-level system calls is appropriate and expected for a systems utility like this.

The code includes proper error handling, memory management, and follows common C idioms. While it contains comments about workarounds for old glibc behavior, this is benign and well-documented. No functionality deviates from the legitimate purpose of managing bridge interfaces.
</details>
<summary>
No malicious code; consistent with bridge management utility.
</summary>
</security_assessment>

[2/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/configure.ac, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/libbridge/libbridge_init.c. Status: SAFE -- No malicious code; consistent with bridge management utility.
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `configure.ac` is a standard Autoconf script used to generate a configure script for the bridge-utils package, which provides utilities for configuring the Linux Ethernet bridge. The content consists of typical Autoconf macros for checking compiler availability, header files, and function support—all expected for a legitimate C-based system utility.

There are no signs of malicious activity, such as external network calls, data exfiltration, obfuscated code, or unauthorized file access. All paths and functions are related to building the software in a standard environment. The use of hardcoded paths like `/usr/src/linux/include` is common for header discovery and not inherently risky.

The script does not introduce backdoors, execute unexpected commands, or modify the system. It aligns fully with the purpose of the bridge-utils package and shows no deviation from typical upstream build practices.
</details>
<summary>
No malicious code; standard build script
</summary>
</security_assessment>

[3/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/stresstest, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/configure.ac. Status: SAFE -- No malicious code; standard build script
LLM auditresponse for stresstest:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a stress-testing utility for Ethernet bridges using standard Linux bridging tools (`brctl`, `ifconfig`). It creates and deletes bridge interfaces, adds/removes network interfaces, and brings interfaces up and down in loops — all expected behaviors for a network stress test. Variables like `BR`, `ETH0`, etc., are user-configurable with reasonable defaults. The script runs locally and does not attempt to exfiltrate data, download remote payloads, modify sensitive system files, or create backdoors.

There is no obfuscated code, suspicious network calls, or unauthorized privilege escalation. The use of `&quot;` is due to HTML escaping in the input rendering, not present in the actual script. The script’s logic, while potentially disruptive to network configuration (which is expected for its purpose), shows no signs of malicious tampering or supply-chain compromise. All operations align with the legitimate purpose of testing bridge-utils functionality under load.

Therefore, despite poor error handling and lack of input sanitization (which are not inherently malicious), the script is not compromised.
</details>
<summary>
Valid stress test script, no malicious code found</summary>
</security_assessment>

[4/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/tests/rmbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/tests/stresstest. Status: SAFE -- Valid stress test script, no malicious code found
LLM auditresponse for rmbr:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `rmbr` is a simple shell script designed to remove a network bridge interface, which aligns with the purpose of the `bridge-utils` package. It retrieves the IP address of a specified bridge (defaulting to "br549"), brings the interface down, deletes the bridge using `brctl`, reassigns an IP address to `eth0`, and unloads the `bridge` kernel module. All operations are standard system administrative tasks related to bridge interface management.

There is no evidence of malicious behavior such as data exfiltration, unauthorized network connections, obfuscated code, or persistence mechanisms. The hardcoded IP address (172.20.5.22) and interface names (eth0, br549) appear to be example or test values—common in configuration scripts—and do not indicate tampering. These values may be fragile or non-portable but are not malicious.

No code in the script deviates from expected functionality for a bridge teardown script. The use of backticks and sed parsing, while outdated, is not inherently dangerous. Inputs are limited to the bridge name via command-line argument, and no external data is fetched or executed. Thus, there are no signs of a supply-chain compromise.
</details>
<summary>
Legitimate bridge teardown script, no malicious code
</summary>
</security_assessment>

[5/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/brctl/brctl.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/tests/rmbr. Status: SAFE -- Legitimate bridge teardown script, no malicious code
LLM auditresponse for brctl.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided `brctl.c` file is the main source code for the `brctl` utility, which is used to control Ethernet bridges on Linux systems. The code is consistent with the legitimate upstream implementation of the bridge-utils package, containing standard command-line argument parsing, help output, version reporting, and dispatching of bridge-related commands via a function table (`struct command`). It initializes bridge control with `br_init()` and routes subcommands like `addbr`, `delbr`, `addif`, etc., to their respective handler functions.

There are no signs of malicious tampering or supply-chain compromise. The code does not perform any network operations, file exfiltration, or execute external payloads. It does not spawn shells, write to suspicious locations, or contain obfuscated code. All functionality aligns with the expected behavior of a bridge management tool, and the use of standard C library functions and error handling is appropriate. The presence of a standard GPL copyright notice and inclusion of well-named header files (`libbridge.h`, `brctl.h`) further supports its legitimacy.

The code contains no backdoors, reverse shells, unauthorized data transmissions, or persistence mechanisms. Issues such as lack of input validation or potential buffer risks are not evident and would be minimal given the tool's expected use by system administrators with root privileges. No code deviates from the intended purpose of managing network bridges.
</details>
<summary>
No malicious code; consistent with legitimate bridge utility
</summary>
</security_assessment>

[6/10] Reviewing src/bridge-utils-1.7.1/bridge-utils.spec.in, src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/brctl/brctl.c. Status: SAFE -- No malicious code; consistent with legitimate bridge utility
LLM auditresponse for bridge-utils.spec.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `bridge-utils.spec.in` is a template for an RPM spec file used to build the bridge-utils package, which provides utilities for managing Linux Ethernet bridges. The content includes standard spec file sections such as %description, %prep, %build, %install, and %files, all of which are consistent with the package's legitimate purpose. There are no signs of malicious code injection, obfuscated commands, unauthorized network operations, or data exfiltration attempts. The build and installation steps involve typical operations like running `./configure`, `make`, and installing compiled binaries and headers to standard directories.

The source URL points to the official kernel.org Git repository, which is the legitimate upstream for this project. No external download commands (e.g., curl, wget), suspicious payloads, or backdoor-enabling instructions are present. The file handles variables like `%{buildroot}` and `%{_sbindir}` appropriately for RPM packaging. All operations are confined to building and installing the expected components: the `brctl` utility, manual pages, and development headers/libraries.

No deviations from expected behavior or supply-chain compromise indicators are found. The presence of development package metadata (`bridge-utils-devel`) is normal for libraries intended for software development. There is no evidence of trojaned build steps, injected binaries, or hidden scripts.
</details>
<summary>
No malicious content; legitimate build script.
</summary>
</security_assessment>

[7/10] Reviewing src/bridge-utils-1.7.1/tests/mkbr, src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr...
+ Reviewed src/bridge-utils-1.7.1/bridge-utils.spec.in. Status: SAFE -- No malicious content; legitimate build script.
LLM auditresponse for mkbr:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The script contains suspicious hardcoded values and performs unvalidated interface manipulation without user confirmation, but the primary issue is the use of `/sbin/ifconfig` and `brctl` without verifying their paths or existence, which could allow symlink or PATH-based attacks if run in a compromised environment. However, the more severe concern is the use of backticks for command substitution with unsanitized input—`IP=\`/sbin/ifconfig $ETH ...\``—where `$ETH` is user-controlled (via script argument). This creates a command injection vulnerability: an attacker could pass a malicious interface name like `eth0; rm -rf /; #` to execute arbitrary commands with root privileges, which the script likely runs as.

While bridge setup is within the legitimate scope of `bridge-utils`, the lack of input sanitization and use of insecure command substitution (backticks) enables trivial exploitation for code execution. This is not merely a robustness flaw but a critical supply-chain risk if the script is used in automated or privileged contexts without input validation. The script should use `$(...)` instead of backticks and validate `$ETH` against a whitelist of interface names.

```
IP=`/sbin/ifconfig $ETH | sed -n -e 's/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p'`
```
This line is vulnerable to command injection via `$ETH`.
</details>
<summary>
Command injection via unsanitized interface name input</summary>
</security_assessment>

[8/10] Reviewing src/bridge-utils-1.7.1/libbridge/libbridge_if.c, src/bridge-utils-1.7.1/tests/busybr...
x Reviewed src/bridge-utils-1.7.1/tests/mkbr. Status: UNSAFE -- Command injection via unsanitized interface name input
LLM auditresponse for busybr:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The script contains a logic flaw that could lead to unauthorized access or disruption, but more importantly, it includes a suspicious variable reuse: `ETH0` and `ETH1` are incorrectly set using `${1:-"..."}` instead of separate arguments, meaning both interfaces are set to the first argument (or default to "eth0" and "eth1" only in name, but actually controlled by `$1`). This is likely a typo, but it enables unexpected behavior if the script is called with an interface name like `lo` or `tun0`, potentially allowing privilege escalation or network manipulation.

More critically, the script performs a continuous bridge teardown and rebuild loop using `while true; do ... sleep 10`, which can be abused to disrupt network configurations persistently. While this behavior might seem within the scope of a bridging utility, the lack of locks, safety checks, or user confirmation makes it dangerous. The use of deprecated `ifconfig` and `brctl` without modern equivalents suggests it's designed for environments where such disruption may go undetected.

However, the core issue is not just fragility — it's the fact that the script assumes and manipulates network state (IP addresses, interface bridging) without validation, and does so in a looping, destructive manner that could be exploited as a denial-of-service vector or to bypass firewall rules if combined with other attack surfaces. This deviates from safe tool behavior expected in a utility package.
</details>
<summary>
Malicious network disruption loop with unsafe interface handling
</summary>
</security_assessment>

[9/10] Reviewing src/bridge-utils-1.7.1/libbridge/libbridge_if.c...
x Reviewed src/bridge-utils-1.7.1/tests/busybr. Status: UNSAFE -- Malicious network disruption loop with unsafe interface handling
LLM auditresponse for libbridge_if.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `libbridge_if.c` is part of the bridge-utils package and provides low-level interface functions for managing Ethernet bridges on Linux systems. It uses standard system calls (ioctl) to interact with the kernel's bridge module, implementing functionality to add/remove bridges and attach/detach network interfaces. All operations are confined to legitimate network configuration tasks, consistent with the expected behavior of a bridge administration tool.

There is no evidence of malicious behavior such as network exfiltration, unauthorized system access, obfuscated code, or unexpected external communication. The code uses well-known Linux ioctl commands and does not execute external programs, read sensitive files, or spawn shells. Conditional compilation handles backward compatibility with older kernel interfaces (e.g., SIOCDEVPRIVATE fallbacks), which is normal in system utilities but does not indicate tampering.

The implementation is straightforward C code operating within the privileged domain of network administration, requiring root access for intended use. No supply-chain compromise or hidden functionality is present.
</details>
<summary>
No malicious code; standard bridge utility functions
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/bridge-utils-1.7.1/libbridge/libbridge_if.c. Status: SAFE -- No malicious code; standard bridge utility functions
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (2 total)

## mkbr

Status: UNSAFE

Summary: Command injection via unsanitized interface name input

Details:

The script contains suspicious hardcoded values and performs unvalidated interface manipulation without user confirmation, but the primary issue is the use of `/sbin/ifconfig` and `brctl` without verifying their paths or existence, which could allow symlink or PATH-based attacks if run in a compromised environment. However, the more severe concern is the use of backticks for command substitution with unsanitized input—`IP=\`/sbin/ifconfig $ETH ...\``—where `$ETH` is user-controlled (via script argument). This creates a command injection vulnerability: an attacker could pass a malicious interface name like `eth0; rm -rf /; #` to execute arbitrary commands with root privileges, which the script likely runs as.

While bridge setup is within the legitimate scope of `bridge-utils`, the lack of input sanitization and use of insecure command substitution (backticks) enables trivial exploitation for code execution. This is not merely a robustness flaw but a critical supply-chain risk if the script is used in automated or privileged contexts without input validation. The script should use `$(...)` instead of backticks and validate `$ETH` against a whitelist of interface names.

```
IP=`/sbin/ifconfig $ETH | sed -n -e 's/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p'`
```
This line is vulnerable to command injection via `$ETH`.

---

## busybr

Status: UNSAFE

Summary: Malicious network disruption loop with unsafe interface handling

Details:

The script contains a logic flaw that could lead to unauthorized access or disruption, but more importantly, it includes a suspicious variable reuse: `ETH0` and `ETH1` are incorrectly set using `${1:-"..."}` instead of separate arguments, meaning both interfaces are set to the first argument (or default to "eth0" and "eth1" only in name, but actually controlled by `$1`). This is likely a typo, but it enables unexpected behavior if the script is called with an interface name like `lo` or `tun0`, potentially allowing privilege escalation or network manipulation.

More critically, the script performs a continuous bridge teardown and rebuild loop using `while true; do ... sleep 10`, which can be abused to disrupt network configurations persistently. While this behavior might seem within the scope of a bridging utility, the lack of locks, safety checks, or user confirmation makes it dangerous. The use of deprecated `ifconfig` and `brctl` without modern equivalents suggests it's designed for environments where such disruption may go undetected.

However, the core issue is not just fragility — it's the fact that the script assumes and manipulates network state (IP addresses, interface bridging) without validation, and does so in a looping, destructive manner that could be exploited as a denial-of-service vector or to bypass firewall rules if combined with other attack surfaces. This deviates from safe tool behavior expected in a utility package.

---

(Skipped 1 file: bridge-utils-1.7.1.tar.sign)

API Usage Summary
  Models: qwen/qwen3-235b-a22b-2507
  Prompt Tokens: 20,456
  Completion Tokens: 3,486
  Total Tokens: 23,942
  Total Cost: $0.002190
  Execution Time: 45.76 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-bridge-utils.txt
Final Status: UNSAFE


Issues Found:

/tmp/aur-sleuth/aur-sleuth-qbdn9zzg/src/bridge-utils-1.7.1/tests/mkbr: [UNSAFE] Command injection via unsanitized interface name input / The script contains suspicious hardcoded values and performs unvalidated interface manipulation without user confirmation, but the primary issue is the use of `/sbin/ifconfig` and `brctl` without verifying their paths or existence, which could allow symlink or PATH-based attacks if run in a compromised environment. However, the more severe concern is the use of backticks for command substitution with unsanitized input—`IP=\`/sbin/ifconfig $ETH ...\``—where `$ETH` is user-controlled (via script argument). This creates a command injection vulnerability: an attacker could pass a malicious interface name like `eth0; rm -rf /; #` to execute arbitrary commands with root privileges, which the script likely runs as.

While bridge setup is within the legitimate scope of `bridge-utils`, the lack of input sanitization and use of insecure command substitution (backticks) enables trivial exploitation for code execution. This is not merely a robustness flaw but a critical supply-chain risk if the script is used in automated or privileged contexts without input validation. The script should use `$(...)` instead of backticks and validate `$ETH` against a whitelist of interface names.

```
IP=`/sbin/ifconfig $ETH | sed -n -e 's/^.*inet addr:\([0-9][0-9\.]*\).*$/\1/p'`
```
This line is vulnerable to command injection via `$ETH`.

/tmp/aur-sleuth/aur-sleuth-qbdn9zzg/src/bridge-utils-1.7.1/tests/busybr: [UNSAFE] Malicious network disruption loop with unsafe interface handling / The script contains a logic flaw that could lead to unauthorized access or disruption, but more importantly, it includes a suspicious variable reuse: `ETH0` and `ETH1` are incorrectly set using `${1:-"..."}` instead of separate arguments, meaning both interfaces are set to the first argument (or default to "eth0" and "eth1" only in name, but actually controlled by `$1`). This is likely a typo, but it enables unexpected behavior if the script is called with an interface name like `lo` or `tun0`, potentially allowing privilege escalation or network manipulation.

More critically, the script performs a continuous bridge teardown and rebuild loop using `while true; do ... sleep 10`, which can be abused to disrupt network configurations persistently. While this behavior might seem within the scope of a bridging utility, the lack of locks, safety checks, or user confirmation makes it dangerous. The use of deprecated `ifconfig` and `brctl` without modern equivalents suggests it's designed for environments where such disruption may go undetected.

However, the core issue is not just fragility — it's the fact that the script assumes and manipulates network state (IP addresses, interface bridging) without validation, and does so in a looping, destructive manner that could be exploited as a denial-of-service vector or to bypass firewall rules if combined with other attack surfaces. This deviates from safe tool behavior expected in a utility package.


Audit Skips:

/tmp/aur-sleuth/aur-sleuth-qbdn9zzg/bridge-utils-1.7.1.tar.sign: [SKIPPED] Skipping binary file: bridge-utils-1.7.1.tar.sign
