---
package: pandoc-bin
pkgver: 3.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: af83c8ecbd0b8272d6c9200f7baf40324851f319
prompt_tokens: 56103
completion_tokens: 9422
total_tokens: 65525
cost: 0.00674523
execution_time: 88.77
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:50:46Z
file_verdicts:
  - file: pandoc-bin-3.10.tar.gz
    status: skipped
    summary: "Skipping binary file: pandoc-bin-3.10.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksums from official upstream.
  - file: src/pandoc-3.10/data/init.lua
    status: safe
    summary: Empty comment-only Lua script, no code.
  - file: src/pandoc-3.10/wml.xsd.patch
    status: safe
    summary: Benign XSD schema patch, no security issues.
  - file: src/pandoc-3.10/macos/make_macos_release.sh
    status: safe
    summary: Standard macOS release build script, no security issues.
  - file: src/pandoc-3.10/linux/make_artifacts.sh
    status: safe
    summary: Standard upstream build packaging script, no malicious behavior.
  - file: src/pandoc-3.10/data/creole.lua
    status: safe
    summary: Standard pandoc custom reader, no security issues.
  - file: src/pandoc-3.10/macos/uninstall-pandoc.pl
    status: safe
    summary: Standard macOS uninstall script for Pandoc; no security issues.
  - file: src/pandoc-3.10/wasm/pandoc.js
    status: safe
    summary: No evidence of malicious behavior; standard wasm interface.
  - file: src/pandoc-3.10/man/manfilter.lua
    status: safe
    summary: Standard pandoc filter, no malicious content.
  - file: src/pandoc-3.10/wasm/index.js
    status: safe
    summary: Legitimate web app frontend, no malicious content.
  - file: src/pandoc-3.10/wasm/patches/lua.patch
    status: safe
    summary: Legitimate hardening patch for Lua sandboxing.
---

