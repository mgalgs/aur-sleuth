---
package: pandoc-bin
pkgver: 3.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 60285
completion_tokens: 8519
total_tokens: 68804
cost: 0.00695907
execution_time: 71.76
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:35:14Z
file_verdicts:
  - file: pandoc-bin-3.10.tar.gz
    status: skipped
    summary: "Skipping binary file: pandoc-bin-3.10.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with valid upstream sources and checksums.
  - file: src/pandoc-3.10/data/init.lua
    status: safe
    summary: Only comments, no executable code.
  - file: src/pandoc-3.10/data/creole.lua
    status: safe
    summary: Clean pandoc reader grammar, no malicious behavior.
  - file: src/pandoc-3.10/man/manfilter.lua
    status: safe
    summary: Benign Pandoc Lua filter for man page processing.
  - file: src/pandoc-3.10/wml.xsd.patch
    status: safe
    summary: XML schema patch; no security issues.
  - file: src/pandoc-3.10/wasm/pandoc.js
    status: safe
    summary: Legitimate WASM wrapper for pandoc; no security issues.
  - file: src/pandoc-3.10/Makefile
    status: safe
    summary: Standard upstream Makefile, no malicious behavior.
  - file: src/pandoc-3.10/linux/make_artifacts.sh
    status: safe
    summary: Standard build script with no malicious behavior.
  - file: src/pandoc-3.10/macos/uninstall-pandoc.pl
    status: safe
    summary: macOS uninstall script, no security issues.
  - file: src/pandoc-3.10/wasm/index.js
    status: safe
    summary: Standard web frontend for Pandoc conversion; no malicious code.
  - file: src/pandoc-3.10/macos/make_macos_release.sh
    status: safe
    summary: Standard pandoc macOS release build script.
---

