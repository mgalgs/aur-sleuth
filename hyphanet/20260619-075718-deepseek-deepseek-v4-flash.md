---
package: hyphanet
pkgver: 0.7.5.1506
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 04f91022df66399cc45c448ff8c0391dcf3e1054
prompt_tokens: 44212
completion_tokens: 7997
total_tokens: 52209
cost: 0.00541854
execution_time: 58.86
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T07:57:17Z
file_verdicts:
  - file: nss.cfg
    status: safe
    summary: Standard NSS configuration file, no threats detected.
  - file: hyphanet.install
    status: safe
    summary: Informational install script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: freenet.hook
    status: safe
    summary: Standard pacman hook; no malicious behavior found.
  - file: src/fred/src/freenet/client/ArchiveExtractCallback.java
    status: safe
    summary: Clean interface file, no security issues.
  - file: src/fred/src/freenet/client/ArchiveHandler.java
    status: safe
    summary: Standard upstream interface, no malicious code found.
  - file: src/fred/build-offline.sh
    status: safe
    summary: Standard offline build helper script; no security issues.
  - file: src/fred/build-clean.xml
    status: safe
    summary: Standard Ant build script; no malicious content.
  - file: freenet.service
    status: safe
    summary: Standard systemd service file for FreeNet daemon, no security issues.
  - file: freenet.ini
    status: safe
    summary: Standard configuration file, no malicious content.
  - file: src/fred/generator/js/src/freenet/client/UpdaterConstants.java
    status: safe
    summary: "Safe: Constant-only file, no executable logic."
  - file: src/fred/generator/js/build.xml
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/fred/stats/probe_test/probe_test.sh
    status: safe
    summary: Benign test script for local network probing.
---

Cloning https://aur.archlinux.org/hyphanet.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6exvbksn...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6exvbksn
Analyzing hyphanet AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6exvbksn) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only declares variables and arrays (e.g., `source`, `b2sums`, `validpgpkeys`). No command substitutions, backticks, `eval`, or other executable constructs are present outside of `build()` and `package()`, which are not run during `makepkg --nobuild --nodeps --noprepare`. There is no `pkgver()` function defined, so no code execution occurs from that step. The `source` array consists of a signed git URL from the project's own GitHub repository and an HTTPS download from the project's own `raw.githubusercontent.com` path, plus local files — all standard for AUR packages. The presence of `validpgpkeys` and checksums further indicates standard practice. No malicious or obfuscated code is present. Running the two specified commands will safely fetch sources and parse the PKGBUILD without executing any harmful actions.
</details>
<summary>
PKGBUILD is safe; no malicious code executes during source fetch/parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- PKGBUILD is safe; no malicious code executes during source fetch/parse.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing hyphanet.install...
[0/3] Reviewing hyphanet.install, PKGBUILD...
[0/3] Reviewing hyphanet.install, PKGBUILD, nss.cfg...
LLM auditresponse for nss.cfg:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard NSS (Network Security Services) configuration file. It defines a PKCS#11 module named "NSS" pointing to the standard library `/usr/lib/libsoftokn3.so` with typical parameters. There are no instructions, commands, network requests, obfuscation, or any other dangerous content. It is a benign configuration file that enables applications to use NSS for cryptographic operations.

No evidence of injected malicious code, supply-chain attack, or deviation from intended packaging purpose.
</details>
<summary>Standard NSS configuration file, no threats detected.</summary>
</security_assessment>

