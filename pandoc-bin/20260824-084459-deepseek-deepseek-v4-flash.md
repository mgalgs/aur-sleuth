---
package: pandoc-bin
pkgver: 3.10.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 62339
completion_tokens: 9194
total_tokens: 71533
cost: 0.0046337298
execution_time: 174.81
files_reviewed: 11
files_skipped: 1
files_unauditable: 183
unpinned_sources: 0
date: 2026-08-24T08:44:58Z
file_verdicts:
  - file: pandoc-bin-3.10.2.tar.gz
    status: skipped
    summary: "Skipping binary file: pandoc-bin-3.10.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: A clean, standard PKGBUILD with no security concerns.
  - file: src/pandoc-3.10.2/data/init.lua
    status: safe
    summary: Comment-only file, no malicious content.
  - file: src/pandoc-3.10.2/Makefile
    status: safe
    summary: Standard upstream Makefile, no security issues.
  - file: src/pandoc-3.10.2/linux/make_artifacts.sh
    status: safe
    summary: Standard upstream build script; no malicious behavior.
  - file: src/pandoc-3.10.2/macos/make_macos_release.sh
    status: safe
    summary: Standard upstream build script, no malicious code.
  - file: src/pandoc-3.10.2/data/creole.lua
    status: safe
    summary: Standard pandoc reader; no malicious code detected.
  - file: src/pandoc-3.10.2/wasm/index.js
    status: safe
    summary: Standard web frontend for WASM pandoc; no malicious code found.
  - file: src/pandoc-3.10.2/macos/uninstall-pandoc.pl
    status: safe
    summary: Upstream macOS uninstall script; no malicious behavior.
  - file: src/pandoc-3.10.2/wasm/patches/conduit-extra.patch
    status: safe
    summary: Standard conditional compilation patch for WASM portability.
  - file: src/pandoc-3.10.2/wasm/pandoc.js
    status: safe
    summary: Legitimate WebAssembly glue code for pandoc.
  - file: src/pandoc-3.10.2/man/manfilter.lua
    status: safe
    summary: Standard pandoc filter, no security concerns.
---

