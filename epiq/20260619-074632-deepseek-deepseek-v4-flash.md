---
package: epiq
pkgver: 0.7.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: d994dc5b1b9c9f246976b9d0e797fab28a6b9f26
prompt_tokens: 186357
completion_tokens: 5241
total_tokens: 191598
cost: 0.01771551
execution_time: 34.37
files_reviewed: 8
files_skipped: 1
date: 2026-06-19T07:46:32Z
file_verdicts:
  - file: epiq-0.7.4.tgz
    status: skipped
    summary: "Skipping binary file: epiq-0.7.4.tgz"
  - file: PKGBUILD
    status: safe
    summary: Standard npm package build; no malicious indicators.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: src/package/dist/gui/index.html
    status: safe
    summary: Benign static HTML frontend for a web app.
  - file: src/package/dist/gui/main.js
    status: safe
    summary: Standard React app bundle, no malicious behavior detected.
  - file: src/package/package.json
    status: safe
    summary: No security issues; standard npm package definition.
  - file: src/package/dist/index.js
    status: safe
    summary: No evidence of malicious code; normal application behavior.
  - file: src/package/dist/mcp.js
    status: safe
    summary: Legitimate MCP server for epiq project management tool.
  - file: src/package/readme.md
    status: safe
    summary: Standard project README with no security concerns.
---

Cloning https://aur.archlinux.org/epiq.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_i83bht...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_i83bht
Analyzing epiq AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_i83bht) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a source array pointing to the official npm registry (`registry.npmjs.org`). There are no command substitutions, function calls, or executable code in the global/top-level scope. The `pkgver()` function is absent, so no code runs during `makepkg --printsrcinfo`. The `package()` function is present but will not be executed by the requested commands (`--nobuild --nodeps --noprepare` stops before `prepare()`/`build()`/`package()`). The source is a pinned tarball with a valid b2sums checksum. No malicious behaviors are present.
</details>
<summary>Safe at this stage; no global executable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe at this stage; no global executable code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, epiq-0.7.4.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed epiq-0.7.4.tgz. Status: SKIPPED -- Skipping binary file: epiq-0.7.4.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows the standard Node.js package guidelines for Arch Linux. The source is fetched from the official npm registry with a valid b2sum checksum, ensuring integrity. The `package()` function performs expected operations: installing the package via `npm install` into `$pkgdir`, fixing file ownership/permissions, removing npm-internal metadata (`_where` and underscore-prefixed keys) from `package.json`, and removing `man` entries to avoid conflicts. No suspicious network requests, obfuscated code, or system modifications outside the package directory are present. There is no evidence of exfiltration, backdoors, or supply-chain injection.
</details>
<summary>Standard npm package build; no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm package build; no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Decided to review 7 additional files: .nvchecker.toml, src/package/package.json, src/package/readme.md, src/package/dist/index.js, src/package/dist/mcp.js, src/package/dist/gui/index.html, src/package/dist/gui/main.js
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing .nvchecker.toml...
[0/7] Reviewing .nvchecker.toml, src/package/package.json...
[0/7] Reviewing .nvchecker.toml, src/package/package.json, src/package/dist/mcp.js...
[0/7] Reviewing .nvchecker.toml, src/package/package.json, src/package/dist/mcp.js, src/package/readme.md...
[0/7] Reviewing .nvchecker.toml, src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js...
[0/7] Reviewing .nvchecker.toml, src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js, src/package/dist/gui/index.html...
[0/7] Reviewing .nvchecker.toml, src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js, src/package/dist/gui/index.html, src/package/dist/gui/main.js...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a simple configuration file for the nvchecker tool, used to automatically check for new versions of the `epiq` package on the npm registry. It contains no executable code, no network requests outside of the expected npm registry, and no obfuscated or dangerous constructs. This is a standard and benign packaging helper file.
</details>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/7] Reviewing src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js, src/package/dist/gui/index.html, src/package/dist/gui/main.js...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for index.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard HTML file serving as the frontend for a web application. It loads a JavaScript module from `/main.js` in a typical single-page application pattern. No obfuscated code, no network requests or data exfiltration, no dangerous operations. The file is purely a static entry point and presents no security concerns.
</details>
<summary>Benign static HTML frontend for a web app.</summary>
</security_assessment>

[2/7] Reviewing src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js, src/package/dist/gui/main.js...
+ Reviewed src/package/dist/gui/index.html. Status: SAFE -- Benign static HTML frontend for a web app.
LLM auditresponse for main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.js` is a bundled JavaScript application for a kanban-style project management tool (likely the `epiq` package). It contains standard React, React Router, and application-specific code for managing boards, issues, comments, tags, and assignees. The application communicates with a backend via WebSocket (`ws://${window.location.host}/ws`), which is expected for real-time collaboration. No suspicious patterns (curl, wget, eval, base64, exec, etc.) were found in the provided content or flagged by the truncated file's suspicious-line scan. The code does not exfiltrate data, download or execute remote code, or contain obfuscated commands. All operations are consistent with the application's stated purpose of issue tracking and board management. There is no evidence of a supply-chain attack or malicious injection.
</details>
<summary>Standard React app bundle, no malicious behavior detected.</summary>
</security_assessment>