[1/3] Reviewing hyphanet.install, PKGBUILD...
+ Reviewed nss.cfg. Status: SAFE -- Standard NSS configuration file, no threats detected.
LLM auditresponse for hyphanet.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hyphanet.install` is a standard Arch Linux package install script that contains only `post_install`, `post_upgrade`, and `post_remove` hooks. Each hook prints informational messages using `cat` and heredocs, instructing the user on how to enable the systemd service, listing file paths, and noting what is removed/retained upon package removal. There are no dangerous commands (no `eval`, `curl`, `wget`, `git pull`, `base64`, or obfuscated code), no network requests, no file modifications or deletions outside of normal packaging behavior, and no exfiltration of data. The content is purely instructional and benign.
</details>
<summary>Informational install script with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed hyphanet.install. Status: SAFE -- Informational install script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for the Hyphanet (formerly Freenet) project. All sources are fetched from the official upstream repository (`github.com/hyphanet/fred.git`) and a supporting raw file from the same organization. The git source is signed with a provided PGP key, and checksums are supplied for all non-VCS sources (raw file and local config files). The build process runs the project's own Gradle build (`./gradlew jar copyRuntimeLibs`), which is expected. The package installation places files into standard system directories (`/usr/share/java/freenet/`, `/usr/lib/systemd/system/`, etc.) and includes configuration for systemd, sysusers, tmpfiles, and ananicy. There are no suspicious network requests, obfuscated code, eval usage, or operations that exfiltrate data or install backdoors. The use of `raw.githubusercontent.com` for a seednodes file is a routine way to fetch a static configuration file from the project's own repository; it is not an unexpected or untrusted host. No evidence of a supply-chain attack or malicious injection is present.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 1558 files available for selection; offering the 50 highest-priority to the model. 1433 lower-priority file(s) were not offered.
LLM response for file selection:
freenet.hook
freenet.service
src/fred/build-offline.sh
src/fred/build-clean.xml
src/fred/generator/js/build.xml
src/fred/generator/js/src/freenet/client/UpdaterConstants.java
src/fred/src/freenet/client/ArchiveExtractCallback.java
src/fred/src/freenet/client/ArchiveHandler.java
freenet.ini
src/fred/stats/probe_test/probe_test.sh
Decided to review 10 additional files: freenet.hook, freenet.service, src/fred/build-offline.sh, src/fred/build-clean.xml, src/fred/generator/js/build.xml, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, src/fred/src/freenet/client/ArchiveHandler.java, freenet.ini, src/fred/stats/probe_test/probe_test.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing freenet.hook...
[0/10] Reviewing freenet.hook, freenet.service...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, freenet.ini...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, freenet.ini, src/fred/generator/js/build.xml...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/src/freenet/client/ArchiveHandler.java...
[0/10] Reviewing freenet.hook, freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/src/freenet/client/ArchiveHandler.java, src/fred/stats/probe_test/probe_test.sh...
LLM auditresponse for freenet.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook that prevents installation, upgrade, or removal of the hyphanet package while the Freenet systemd service is running. The hook runs a simple bash check (`systemctl is-active --quiet freenet.service`) and aborts the transaction if the service is active. There is no obfuscation, no network requests, no file exfiltration, and no unexpected system modifications. The behavior is entirely appropriate for a package that requires the service to be stopped before maintenance.
</details>
<summary>Standard pacman hook; no malicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/src/freenet/client/ArchiveExtractCallback.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/src/freenet/client/ArchiveHandler.java, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed freenet.hook. Status: SAFE -- Standard pacman hook; no malicious behavior found.
LLM auditresponse for ArchiveExtractCallback.java:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ArchiveExtractCallback.java` is a standard Java interface definition. It contains no executable code, no network requests, no system modifications, and no obfuscated logic. The interface simply declares four callback method signatures related to archive extraction (`gotBucket`, `notInArchive`, `onFailed`). There is no evidence of malicious or suspicious behavior. The file is consistent with normal packaging and upstream application development.
</details>
<summary>
Clean interface file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/src/freenet/client/ArchiveHandler.java, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/src/freenet/client/ArchiveExtractCallback.java. Status: SAFE -- Clean interface file, no security issues.
LLM auditresponse for ArchiveHandler.java:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ArchiveHandler.java` is a standard Java interface from the Hyphanet (formerly Freenet) project. It defines abstract methods for archive handling (get, getMetadata, extractToCache, etc.) with no executable logic, network requests, obfuscation, or system modifications. The code aligns with the project's documented purpose and contains no suspicious patterns. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<summary>Standard upstream interface, no malicious code found.</summary>
</security_assessment>

[3/10] Reviewing freenet.service, src/fred/build-clean.xml, src/fred/build-offline.sh, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/src/freenet/client/ArchiveHandler.java. Status: SAFE -- Standard upstream interface, no malicious code found.
LLM auditresponse for build-offline.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard helper for performing an offline build using Gradle. It temporarily modifies the Gradle wrapper distribution URL to point to a local file (`../../lib/gradle-4.10.3-bin.zip`) and removes an Android build plugin line from `build.gradle`, then runs `./gradlew jar --offline --no-daemon`. After the build, it restores the original files. There are no external network requests, no obfuscated code, no exfiltration, and no modification of system files outside the project directory. This is consistent with normal packaging practices and does not exhibit any malicious behavior.
</details>
<summary>Standard offline build helper script; no security issues.</summary>
</security_assessment>

[4/10] Reviewing freenet.service, src/fred/build-clean.xml, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/build-offline.sh. Status: SAFE -- Standard offline build helper script; no security issues.
LLM auditresponse for build-clean.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Apache Ant build script for the Freenet (Hyphanet) project. It performs typical build operations: compiling Java source code, running unit tests, packaging into JAR files, generating documentation, and signing the distribution. The script loads properties from standard files (`override.properties`, `build.properties`, `dependencies.properties`) and uses environment variables for keystore credentials during signing — all normal practices. The only external network call is to a well-known timestamp authority for code signing (`http://timestamp.comodoca.com/rfc3161`), which is expected in a signed build. The `git describe` execution is used only to determine the version string for the build, not to fetch untrusted code. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted content. The file is a legitimate build configuration for the upstream project.
</details>
<summary>Standard Ant build script; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing freenet.service, src/fred/generator/js/src/freenet/client/UpdaterConstants.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/build-clean.xml. Status: SAFE -- Standard Ant build script; no malicious content.
LLM auditresponse for freenet.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the FreeNet daemon. It launches a Java application with a fixed classpath and JVM arguments, and includes expected hardening options (ProtectSystem, ProtectHome, etc.). There is no obfuscation, no network requests to unexpected hosts, no data exfiltration, and no commands that deviate from normal packaging practices. The JVM flags are upstream application choices, not indicators of a supply-chain attack.
</details>
<summary>Standard systemd service file for FreeNet daemon, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/fred/generator/js/src/freenet/client/UpdaterConstants.java, freenet.ini, src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed freenet.service. Status: SAFE -- Standard systemd service file for FreeNet daemon, no security issues.
LLM auditresponse for freenet.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file for Freenet (Hyphanet) containing standard key-value settings. It defines directory paths, port bindings, and disables the updater. All network services (fproxy, fcp, console) are bound to localhost (127.0.0.1 and IPv6 loopback), which follows security best practices. There are no commands, scripts, obfuscated content, or any indication of malicious behavior. The file is consistent with a normal AUR package configuration.
</details>
<summary>Standard configuration file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/fred/generator/js/src/freenet/client/UpdaterConstants.java, src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed freenet.ini. Status: SAFE -- Standard configuration file, no malicious content.
LLM auditresponse for UpdaterConstants.java:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a generated Java constants file containing only static final strings and integers. It defines updater identifiers (e.g. PROGRESSBAR_UPDATER, IMAGE_ELEMENT_UPDATER), paths (e.g. /pushdata/, /pushnotifications/), and a keepalive timeout. No executable code, no network requests, no obfuscation, no system modifications. The file is part of the upstream Freenet application and follows standard packaging practices. No security issues.
</details>
<summary>Safe: Constant-only file, no executable logic.</summary>
</security_assessment>

