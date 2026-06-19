---
package: alwide
pkgver: 1.0.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 64316
completion_tokens: 8392
total_tokens: 72708
cost: 0.00729900
execution_time: 51.22
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T06:36:10Z
file_verdicts:
  - file: alwide.install
    status: safe
    summary: Standard install script with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a tagged Rust app; no malicious code.
  - file: src/Alwide/alwide.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: src/Alwide/PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no malicious indicators.
  - file: src/Alwide/examples/lua-query.lua
    status: safe
    summary: Legitimate Neovim treesitter query module, no malicious content.
  - file: src/Alwide/examples/main.py
    status: safe
    summary: No security issues found in the provided Python file.
  - file: src/Alwide/install.sh
    status: safe
    summary: Benign install script from upstream GitHub releases
  - file: src/Alwide/Makefile
    status: safe
    summary: Standard build Makefile; no malicious content found.
  - file: src/Alwide/src/advanced/lsp/lsp_client.c
    status: safe
    summary: Standard LSP client implementation, no malicious code.
  - file: src/Alwide/src/advanced/tree-sitter/tree_manager.c
    status: safe
    summary: No evidence of malicious code; standard tree-sitter integration.
---

Cloning https://aur.archlinux.org/alwide.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-83qj71sv...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-83qj71sv
Analyzing alwide AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-83qj71sv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a source from the official GitHub repository of the project (https://github.com/arnauda-gh/Alwide.git) pinned to a specific tag. All executable code is confined to the `prepare()`, `build()`, and `package()` functions, which are **not** executed during the narrow gate (`--noprepare` stops `prepare()`, and `--nobuild` stops `build()` and `package()`). The global scope contains only variable assignments and a static `source` array; no command substitution, function calls, or other runtime execution occurs during PKGBUILD sourcing or source downloading. There is no `pkgver()` function. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` does not trigger any malicious activity.
</details>
<summary>No global code execution; source from official repo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No global code execution; source from official repo.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, alwide.install...
LLM auditresponse for alwide.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `PKGBUILD` install script that only prints informational messages to the user during package installation, upgrade, and removal. No network requests, file modifications, obfuscated code, or dangerous commands are present. The placeholder `#HOME#` is printed as-is and not executed. There are no signs of malicious behavior.
</details>
<summary>Standard install script with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed alwide.install. Status: SAFE -- Standard install script with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for building a Rust-based application from a tagged Git release. It sources from the upstream GitHub repository with a pinned tag and checksum (the checksum corresponds to the tarball generated from that tag). The `prepare()` function runs `git submodule update --init --recursive --depth 1` — this fetches submodules declared in the upstream repository, which is normal for projects using Git submodules and does not introduce external arbitrary code. Build and install steps use `make` with standard flags, then rename the binary and install documentation/license files. No obfuscation, unexpected network requests, dangerous commands (eval, curl, wget, base64), or exfiltration attempts are present. The only potential supply-chain risk (submodule content) is inherent to the upstream project and not injected by this packaging script. The AUR maintainer is not introducing any additional malicious behavior.
</details>
<summary>Standard PKGBUILD for a tagged Rust app; no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a tagged Rust app; no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 206 files available for selection; offering the 50 highest-priority to the model. 153 lower-priority file(s) were not offered.
LLM response for file selection:
src/Alwide/Makefile
src/Alwide/PKGBUILD
src/Alwide/alwide.desktop
src/Alwide/install.sh
.nvchecker.toml
src/Alwide/examples/lua-query.lua
src/Alwide/examples/main.py
src/Alwide/src/advanced/lsp/lsp_client.c
src/Alwide/src/advanced/lsp/lsp_code_action.c
src/Alwide/src/advanced/tree-sitter/tree_manager.c
! Note: the model selected 1 path(s) not present in the package; these do not exist and were not reviewed: src/Alwide/src/advanced/lsp/lsp_code_action.c
Decided to review 9 additional files: src/Alwide/Makefile, src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/install.sh, .nvchecker.toml, src/Alwide/examples/lua-query.lua, src/Alwide/examples/main.py, src/Alwide/src/advanced/lsp/lsp_client.c, src/Alwide/src/advanced/tree-sitter/tree_manager.c
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/Alwide/PKGBUILD...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, .nvchecker.toml...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, .nvchecker.toml, src/Alwide/examples/main.py...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, .nvchecker.toml, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c...
[0/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/alwide.desktop, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, .nvchecker.toml, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
LLM auditresponse for alwide.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file (`alwide.desktop`). It contains no executable code, no network requests, no obfuscation, and no system modifications. It only declares metadata such as the application name, executable (`al`), icon, and categories. There are no signs of malicious behavior or supply-chain attack indicators.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, .nvchecker.toml, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/alwide.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for `nvchecker`, a tool that checks for new releases on GitHub. It specifies the upstream repository (`arnauda-gh/Alwide`) and uses `use_latest_release` with a version prefix `v`. This is a standard, non-executable configuration file. No obfuscation, network requests unrelated to the package, or any malicious behavior are present. It aligns with normal packaging practices for tracking upstream releases.
</details>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing src/Alwide/PKGBUILD, src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It sources from the project's own GitHub repository, uses `git submodule update --init --recursive` to fetch project submodules (expected for many Rust/C projects), and runs the upstream build system (`make release`, `make install`). No obfuscated code, no unexpected network requests to unknown hosts, no execution of fetched scripts, no exfiltration, no backdoors, and no system modifications beyond installing the package to `$pkgdir`. The SKIP checksum is normal for VCS sources. There are no red flags indicating a supply-chain attack.
</details>
<summary>Standard VCS PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/9] Reviewing src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/lua-query.lua, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no malicious indicators.
LLM auditresponse for lua-query.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of Neovim's built-in treesitter query module (`lua-query.lua`). It implements standard query parsing, caching, predicate/directive handling, and user-facing functions for editing and linting queries. All file operations (reading query `.scm` files from runtime paths) are typical for Neovim's treesitter integration. There are no network requests, no obfuscated or encoded commands, no attempts to exfiltrate data, and no execution of untrusted code. The code uses standard Neovim APIs and follows the project's coding conventions. No evidence of malicious or supply-chain attack behavior is present.
</details>
<summary>Legitimate Neovim treesitter query module, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/examples/main.py, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/examples/lua-query.lua. Status: SAFE -- Legitimate Neovim treesitter query module, no malicious content.
LLM auditresponse for main.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.py` contains simple Python code that defines a list, appends a string, prints output, and attempts an out-of-range index assignment. There are no network requests, obfuscated commands, file operations, or any signs of malicious intent. The code is consistent with ordinary programming examples and does not pose a security risk.
</details>
<summary>No security issues found in the provided Python file.</summary>
</security_assessment>

[5/9] Reviewing src/Alwide/Makefile, src/Alwide/install.sh, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/examples/main.py. Status: SAFE -- No security issues found in the provided Python file.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream install script for the Alwide application. It downloads prebuilt binaries and assets from the official GitHub releases (`arnauda-gh/Alwide`). The script performs standard operations: checking dependencies, detecting architecture, fetching release metadata via the GitHub API, downloading and extracting archives, and placing files into the user&#39;s `$HOME/.local/bin` and `$HOME/.config/alwide`. No obfuscation, encoded commands, or unexpected network destinations are present. The lack of checksum verification is a hygiene concern but not evidence of malice—this is typical for standalone install scripts that fetch from mutable releases. The script does not alter system files, execute arbitrary code from external sources, or exfiltrate data. It behaves exactly as a legitimate third-party install script would.
</details>
<summary>Benign install script from upstream GitHub releases</summary>
</security_assessment>

[6/9] Reviewing src/Alwide/Makefile, src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/install.sh. Status: SAFE -- Benign install script from upstream GitHub releases
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build system for a terminal-based editor (alwide) using Clang, ncursesw, tree-sitter, and Rust grammar libraries. All build steps are routine: compiling C sources, building Rust crates with `cargo build --release`, generating tree-sitter parsers, and installing binary and data files.  

There is no evidence of malicious behavior:  
- No network downloads (curl/wget) or encoded commands.  
- No exfiltration of local data or modification of files outside the project scope.  
- The use of `$(shell ...)` at parse time to write mode and flag tracking files is a legitimate (if uncommon) technique to trigger rebuilds on configuration changes—it does not pull or execute untrusted content.  
- The `%.rlib` rule builds Rust crates from local source directories; this is expected for bundled grammars.  

All operations serve the package’s stated purpose. No injected code or supply-chain attack indicators are present.  
</details>
<summary>Standard build Makefile; no malicious content found.</summary>
</security_assessment>

[7/9] Reviewing src/Alwide/src/advanced/tree-sitter/tree_manager.c, src/Alwide/src/advanced/lsp/lsp_client.c...
+ Reviewed src/Alwide/Makefile. Status: SAFE -- Standard build Makefile; no malicious content found.
LLM auditresponse for lsp_client.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `lsp_client.c` is a standard implementation of a Language Server Protocol (LSP) client in C. It communicates with an LSP server via pipes and forks a child process to run the server. There is no obfuscated code, no hidden network requests to unexpected hosts, no base64 decoding, and no attempt to exfiltrate data or install backdoors. The use of `execl("/bin/sh", ...)` to run the LSP server is a potential command injection vulnerability if the `command_args` parameter is untrusted, but this is a security flaw in the application code, not evidence of a supply-chain attack. The code performs only operations related to its stated purpose (starting an LSP server, sending/receiving JSON-RPC packets, and handling language server features). No malicious or suspicious behavior was found.
</details>
<summary>Standard LSP client implementation, no malicious code.</summary>
</security_assessment>

[8/9] Reviewing src/Alwide/src/advanced/tree-sitter/tree_manager.c...
+ Reviewed src/Alwide/src/advanced/lsp/lsp_client.c. Status: SAFE -- Standard LSP client implementation, no malicious code.
LLM auditresponse for tree_manager.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tree_manager.c` is a standard C implementation for integrating tree-sitter parsing and syntax highlighting. It loads language-specific tree-sitter grammars, theme files, and query files from local disk paths derived from a JSON configuration. All operations (parsing, regex map management, cursor-based reading) are confined to the application&#x27;s own data structures and files. There are no network requests, no encoded/obfuscated commands, no execution of external code (beyond the tree-sitter library itself), and no attempts to exfiltrate data or modify system files. The code follows expected patterns for a text editor/IDE component.

The only notable code-quality issue is the unchecked `realloc` in `addParserToParserList` and `addRegexPatternToRegexMap`, which could cause memory corruption if allocation fails. However, this is a programming bug, not a supply-chain attack or deliberately malicious behavior. The instructions distinguish between imperfect packaging and genuinely malicious actions, so this does not warrant an UNSAFE decision.
</details>
<summary>No evidence of malicious code; standard tree-sitter integration.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/Alwide/src/advanced/tree-sitter/tree_manager.c. Status: SAFE -- No evidence of malicious code; standard tree-sitter integration.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,316
  Completion Tokens: 8,392
  Total Tokens: 72,708
  Total Cost: $0.007299
  Execution Time: 51.22 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-alwide.txt
Final Status: SAFE


No issues found.