Cloning https://aur.archlinux.org/pandoc-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r33g2sde...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r33g2sde
Analyzing pandoc-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r33g2sde) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `package()` function. The `package()` function is not executed during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The global/top-level scope consists solely of variable definitions (pkgname, pkgver, source arrays, sha256sums, etc.) and no command substitutions or function calls that would execute code. The `pkgver` is a plain variable (no `pkgver()` function). The source URLs point to the official GitHub repository for pandoc, which is the expected upstream. All checksums are pinned (not SKIP). No suspicious network destinations, obfuscated code, or exfiltration attempts exist in the scopes that execute during the requested commands.
</details>
<summary>Source fetch and PKGBUILD parse are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Source fetch and PKGBUILD parse are safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing pandoc-bin-3.10.tar.gz...
[0/2] Reviewing pandoc-bin-3.10.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed pandoc-bin-3.10.tar.gz. Status: SKIPPED -- Skipping binary file: pandoc-bin-3.10.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for pandoc. It downloads source and binary tarballs from the official GitHub repository (jgm/pandoc) with pinned version and checksums. The `package()` function copies files into the package directory and generates bash completions. There is no obfuscated code, no unexpected network requests, no execution of untrusted content, and no exfiltration of data. All operations are consistent with normal AUR packaging practices.
</details>
<summary>Standard binary package with pinned checksums from official upstream.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksums from official upstream.
Reviewed all required files.
Deciding which files to review next...
Note: 2460 files available for selection; offering the 50 highest-priority to the model. 2163 lower-priority file(s) were not offered.
LLM response for file selection:
src/pandoc-3.10/linux/make_artifacts.sh
src/pandoc-3.10/macos/make_macos_release.sh
src/pandoc-3.10/macos/uninstall-pandoc.pl
src/pandoc-3.10/data/creole.lua
src/pandoc-3.10/data/init.lua
src/pandoc-3.10/man/manfilter.lua
src/pandoc-3.10/wasm/index.js
src/pandoc-3.10/wasm/pandoc.js
src/pandoc-3.10/wasm/patches/lua.patch
src/pandoc-3.10/wml.xsd.patch
Decided to review 10 additional files: src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/patches/lua.patch, src/pandoc-3.10/wml.xsd.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch...
[0/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/data/init.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/patches/lua.patch...
LLM auditresponse for init.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only a comment describing its purpose as a Lua initialization script for filters. There is no executable code, no network requests, no file operations, and no obfuscation. It is a benign placeholder with no security implications.
</details>
<summary>Empty comment-only Lua script, no code.</summary>
</security_assessment>

[1/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wml.xsd.patch, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/data/init.lua. Status: SAFE -- Empty comment-only Lua script, no code.
LLM auditresponse for wml.xsd.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that modifies an XML Schema Definition (XSD) file by adding optional `mc:Ignorable` attributes to several complex types. The `mc:Ignorable` attribute is a standard XML markup compatibility mechanism (from the W3C Markup Compatibility namespace) and is commonly used in OOXML schemas. This patch appears to be a legitimate schema update, not a malicious injection. There is no obfuscated code, no network requests, no file operations, and no deviation from normal packaging practices. The changes are purely structural modifications to an XML schema file.
</details>
<summary>
Benign XSD schema patch, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/make_macos_release.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/wml.xsd.patch. Status: SAFE -- Benign XSD schema patch, no security issues.
LLM auditresponse for make_macos_release.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is an upstream release build script for Pandoc on macOS. It performs standard actions: updating cabal packages, building with cabal, copying the binary and man pages, stripping the binary, generating a license HTML, and preparing a distribution directory with architecture and version metadata. There are no suspicious network requests (only `cabal update` from the official Hackage repository, which is normal for Haskell projects). No obfuscated code, data exfiltration, backdoors, or arbitrary downloads. The script follows typical development packaging practices and does not show any signs of a supply chain attack.
</details>
<summary>Standard macOS release build script, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/pandoc-3.10/linux/make_artifacts.sh, src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/macos/make_macos_release.sh. Status: SAFE -- Standard macOS release build script, no security issues.
LLM auditresponse for make_artifacts.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build and packaging helper for pandoc (a document converter). It uses `cabal update` and `cabal build` to compile the Haskell project, strips the resulting binary, verifies static linking and feature support, and creates both a Debian package (via `fakeroot dpkg-deb`) and a compressed tarball. All operations are local and expected for building pandoc from source. No network requests beyond the standard Hackage package index (via `cabal update`), no obfuscated code, no attempts to exfiltrate data, and no execution of untrusted remote code. The script follows typical upstream packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard upstream build packaging script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/data/creole.lua, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/linux/make_artifacts.sh. Status: SAFE -- Standard upstream build packaging script, no malicious behavior.
LLM auditresponse for creole.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pandoc custom reader for Creole wiki markup. It defines an LPEG grammar to parse Creole syntax and convert it into pandoc's internal AST. There are no network requests, obfuscated code, file system operations, or any behavior outside the expected scope of a pandoc reader script. The code is entirely declarative grammar rules and local helper functions. The `trim` function uses a standard Lua pattern; the `ListItem` recursion is purely for parsing list nesting. All operations are confined to in-memory parsing of the input text.
</details>
<summary>Standard pandoc custom reader, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/pandoc-3.10/macos/uninstall-pandoc.pl, src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/data/creole.lua. Status: SAFE -- Standard pandoc custom reader, no security issues.
LLM auditresponse for uninstall-pandoc.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a macOS uninstall script for Pandoc. It uses `pkgutil` to list installed files and `sudo rm` to remove them after user confirmation. The script does not make network requests, decode obfuscated content, exfiltrate data, or modify files outside the expected package scope. The commands are standard for macOS package management and serve the stated purpose of uninstalling Pandoc. No malicious behavior is present.
</details>
<summary>Standard macOS uninstall script for Pandoc; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/pandoc.js, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/macos/uninstall-pandoc.pl. Status: SAFE -- Standard macOS uninstall script for Pandoc; no security issues.
LLM auditresponse for pandoc.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward JavaScript interface to a WebAssembly build of pandoc. It imports a WASI shim from a standard CDN (jsdelivr), sets up a virtual file system, and exports `query` and `convert` functions that call into the compiled pandoc.wasm module. The code follows normal packaging practices for a wasm-based tool and does not contain any exfiltration, backdoors, obfuscated commands, or other signs of a supply‑chain attack. The CDN import is a standard dependency practice, not a marker of malice.
</details>
<summary>
No evidence of malicious behavior; standard wasm interface.
</summary>
</security_assessment>

[7/10] Reviewing src/pandoc-3.10/man/manfilter.lua, src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/wasm/pandoc.js. Status: SAFE -- No evidence of malicious behavior; standard wasm interface.
LLM auditresponse for manfilter.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `manfilter.lua` is a pandoc Lua filter intended for processing man pages. It performs standard document transformations: capitalizing level-1 headers, converting tables to code blocks (with adjustments to grid table lines for mandoc compatibility), replacing links with their text content, and removing notes. There are no suspicious network requests, system modifications, obfuscated code, or any other indicators of supply chain attack. The script uses only the pandoc API and a standard `text` module for UTF-8-aware string operations. All behavior is consistent with its stated purpose of formatting man pages.
</details>
<summary>Standard pandoc filter, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/pandoc-3.10/wasm/index.js, src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/man/manfilter.lua. Status: SAFE -- Standard pandoc filter, no malicious content.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a client-side JavaScript application that provides a browser-based Pandoc document converter. It loads the pandoc WebAssembly module from local resources, imports the fflate library from the legitimate CDN `esm.sh` for zip handling, and lazily loads the Typst library from `jsdelivr` for PDF conversion. All external dependencies are version-pinned and sourced from well-known CDNs. The code performs expected frontend operations: file uploads, format conversions, and downloads – all within the browser sandbox. There is no evidence of obfuscation, data exfiltration, backdoors, or execution of untrusted code. The file is benign and consistent with standard web application packaging practices.
</details>
<summary>Legitimate web app frontend, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/pandoc-3.10/wasm/patches/lua.patch...
+ Reviewed src/pandoc-3.10/wasm/index.js. Status: SAFE -- Legitimate web app frontend, no malicious content.
LLM auditresponse for lua.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies Lua's I/O and OS libraries to conditionally stub out `tmpfile()`, `tmpnam()`, and `system()` when macros `LUA_STUB_TMPFILE`, `LUA_STUB_TMPNAM`, and `LUA_STUB_SYSTEM` are defined respectively. This is a standard technique to harden an embedded Lua interpreter by disabling functions that could create temporary files or execute shell commands — a reasonable security measure for a Pandoc binary that runs Lua filters. The patch is transparent, well‑structured, and contains no obfuscated code, network callbacks, data exfiltration, or any other indicators of a supply‑chain attack. It follows normal AUR patching practices and does not modify any unrelated system files or introduce unexpected behavior.
</details>
<summary>Legitimate hardening patch for Lua sandboxing.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pandoc-3.10/wasm/patches/lua.patch. Status: SAFE -- Legitimate hardening patch for Lua sandboxing.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pandoc-bin-3.10.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,103
  Completion Tokens: 9,422
  Total Tokens: 65,525
  Total Cost: $0.006745
  Execution Time: 88.77 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pandoc-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r33g2sde/pandoc-bin-3.10.tar.gz: [SKIPPED] Skipping binary file: pandoc-bin-3.10.tar.gz