[3/7] Reviewing src/package/package.json, src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js...
+ Reviewed src/package/dist/gui/main.js. Status: SAFE -- Standard React app bundle, no malicious behavior detected.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` file for the epiq CLI issue tracker. It describes metadata, scripts, and dependencies. No evidence of malicious behavior was found: there are no obfuscated commands, no suspicious network requests, no unexpected system modifications, and no exfiltration of data. All scripts reference standard build tools (esbuild, tsc, vitest, etc.) and the package&apos;s own source files. Dependencies are well-known npm packages. The file follows normal packaging practices and does not contain any injected malicious code.
</details>
<summary>No security issues; standard npm package definition.</summary>
</security_assessment>

[4/7] Reviewing src/package/dist/mcp.js, src/package/readme.md, src/package/dist/index.js...
+ Reviewed src/package/package.json. Status: SAFE -- No security issues; standard npm package definition.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a heavily minified Node.js application (a terminal-based project management tool called "Epiq") that uses standard platform APIs and libraries. All detected behaviors are consistent with the stated purpose of the application:
- Network requests are limited to an update check against `registry.npmjs.org/epiq/latest` (standard version notification) and optional sponsor links to `github.com/sponsors/ljtn`.
- File system operations are confined to expected paths: `~/.epiq-global/`, `.epiq/` within the repository, and temporary editor files.
- The application spawns subprocesses for git operations, opening URLs, and launching text editors — all legitimate and documented.
- There is no use of `eval`, base64 decoding of commands, obfuscated payloads, data exfiltration, backdoors, or execution of code from unexpected remote hosts.
- Minification/obfuscation is normal for bundled JavaScript and does not hide malicious logic; a manual review of the source would be consistent with the above.

While the code is minified, making manual audit harder, every operation found matches the expected behavior of a git-backed issue tracker. No supply-chain attack indicators are present.
</details>
<summary>No evidence of malicious code; normal application behavior.</summary>
</security_assessment>

[5/7] Reviewing src/package/dist/mcp.js, src/package/readme.md...
+ Reviewed src/package/dist/index.js. Status: SAFE -- No evidence of malicious code; normal application behavior.
LLM auditresponse for mcp.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mcp.js` is a minified Node.js script that implements an MCP (Model Context Protocol) server for the `epiq` project management tool. It registers tools for managing issues, boards, swimlanes, comments, tags, and assignees, all of which interact with local git repositories and state files stored under `~/.epiq-global` and `.epiq` directories. The code uses standard libraries (`node:fs`, `node:path`, `node:child_process`, `ulid`, `zod`, `ws`, `react`, `ink`, `chalk`) and follows expected patterns for a CLI tool with a terminal UI and git-based synchronization.

No evidence of malicious behavior was found:
- No obfuscated or encoded commands (hex/base64/eval) that hide malicious intent.
- No unexpected network requests or downloads from external hosts. The only network-related code is a `coffee` command that opens a sponsorship URL via the system browser (using `open`/`xdg-open`), which is user-initiated and benign.
- No exfiltration of local data (e.g., `/etc/shadow`, SSH keys, environment variables) to remote hosts.
- No backdoors, reverse shells, or credential theft.
- File operations are limited to the tool's own state directories and the user's git repository, which is expected for a project management tool.
- The use of `shell: true` in the editor-launching function (`ld`) is a common pattern and not exploitable unless the user configures a malicious editor name themselves.

The minified/compiled nature of the file is standard for distributed JavaScript packages and does not indicate obfuscation of malicious code. The code is consistent with the stated purpose of the `epiq` package.
</details>
<summary>Legitimate MCP server for epiq project management tool.</summary>
</security_assessment>

[6/7] Reviewing src/package/readme.md...
+ Reviewed src/package/dist/mcp.js. Status: SAFE -- Legitimate MCP server for epiq project management tool.
LLM auditresponse for readme.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard project README in Markdown format. It describes the epiq package—a terminal-native issue tracker—and provides installation instructions, usage guides, and architectural notes. The content is purely informational and contains no executable code, obfuscated commands, suspicious network requests, or attempts to exfiltrate data. Code blocks present are example commands intended for the reader to copy and run manually (e.g., `npm install --global epiq`, `git init`). No evidence of malicious or dangerous behavior was found. This document poses no supply-chain security risk.
</details>
<summary>Standard project README with no security concerns.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/package/readme.md. Status: SAFE -- Standard project README with no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: epiq-0.7.4.tgz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 186,357
  Completion Tokens: 5,241
  Total Tokens: 191,598
  Total Cost: $0.017716
  Execution Time: 34.37 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-epiq.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3_i83bht/epiq-0.7.4.tgz: [SKIPPED] Skipping binary file: epiq-0.7.4.tgz