[8/10] Reviewing src/fred/generator/js/build.xml, src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/generator/js/src/freenet/client/UpdaterConstants.java. Status: SAFE -- Safe: Constant-only file, no executable logic.
LLM auditresponse for build.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The `build.xml` file is a standard Apache Ant build script for the FreenetJs project. It performs routine build operations: copying a generated constants file, adjusting its package declaration, compiling JavaScript using the GWT compiler, copying output to the static directory, and cleaning temporary files. There are no network requests, code execution from untrusted sources, obfuscation, or any other indicators of supply-chain attack. All actions are confined to the project's source tree and build output, consistent with normal packaging and development workflows.
</details>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/fred/stats/probe_test/probe_test.sh...
+ Reviewed src/fred/generator/js/build.xml. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for probe_test.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `probe_test.sh` is a test harness that runs multiple Java processes (`ProbeTester`) sending probes via telnet to `localhost:2323`, collects raw output into timestamped files, then runs `summarize.sh` and `upload.sh` to process and possibly upload results.  

No suspicious behavior is present:  
- All network connections are to `localhost` (port 2323, consistent with the hyphanet node).  
- No external downloads, obfuscated commands, or execution of untrusted code.  
- The script only creates local directories and files under `results/` and invokes companion scripts (`summarize.sh`, `upload.sh`) that are part of the same package and assumed legitimate.  
- No data exfiltration, backdoors, or manipulation of system files outside the application scope.  

The use of `telnet` (plaintext) is only to localhost and is standard for local testing. The script is a routine, transparent test tool and does not exhibit any markers of a supply-chain attack.
</details>
<summary>Benign test script for local network probing.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/fred/stats/probe_test/probe_test.sh. Status: SAFE -- Benign test script for local network probing.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,212
  Completion Tokens: 7,997
  Total Tokens: 52,209
  Total Cost: $0.005419
  Execution Time: 58.86 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-hyphanet.txt
Final Status: SAFE


No issues found.