Cloning https://aur.archlinux.org/pandoc-bin.git...
Cloned pandoc-bin
Analyzing pandoc-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `pandoc-bin` is a straightforward binary package that downloads releases from the official pandoc GitHub repository (`github.com/jgm/pandoc`). All source URLs point to the project's own releases, and checksums are provided and pinned for each architecture. There is no top-level command substitution, no `pkgver()` function that executes code, and no other code that runs during the sourcing of the PKGBUILD itself. The `prepare()`, `build()`, and `package()` functions are defined but are not executed by the specified commands (`--noprepare` and `--nobuild`). There are no suspicious network requests, obfuscated code, or any behavior that would exfiltrate data or download untrusted payloads. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with safe, verified sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with safe, verified sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pandoc-bin-3.10.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed pandoc-bin-3.10.2.tar.gz. Status: SKIPPED -- Skipping binary file: pandoc-bin-3.10.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for `pandoc-bin`. It downloads official binary releases and a source tarball from GitHub (the project's own upstream). All source URLs are pinned to a specific version and have fixed SHA256 checksums. The `package()` function installs files to standard locations and generates bash completions using the binary itself. There are no suspicious commands, no network requests beyond the declared source URLs, no obfuscated code, and no unexpected file operations. The file follows typical AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>A clean, standard PKGBUILD with no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- A clean, standard PKGBUILD with no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 183 compiled/archived file(s) cannot be audited as text and were not reviewed (pandoc-3.10.2-linux-amd64.tar.gz, src/pandoc-3.10.2/data/templates/default.slideous, src/pandoc-3.10.2/data/templates/default.slidy and 180 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2493 files available for selection; offering the 50 highest-priority to the model. 2191 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787560995-EI4ypFDdNIbEXE5E64y2', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious or dangerous code. Already reviewed: PKGBUILD and the tarball. So we focus on files inside src/pandoc-3.10.2/.\n\nThe listing includes many files: Makefile, Lua scripts, shell scripts, Perl script, patch files, configuration files, and many XML templates (docx, odt, pptx). Review priority: build/install-time executable scripts, patches, configs that can execute or fetch remote content.\n\n- `src/pandoc-3.10.2/Makefile`: This is a build file. It can execute arbitrary commands. Likely important to review. It\'s the top-level Makefile? Note there are 4 copies with same filename across directories, but we are told to review just this one. Yes, it\'s from the listing.\n\n- `src/pandoc-3.10.2/data/creole.lua` and `src/pandoc-3.10.2/data/init.lua`: Lua scripts used by pandoc during runtime? They could be executed during build? Probably not at build time, but they are part of the data files that get installed and run when pandoc is used. They could contain malicious code that runs when pandoc processes documents. However, they are part of upstream source, not modified by AUR maintainer. But the AUR package extracts the tarball as-is, so the maintainer didn\'t touch them. But the question is about finding malicious code in the package. If upstream code is malicious, it\'s still a supply chain risk. However, the typical attack vector for AUR packages is modified PKGBUILD or install scripts, not the extracted source (since it\'s a binary package, the source might not even be compiled). But pandoc-bin is a binary package, meaning the PKGBUILD just downloads a prebuilt binary and installs it. So the source code in `src/`... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787560995-EI4ypFDdNIbEXE5E64y2', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious or dangerous code. Already reviewed: PKGBUILD and the tarball. So we focus on files inside src/pandoc-3.10.2/.\n\nThe listing includes many files: Makefile, Lua scripts, shell scripts, Perl script, patch files, configuration files, and many XML templates (docx, odt, pptx). Review priority: build/install-time executable scripts, patches, configs that can execute or fetch remote content.\n\n- `src/pandoc-3.10.2/Makefile`: This is a build file. It can execute arbitrary commands. Likely important to review. It\'s the top-level Makefile? Note there are 4 copies with same filename across directories, but we are told to review just this one. Yes, it\'s from the listing.\n\n- `src/pandoc-3.10.2/data/creole.lua` and `src/pandoc-3.10.2/data/init.lua`: Lua scripts used by pandoc during runtime? They could be executed during build? Probably not at build time, but they are part of the data files that get installed and run when pandoc is used. They could contain malicious code that runs when pandoc processes documents. However, they are part of upstream source, not modified by AUR maintainer. But the AUR package extracts the tarball as-is, so the maintainer didn\'t touch them. But the question is about finding malicious code in the package. If upstream code is malicious, it\'s still a supply chain risk. However, the typical attack vector for AUR packages is modified PKGBUILD or install scripts, not the extracted source (since it\'s a binary package, the source might not even be compiled). But pandoc-bin is a binary package, meaning the PKGBUILD just downloads a prebuilt binary and installs it. So the source code in `src/`... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/data/init.lua, src/pandoc-3.10.2/linux/make_artifacts.sh, src/pandoc-3.10.2/macos/make_macos_release.sh, src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/index.js, src/pandoc-3.10.2/wasm/pandoc.js, src/pandoc-3.10.2/wasm/patches/conduit-extra.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pandoc-3.10.2/Makefile...
[0/10] Reviewing src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua...
[0/10] Reviewing src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/data/init.lua...
LLM auditresponse for init.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `init.lua` contains only Lua comments describing its purpose. There is no executable code, no network requests, no system modifications, no obfuscation, and no other suspicious content. It is a standard, empty configuration file for pandoc Lua filters.
</details>
<evidence></evidence>
<summary>Comment-only file, no malicious content.</summary>
</security_assessment>

[0/10] Reviewing src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/data/init.lua, src/pandoc-3.10.2/linux/make_artifacts.sh...
[1/10] Reviewing src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/linux/make_artifacts.sh...
+ Reviewed src/pandoc-3.10.2/data/init.lua. Status: SAFE -- Comment-only file, no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard upstream build file for the Pandoc project. It contains conventional targets for building, testing, benchmarking, generating documentation, and performing maintenance tasks. All external network interactions (git clones from GitHub repositories for docx validation tools, npm install for epub validation, curl to GitHub API for download stats) are legitimate and related to the project's development workflow. There is no obfuscated code, no suspicious data exfiltration, no unexpected file operations, and no evidence of supply-chain attack. The file is safe.
</details>
<evidence></evidence>
<summary>Standard upstream Makefile, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/pandoc-3.10.2/Makefile, src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/linux/make_artifacts.sh, src/pandoc-3.10.2/macos/make_macos_release.sh...
[2/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/linux/make_artifacts.sh, src/pandoc-3.10.2/macos/make_macos_release.sh...
+ Reviewed src/pandoc-3.10.2/Makefile. Status: SAFE -- Standard upstream Makefile, no security issues.
LLM auditresponse for make_artifacts.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream build script for pandoc (from the pandoc source tarball, not an AUR package itself). It performs typical build and packaging operations: updating the cabal package database, building the executable with cabal, stripping the binary, creating a .deb package and a tarball with man pages and symlinks. All commands are expected in this context (cabal, ghc, cp, strip, dpkg-deb, tar, gzip, etc.). There is no obfuscation, no unexpected network requests (cabal update connects to Hackage, which is the expected source for Haskell packages), and no execution of downloaded code. The script does not exfiltrate data, install backdoors, or deviate from its stated purpose of building pandoc artifacts.
</details>
<evidence></evidence>
<summary>Standard upstream build script; no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/linux/make_artifacts.sh, src/pandoc-3.10.2/macos/make_macos_release.sh, src/pandoc-3.10.2/macos/uninstall-pandoc.pl...
[3/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/macos/make_macos_release.sh, src/pandoc-3.10.2/macos/uninstall-pandoc.pl...
+ Reviewed src/pandoc-3.10.2/linux/make_artifacts.sh. Status: SAFE -- Standard upstream build script; no malicious behavior.
LLM auditresponse for make_macos_release.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build-and-package script for the pandoc project on macOS. It performs typical operations: determining the architecture, building with cabal (which includes `cabal update` to fetch dependencies from Hackage, a normal package manager action), creating directory structures, copying the binary and man pages, stripping the binary, generating a license HTML file, and preparing distribution metadata files. There is no obfuscation, no unexpected network requests, no attempts to exfiltrate data, no backdoors, and no tampering with system files outside the build context. All commands serve the legitimate purpose of building and packaging pandoc for distribution on macOS.
</details>
<evidence></evidence>
<summary>Standard upstream build script, no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/macos/make_macos_release.sh, src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua...
[4/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua...
+ Reviewed src/pandoc-3.10.2/macos/make_macos_release.sh. Status: SAFE -- Standard upstream build script, no malicious code.
LLM auditresponse for creole.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua-based custom reader for Creole wiki markup used by pandoc. It defines an LPeg grammar to parse Creole syntax and produce pandoc document elements. The code performs no network requests, file operations, system modifications, or execution of external commands. There is no obfuscation, encoded payloads, or unexpected behavior. It is a standard, benign parsing script consistent with pandoc's plugin architecture.
</details>
<evidence>
</evidence>
<summary>Standard pandoc reader; no malicious code detected.</summary>
</security_assessment>

[4/10] Reviewing src/pandoc-3.10.2/data/creole.lua, src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/index.js...
[5/10] Reviewing src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/index.js...
+ Reviewed src/pandoc-3.10.2/data/creole.lua. Status: SAFE -- Standard pandoc reader; no malicious code detected.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a frontend JavaScript application for a WebAssembly-based version of pandoc, designed to run in a browser. It imports compression utilities from a standard CDN (esm.sh), loads its own pandoc WASM module dynamically, and lazily loads a Typst library from jsdelivr for PDF conversion. The code performs file conversions entirely client-side using the pandoc WASM engine. All external resources are fetched from well-known CDN endpoints (esm.sh, cdn.jsdelivr.net) or from the package's own bundled sources (local `./pandoc.js`). There is no obfuscation, base64 decoding, eval usage, or any attempt to exfiltrate user data or system files. The network requests are all for legitimate library dependencies or for the application's own data (e.g., fetching example zip archives and CSL style files). No code is executed from untrusted or unexpected sources after loading. The file follows standard patterns for a client-side web application and does not contain any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard web frontend for WASM pandoc; no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/index.js, src/pandoc-3.10.2/wasm/pandoc.js...
[6/10] Reviewing src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10.2/wasm/index.js. Status: SAFE -- Standard web frontend for WASM pandoc; no malicious code found.
LLM auditresponse for uninstall-pandoc.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream macOS uninstall script bundled with Pandoc. It uses `pkgutil` to locate and remove files installed by the Pandoc package on macOS. The script prompts the user for confirmation before deleting files, and then runs `sudo rm` on the listed files and `sudo pkgutil --forget` to clean up the package receipt. There is no network activity, no execution of fetched code, no obfuscation, and no exfiltration of sensitive data. The only potential risk is command injection via crafted volume names under `/Volumes`, but in practice that requires an attacker to already have privileged access to create such volumes, making it an implausible supply-chain attack vector. The script performs exactly the uninstallation tasks it advertises and is consistent with standard macOS package uninstallation practices.
</details>
<evidence></evidence>
<summary>Upstream macOS uninstall script; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/pandoc-3.10.2/macos/uninstall-pandoc.pl, src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/pandoc.js, src/pandoc-3.10.2/wasm/patches/conduit-extra.patch...
[7/10] Reviewing src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/pandoc.js, src/pandoc-3.10.2/wasm/patches/conduit-extra.patch...
+ Reviewed src/pandoc-3.10.2/macos/uninstall-pandoc.pl. Status: SAFE -- Upstream macOS uninstall script; no malicious behavior.
LLM auditresponse for conduit-extra.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file for the `conduit-extra` Haskell library's cabal configuration. It adds conditional compilation guards (`!arch(wasm32)`) to exclude network-related modules (`Data.Conduit.Network`, `Data.Conduit.Network.UDP`, `Data.Conduit.Network.Unix`) and their dependencies when building for the WebAssembly (wasm32) target. This is a standard, transparent portability fix — WASM environments typically lack full POSIX networking, so conditionally disabling those modules is expected. The patch contains no executable code, no obfuscation, no network requests, and no file system manipulations beyond the patch itself. It is entirely benign.
</details>
<evidence>
</evidence>
<summary>Standard conditional compilation patch for WASM portability.</summary>
</security_assessment>

[8/10] Reviewing src/pandoc-3.10.2/man/manfilter.lua, src/pandoc-3.10.2/wasm/pandoc.js...
+ Reviewed src/pandoc-3.10.2/wasm/patches/conduit-extra.patch. Status: SAFE -- Standard conditional compilation patch for WASM portability.
LLM auditresponse for pandoc.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the JavaScript WASI glue for pandoc's WebAssembly build. It imports a standard WASI shim from a CDN and sets up a virtual filesystem to pass input/output to the pandoc wasm binary. All operations are confined to the browser's WebAssembly sandbox. No obfuscated code, no external network requests beyond the initial dependency import and the fetch of the pandoc.wasm module itself, and no system-level file modifications or data exfiltration. The code performs exactly the functionality expected for converting documents via pandoc in a browser environment. No evidence of a supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Legitimate WebAssembly glue code for pandoc.</summary>
</security_assessment>

[9/10] Reviewing src/pandoc-3.10.2/man/manfilter.lua...
+ Reviewed src/pandoc-3.10.2/wasm/pandoc.js. Status: SAFE -- Legitimate WebAssembly glue code for pandoc.
LLM auditresponse for manfilter.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pandoc Lua filter intended for man page generation. It performs normal document transformations: capitalizing level-1 headers, converting tables to plain code blocks (for mandoc compatibility), replacing links with their text content, and removing notes/footnotes. There are no network requests, file system modifications, obfuscated code, or any behavior outside the scope of pandoc's document processing. The code is straightforward and follows typical pandoc filter patterns.
</details>
<evidence>
</evidence>
<summary>Standard pandoc filter, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pandoc-3.10.2/man/manfilter.lua. Status: SAFE -- Standard pandoc filter, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pandoc-bin-3.10.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 62,339
  Completion Tokens: 9,194
  Total Tokens: 71,533
  Total Cost: $0.004634
  Execution Time: 174.81 seconds

Final Status: SAFE


No issues found.


Audit Skips:

pandoc-bin-3.10.2.tar.gz: [SKIPPED] Skipping binary file: pandoc-bin-3.10.2.tar.gz
