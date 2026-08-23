---
package: librewolf
pkgver: 152.0.0_1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 48117
completion_tokens: 6697
total_tokens: 54814
cost: 0.00553599
execution_time: 274.46
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T07:35:45Z
file_verdicts:
  - file: default192x192.png
    status: skipped
    summary: "Skipping binary file: default192x192.png"
  - file: librewolf.install
    status: safe
    summary: "Safe: purely informational echo messages, no malicious actions."
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no signs of malicious behavior.
  - file: src/librewolf-152.0-1/accessible/base/RoleHGen.py
    status: safe
    summary: Standard code-gen script, no security issues.
  - file: src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py
    status: safe
    summary: Standard code generation script, no security concerns.
  - file: src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs
    status: safe
    summary: Standard Firefox private browsing module, no security issues.
  - file: src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs
    status: safe
    summary: Standard browser internal module, no security issues.
  - file: src/librewolf-152.0-1/GNUmakefile
    status: safe
    summary: Trivial Makefile shim, no security risk.
  - file: librewolf.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py
    status: safe
    summary: Legitimate Mozilla code generator, no malicious behavior.
  - file: src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs
    status: safe
    summary: Standard browser safe-browsing UI module, no malicious code.
  - file: src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs
    status: safe
    summary: Standard Firefox EME module, no malicious behavior.
  - file: src/librewolf-152.0-1/accessible/base/RelationTypeGen.py
    status: safe
    summary: Simple code generator, no security concerns.
---