Cloning https://aur.archlinux.org/pandoc-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5hge_o26...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5hge_o26
Analyzing pandoc-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5hge_o26) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines static variables with no top-level command substitutions, external calls, or obfuscated code. All source URLs point to the official GitHub repository (`github.com/jgm/pandoc`) and include pinned SHA256 checksums for integrity verification. No `pkgver()` function exists, so sourcing the PKGBUILD is inert. Commands that could execute payloads (e.g., in `package()`) are not reached during `--nobuild --nodeps --noprepare` source fetch. The sources are legitimate upstream release archives.
</details>
<summary>
No malicious code executes during source fetch; standard packaging.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executes during source fetch; standard packaging.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pandoc-bin-3.10.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed pandoc-bin-3.10.tar.gz. Status: SKIPPED -- Skipping binary file: pandoc-bin-3.10.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for pandoc. All source URLs point to the official GitHub repository and releases (`github.com/jgm/pandoc`). Checksums (sha256sums) are provided for all source files, including architecture-specific tarballs. No obfuscated code, suspicious network requests, or dangerous commands are present. The `package()` function copies the binary and support files to the package directory and generates bash completion from the binary itself -- all normal packaging operations.
</details>
<summary>Standard AUR binary package with valid upstream sources and checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with valid upstream sources and checksums.
Reviewed all required files.
Deciding which files to review next...
Note: 2460 files available for selection; offering the 50 highest-priority to the model. 2163 lower-priority file(s) were not offered.
LLM response for file selection:
src/pandoc-3.10/Makefile
src/pandoc-3.10/data/creole.lua
src/pandoc-3.10/data/init.lua
src/pandoc-3.10/linux/make_artifacts.sh
src/pandoc-3.10/macos/make_macos_release.sh
src/pandoc-3.10/macos/uninstall-pandoc.pl
src/pandoc-3.10/man/manfilter.lua
src/pandoc-3.10/wasm/index.js
src/pandoc-3.10/wasm/pandoc.js
src/pandoc-3.10/wml.xsd.patch
Decided to review 10 additional files: src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wml.xsd.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pandoc-3.10/Makefile...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch...
[0/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/pandoc.js...
LLM auditresponse for init.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `init.lua` contains only comment lines describing its purpose as a Lua initialization script for filters. There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely benign.
</details>
<summary>Only comments, no executable code.</summary>
</security_assessment>

[1/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10/data/init.lua. Status: SAFE -- Only comments, no executable code.
LLM auditresponse for creole.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a normal Pandoc custom reader for Creole wiki markup. It defines an LPEG grammar to parse Creole syntax and convert it to Pandoc's internal AST. There are no network requests, no obfuscated code, no system file operations, and no dangerous commands. The only external function is `Reader`, which is the standard entry point for Pandoc readers. No supply-chain attack indicators are present.</details>
<summary>Clean pandoc reader grammar, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10/data/creole.lua. Status: SAFE -- Clean pandoc reader grammar, no malicious behavior.
LLM auditresponse for manfilter.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `manfilter.lua` is a standard Pandoc Lua filter intended to transform document elements for man page output. It performs benign operations: capitalizing level-1 headers, converting tables to plain code blocks (for portability with `mandoc`), replacing links with their text content, and removing footnotes. There are no network requests, obfuscated code, dangerous system calls, or any operations that deviate from ordinary document processing. The use of the `text` module for UTF-8 aware string conversion is legitimate. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<summary>
Benign Pandoc Lua filter for man page processing.</summary>
</security_assessment>

[3/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10/man/manfilter.lua. Status: SAFE -- Benign Pandoc Lua filter for man page processing.
LLM auditresponse for wml.xsd.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch for an XML schema definition (XSD). It adds `&lt;xsd:attribute ref=&quot;mc:Ignorable&quot; use=&quot;optional&quot; /&gt;` to several complex types in the `wml.xsd` file. This is a standard schema modification to allow the `mc:Ignorable` attribute, likely for compatibility with Office Open XML (OOXML) or similar standards. There is no obfuscation, no network activity, no dangerous commands, and no deviation from normal packaging practices. The patch is purely data definition.
</details>
<summary>XML schema patch; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10/wml.xsd.patch. Status: SAFE -- XML schema patch; no security issues.
LLM auditresponse for pandoc.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pandoc.js` is a JavaScript wrapper for running pandoc via WebAssembly (WASI). It imports a WASI shim from a standard CDN (`cdn.jsdelivr.net`) and fetches the pandoc.wasm binary from the local path `./pandoc.wasm?sha1=SHA1_PANDOC_WASM`. All operations are consistent with legitimate browser-based pandoc functionality: setting up a virtual filesystem, converting documents, and returning results. There is no obfuscated code, no unexpected network requests (the CDN import is a standard dependency), no exfiltration of local data, and no execution of arbitrary commands. The code is transparent and serves only the stated purpose of providing a JavaScript API to pandoc. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<summary>Legitimate WASM wrapper for pandoc; no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/pandoc-3.10/Makefile, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/wasm/index.js...
+ Reviewed src/pandoc-3.10/wasm/pandoc.js. Status: SAFE -- Legitimate WASM wrapper for pandoc; no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the upstream Makefile for the pandoc document converter project. It contains standard development and build targets (build, test, bench, lint, coverage, packaging, man page generation, etc.). All external network operations are to well-known, project-related destinations: GitHub repositories for validation tools (docx-validator, OOXML-Validator), npm for the ACE accessibility checker, and the GitHub API for download statistics. There are no obfuscated commands, no base64/hex encoding, no eval, no unexpected data exfiltration, and no execution of code from untrusted sources. The file is consistent with normal open-source project maintenance and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard upstream Makefile, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/wasm/index.js...
+ Reviewed src/pandoc-3.10/Makefile. Status: SAFE -- Standard upstream Makefile, no malicious behavior.
LLM auditresponse for make_artifacts.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build and packaging script for pandoc. It uses `cabal update` and `cabal build` to fetch dependencies from Hackage (the official Haskell package repository) and compile the binary. It then strips the binary, verifies static linking and required features (`+server +lua`), and creates a Debian package and a tarball using standard tools (`fakeroot`, `dpkg-deb`, `tar`, `gzip`). All operations are confined to a build directory and the package's own source tree. There are no suspicious network requests, obfuscated code, backdoors, data exfiltration, or unexpected system modifications. The script follows normal AUR/packaging practices.
</details>
<summary>Standard build script with no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/wasm/index.js...
+ Reviewed src/pandoc-3.10/linux/make_artifacts.sh. Status: SAFE -- Standard build script with no malicious behavior.
LLM auditresponse for uninstall-pandoc.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a macOS uninstall helper for pandoc. It uses `pkgutil` to list files installed by the package and then removes them with `sudo rm` after user confirmation. All variables (e.g., `$pkg_id`) are hardcoded or derived from trusted system commands, so there is no injection risk. The script does not perform any network requests, obfuscated code, or unexpected file operations beyond its stated purpose. It is an upstream utility included with the pandoc source and does not affect the AUR package's build or installation on Arch Linux. This is standard application functionality, not a supply-chain attack.
</details>
<summary>macOS uninstall script, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/wasm/index.js...
+ Reviewed src/pandoc-3.10/macos/uninstall-pandoc.pl. Status: SAFE -- macOS uninstall script, no security issues.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `index.js` is a frontend JavaScript application for a browser-based Pandoc document converter. It imports standard libraries (`fflate` from esm.sh, `@myriaddreamin/typst` from jsdelivr), loads a Pandoc WebAssembly module, and uses PetiteVue for reactive UI. All external network requests go to well-known CDNs (esm.sh, cdn.jsdelivr.net, data.jsdelivr.com) for legitimate dependencies and CSL citation style resources. There is no obfuscated code, no base64/hex decoding, no `eval` usage, no system file access, no data exfiltration to unexpected hosts, and no backdoor mechanism. The code performs only the operations expected for its stated purpose: loading libraries, running Pandoc conversion in the browser, and downloading/uploading document files. No supply-chain attack indicators are present; the logic is consistent with a normal interactive web tool.
</details>
<summary>Standard web frontend for Pandoc conversion; no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/pandoc-3.10/macos/make_macos_release.sh...
+ Reviewed src/pandoc-3.10/wasm/index.js. Status: SAFE -- Standard web frontend for Pandoc conversion; no malicious code.
LLM auditresponse for make_macos_release.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build script for creating a macOS release of pandoc. It uses `cabal update` and `cabal build` (standard Haskell package manager) with user-specified flags, then copies binaries and man pages, and uses the built pandoc binary to generate a license HTML file. No network requests to unexpected hosts, no obfuscated code, no dangerous commands like `eval` or `curl`. The script performs routine packaging operations (directory creation, file copying, `strip`, `chown` for macOS bundle permissions). There is no evidence of malicious code or supply-chain attack.
</details>
<summary>Standard pandoc macOS release build script.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pandoc-3.10/macos/make_macos_release.sh. Status: SAFE -- Standard pandoc macOS release build script.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pandoc-bin-3.10.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 60,285
  Completion Tokens: 8,519
  Total Tokens: 68,804
  Total Cost: $0.006959
  Execution Time: 71.76 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pandoc-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5hge_o26/pandoc-bin-3.10.tar.gz: [SKIPPED] Skipping binary file: pandoc-bin-3.10.tar.gz