Cloning https://aur.archlinux.org/librewolf.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-n7nafyyo...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-n7nafyyo
Analyzing librewolf AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-n7nafyyo) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains variable assignments (including conditional additions to `makedepends`) and a `source` array pointing to the official LibreWolf source tarball on codeberg.org and two local files. No `pkgver()` function exists. There are no top-level command substitutions, `curl`, `wget`, `eval`, or other code that executes during sourcing. The `--nobuild --nodeps --noprepare` commands will only download the source tarball and the local files (desktop, png) and parse the PKGBUILD – both are standard and safe operations. No malicious behavior is present in the scoped code that runs at parse time.
</details>
<summary>No malicious code executed when sourcing PKGBUILD or fetching sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executed when sourcing PKGBUILD or fetching sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, librewolf.install...
[0/3] Reviewing PKGBUILD, librewolf.install, default192x192.png...
[1/3] Reviewing PKGBUILD, librewolf.install...
! Reviewed default192x192.png. Status: SKIPPED -- Skipping binary file: default192x192.png
LLM auditresponse for librewolf.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `librewolf.install` contains only `echo` statements that display informational messages to the user about configuration changes and migration guidance. No commands that modify the system, access sensitive data, perform network operations, or execute arbitrary code are present. This is a standard AUR `.install` script used for post-installation messages and poses no security risk.
</details>
<summary>Safe: purely informational echo messages, no malicious actions.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed librewolf.install. Status: SAFE -- Safe: purely informational echo messages, no malicious actions.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a complex application like LibreWolf (a Firefox fork). It downloads the source tarball from the official Codeberg repository with a PGP signature verification (`validpgpkeys` and `.sig` file). The build process uses Mozilla's `mach` build system and performs Profile-Guided Optimization (PGO) using `xvfb-run` or `wlheadless-run`, which is normal for performance tuning in Firefox-based browsers. No obfuscated code, unexpected network requests, data exfiltration, backdoors, or system modifications outside the normal package installation scope are present. The package only interacts with the upstream project's infrastructure and uses standard build tooling.
</details>
<summary>Standard AUR PKGBUILD, no signs of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no signs of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 489372 files available for selection; offering the 50 highest-priority to the model. 296237 lower-priority file(s) were not offered.
LLM response for file selection:
librewolf.desktop
src/librewolf-152.0-1/GNUmakefile
src/librewolf-152.0-1/accessible/base/RelationTypeGen.py
src/librewolf-152.0-1/accessible/base/RoleHGen.py
src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py
src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py
src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs
src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs
src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs
src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs
Decided to review 10 additional files: librewolf.desktop, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing librewolf.desktop...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs...
[0/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/base/RoleHGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
LLM auditresponse for RoleHGen.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `RoleHGen.py` is a standard code-generation utility used within Mozilla's accessibility infrastructure (LibreWolf being a Firefox fork). It reads a local IDL file (`nsIAccessibleRole.idl`), parses role constants via a regular expression, and writes a C++ header file. There is no obfuscation, no network requests, no system-modification commands, and no exfiltration of data. The hardcoded `accessible/interfaces/nsIAccessibleRole.idl` path in the debug block is normal for development/testing. The script performs only local file I/O as part of the build process. No supply-chain attack vectors are present.
</details>
<summary>Standard code-gen script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/accessible/base/RoleHGen.py. Status: SAFE -- Standard code-gen script, no security issues.
LLM auditresponse for SelectorMapGen.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python script that generates Objective-C source code for macOS accessibility selector maps. It reads a protocol header file, parses specially formatted comments, and produces NSDictionary definitions. There are no network requests, no execution of external commands, no obfuscated code, and no file operations beyond reading the specified protocol file and writing output to a file descriptor. This is standard build-time code generation found in many open-source projects, including Mozilla Firefox. The behavior is entirely consistent with the package's stated purpose (a browser) and does not exhibit any signs of a supply-chain attack.
</details>
<summary>
Standard code generation script, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/accessible/mac/SelectorMapGen.py. Status: SAFE -- Standard code generation script, no security concerns.
LLM auditresponse for AboutPrivateBrowsingChild.sys.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Mozilla Firefox internal module for the private browsing about: page. It extends `RemotePageChild` and exports functions to the content window for telemetry recording and feature configuration via Nimbus (Mozilla's experimentation framework). All APIs used (`ChromeUtils`, `Cu.exportFunction`, `Glean`, `NimbusFeatures`) are standard Firefox internals. There are no network requests, obfuscated code, file system operations, or any behavior that deviates from normal upstream browser functionality. This file is part of the upstream source code and does not contain any injected malicious code.
</details>
<summary>Standard Firefox private browsing module, no security issues.</summary>
</security_assessment>

[3/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/browser/actors/AboutPrivateBrowsingChild.sys.mjs. Status: SAFE -- Standard Firefox private browsing module, no security issues.
LLM auditresponse for AboutNewTabChild.sys.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard internal actor module for Firefox/LibreWolf that manages the about:newtab page in child processes. It uses only Mozilla-internal APIs (Services, ChromeUtils, XPCOMUtils, RemotePageChild) and loads resources exclusively from chrome:// and resource:// URIs (internal to the browser). There are no external network requests, no obfuscated code, no dangerous commands, and no deviations from normal browser functionality. The code is consistent with upstream Firefox packaging and does not exhibit any signs of a supply-chain attack or malicious behavior.
</details>
<summary>Standard browser internal module, no security issues.</summary>
</security_assessment>

[4/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/GNUmakefile, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/browser/actors/AboutNewTabChild.sys.mjs. Status: SAFE -- Standard browser internal module, no security issues.
LLM auditresponse for GNUmakefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard convenience shim that forwards `make` commands to the project's `mach` build script, which is typical for Mozilla-based packages. There are no network requests, obfuscation, dangerous commands, or deviations from expected packaging practices. The file contains only three simple targets (`build`, `clean`, and `all` aliased to `build`) and is perfectly benign.
</details>
<summary>Trivial Makefile shim, no security risk.</summary>
</security_assessment>

[5/10] Reviewing librewolf.desktop, src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/GNUmakefile. Status: SAFE -- Trivial Makefile shim, no security risk.
LLM auditresponse for librewolf.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the LibreWolf web browser. It defines the application name, descriptions, translations, MIME type associations, and two desktop actions (new window, new private window, profile manager). The `Exec` lines point to `/usr/lib/librewolf/librewolf` with standard command-line arguments (`%u`, `--new-window`, `--private-window`, `--ProfileManager`), which is normal for a web browser. There are no network requests, obfuscated code, unusual system modifications, or executable content. The file is purely declarative metadata and does not perform any operations by itself. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed librewolf.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for AccEventGen.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard code generator for Mozilla's accessibility event system. It reads IDL and configuration files from the project's source tree (via `buildconfig.topsrcdir`) and generates C++ header and source files. The use of `exec` to load configuration files is normal for the Mozilla build system (e.g., `Bindings.conf`). There are no network requests, obfuscation, dangerous external commands, or attempts to exfiltrate data. All file operations are local and within the project's own source and build directories. No evidence of malicious injection or supply-chain attack.
</details>
<summary>Legitimate Mozilla code generator, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs, src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/accessible/xpcom/AccEventGen.py. Status: SAFE -- Legitimate Mozilla code generator, no malicious behavior.
LLM auditresponse for BlockedSiteChild.sys.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Firefox/Gecko internal module (`BlockedSiteChild.sys.mjs`) for handling safe browsing and blocked site error pages. It is part of the upstream browser codebase and performs normal browser security UI functions (setting error description links, displaying safe browsing details, handling click events for reporting). There is no evidence of malicious behavior, obfuscation, or supply chain injection. The code is consistent with the application's stated purpose.
</details>
<summary>Standard browser safe-browsing UI module, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/librewolf-152.0-1/accessible/base/RelationTypeGen.py, src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs...
+ Reviewed src/librewolf-152.0-1/browser/actors/BlockedSiteChild.sys.mjs. Status: SAFE -- Standard browser safe-browsing UI module, no malicious code.
LLM auditresponse for EncryptedMediaChild.sys.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Firefox component for managing Encrypted Media Extensions (EME) and global capture state notifications. It uses only Mozilla-internal APIs (`Services.cpmm.sharedData`, `Services.obs.notifyObservers`, `JSWindowActorChild`) and performs no network requests, file operations, or code execution outside of the expected browser scope. All logic is transparent and serves the stated purpose of tracking screen/window sharing and notifying observers about media key requests. There is no obfuscation, encoded payloads, exfiltration, or deviation from normal packaging practices. The file is consistent with upstream Firefox code and does not exhibit any indicators of a supply-chain attack.
</details>
<summary>Standard Firefox EME module, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/librewolf-152.0-1/accessible/base/RelationTypeGen.py...
+ Reviewed src/librewolf-152.0-1/browser/actors/EncryptedMediaChild.sys.mjs. Status: SAFE -- Standard Firefox EME module, no malicious behavior.
LLM auditresponse for RelationTypeGen.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a standard code generation utility for the Mozilla accessibility module. It reads an IDL file from the local source tree (``accessible/interfaces/nsIAccessibleRelation.idl``) and produces a C++ header file defining an enum of relation types. There are no network requests, no external downloads, no obfuscation, and no dangerous operations. The file operations are limited to reading a local source file and writing to a provided file handle. This is routine packaging behavior and does not introduce any security risk.
</details>
<summary>Simple code generator, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/librewolf-152.0-1/accessible/base/RelationTypeGen.py. Status: SAFE -- Simple code generator, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: default192x192.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,117
  Completion Tokens: 6,697
  Total Tokens: 54,814
  Total Cost: $0.005536
  Execution Time: 274.46 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-librewolf.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-n7nafyyo/default192x192.png: [SKIPPED] Skipping binary file: default192x192.png
