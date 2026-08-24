---
package: dsh-tui-bin
pkgver: 0.9.0
pkgrel: 1
result: safe
model: anthropic/claude-sonnet-4.6
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
triggered_by: dsh-tui-bin/20260823-194558-judge.json
prompt_tokens: 40678
completion_tokens: 4463
total_tokens: 45141
cost: 0.188979
execution_time: 75.14
files_reviewed: 8
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-24T09:57:38Z
file_verdicts:
  - file: dsh-tui-0.9.0.tgz
    status: skipped
    summary: "Skipping binary file: dsh-tui-0.9.0.tgz"
  - file: PKGBUILD
    status: safe
    summary: Standard npm AUR package; no malicious behavior detected.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js
    status: safe
    summary: Pure JS protocol spec module; no malicious behavior detected.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-channel.js
    status: safe
    summary: Standard protocol specification module with validation logic only.
  - file: src/package/dsh-ecosystem-spec/protocols/profile-definitions.js
    status: safe
    summary: Standard JS module with local imports; no malicious behavior found.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-contributions.js
    status: safe
    summary: Pure validation/schema JS module; no suspicious or malicious behavior.
  - file: src/package/lib/types/bootstrap/state.js
    status: safe
    summary: Three no-op stub functions; entirely benign JavaScript module.
  - file: src/package/lib/types/commands.js
    status: safe
    summary: Pure UI command-definition module; no malicious behavior detected.
  - file: src/package/bin/dsh-tui.js
    status: safe
    summary: Legitimate delegating launcher; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/dsh-tui-bin.git...
Cloned dsh-tui-bin
Analyzing dsh-tui-bin AUR package with anthropic/claude-sonnet-4.6
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard binary package fetching a tarball from the official npmjs.org registry. The `source` array contains a single HTTPS download from `registry.npmjs.org`, which is the legitimate, expected upstream source for an npm package. A sha256sum is provided and pinned to a specific value, which is better than SKIP.

There is no top-level code execution, no command substitution in global scope, no `pkgver()` function, and nothing that would execute during `makepkg --nobuild --nodeps --noprepare` beyond fetching and extracting the tarball. The `prepare()` and `package()` functions are out of scope for this gate and will be audited separately.
</details>
<evidence>
</evidence>
<summary>Standard npm tarball fetch from registry.npmjs.org; no malicious code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard npm tarball fetch from registry.npmjs.org; no malicious code detected.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, dsh-tui-0.9.0.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed dsh-tui-0.9.0.tgz. Status: SKIPPED -- Skipping binary file: dsh-tui-0.9.0.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for an npm-based AUR package. The source is fetched from the official npm registry (`registry.npmjs.org`) for the package's own upstream tarball, and a sha256 checksum is provided and pins that tarball.

The `prepare()` function runs `npm install --global` against the already-downloaded tarball using `--prefix` and `--cache` directories scoped entirely within `$srcdir`, which is the normal method for npm-based AUR packages. Note that `npm install` may still fetch transitive runtime dependencies from the npm registry at build time — those are not individually checksummed — but this is a widely accepted trade-off in AUR npm packaging, not evidence of malice.

The `package()` function performs only standard operations: copying the installed tree into `$pkgdir`, installing the license file, and normalizing directory permissions and ownership. There is no obfuscation, no exfiltration, no eval of encoded content, and no downloads from unexpected or unrelated hosts.
</details>
<evidence>
</evidence>
<summary>
Standard npm AUR package; no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm AUR package; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1247 files available for selection; offering the 50 highest-priority to the model. 953 lower-priority file(s) were not offered.
LLM response for file selection:
src/package/bin/dsh-tui.js
src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js
src/package/dsh-ecosystem-spec/protocols/tui-channel.js
src/package/dsh-ecosystem-spec/protocols/tui-contributions.js
src/package/dsh-ecosystem-spec/protocols/profile-definitions.js
src/package/lib/types/bootstrap/state.js
src/package/lib/types/commands.js
Decided to review 7 additional files: src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/dsh-ecosystem-spec/protocols/profile-definitions.js, src/package/lib/types/bootstrap/state.js, src/package/lib/types/commands.js
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/package/bin/dsh-tui.js...
[0/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js...
[0/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js...
LLM auditresponse for tui-channel-http.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript module defining constants and utility functions for a TUI channel HTTP protocol specification. It contains no network requests, no shell commands, no file system operations, no obfuscated code, and no use of dangerous APIs like `eval`, `exec`, `curl`, or `wget`. The code simply defines string constants for API versioning and path names, and provides two pure functions for creating and validating endpoint descriptor objects using standard JavaScript (`URL`, `Object.freeze`, type checks). This is entirely consistent with an upstream protocol specification library file.
</details>
<evidence>
</evidence>
<summary>Pure JS protocol spec module; no malicious behavior detected.</summary>
</security_assessment>

[0/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js...
[1/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js. Status: SAFE -- Pure JS protocol spec module; no malicious behavior detected.
LLM auditresponse for tui-channel.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript module defining a TUI channel protocol specification. It exports validation functions and constants for a capability protocol, with no network requests, file system operations, eval usage, obfuscated code, or any other suspicious behavior. The code is straightforward input validation logic (type checking, record validation, JSON value traversal) consistent with a protocol specification library in an application package.
</details>
<evidence>
</evidence>
<summary>Standard protocol specification module with validation logic only.</summary>
</security_assessment>

[1/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/dsh-ecosystem-spec/protocols/profile-definitions.js...
[2/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/dsh-ecosystem-spec/protocols/profile-definitions.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-channel.js. Status: SAFE -- Standard protocol specification module with validation logic only.
LLM auditresponse for profile-definitions.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript module defining protocol/profile structures for the `dsh-tui` package. It contains only standard ES module exports, pure data structures (frozen objects), and utility functions for validating and negotiating protocol feature support. There are no network requests, no shell commands, no dynamic code evaluation (`eval`, `Function`, etc.), no file system operations, and no encoded or obfuscated content. All imports reference local sibling files (`./tui-contributions.js`, `./tui-channel.js`), which is expected for an internal module. The logic is straightforward: it validates input objects and constructs frozen protocol definition records.
</details>
<evidence>
</evidence>
<summary>Standard JS module with local imports; no malicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/profile-definitions.js. Status: SAFE -- Standard JS module with local imports; no malicious behavior found.
[3/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/bootstrap/state.js...
LLM auditresponse for tui-contributions.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript module defining contribution types and validation logic for a TUI (text-based user interface) package. It contains purely declarative and validation-oriented code: it exports frozen objects representing API version/kind constants, validation functions for settings sections and scenes, and helper utilities for type-checking strings, records, and arrays.

There are no network requests, no shell command execution, no use of `eval`, `exec`, `spawn`, `fetch`, `XMLHttpRequest`, `require('child_process')`, or any other mechanism that could exfiltrate data or execute arbitrary code. All operations are internal data validation and object manipulation. The code is straightforward and consistent with upstream application source code for a TUI framework plugin/contribution system.
</details>
<evidence>
</evidence>
<summary>Pure validation/schema JS module; no suspicious or malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/bootstrap/state.js, src/package/lib/types/commands.js...
[4/7] Reviewing src/package/bin/dsh-tui.js, src/package/lib/types/bootstrap/state.js, src/package/lib/types/commands.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-contributions.js. Status: SAFE -- Pure validation/schema JS module; no suspicious or malicious behavior.
LLM auditresponse for state.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple JavaScript module exporting three no-op stub functions. It contains no network requests, no file system operations, no use of dangerous commands (eval, exec, curl, etc.), no obfuscated or encoded content, and no suspicious logic whatsoever. The file serves a straightforward purpose: providing empty stub implementations for telemetry functions that are intentionally disabled in the dsh-tui package.
</details>
<evidence>
</evidence>
<summary>
Three no-op stub functions; entirely benign JavaScript module.</summary>
</security_assessment>

[5/7] Reviewing src/package/bin/dsh-tui.js, src/package/lib/types/commands.js...
+ Reviewed src/package/lib/types/bootstrap/state.js. Status: SAFE -- Three no-op stub functions; entirely benign JavaScript module.
LLM auditresponse for commands.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward JavaScript module defining slash commands for a TUI application. It contains:

- A list of command name/description pairs (`LOCAL_COMMANDS`, `HIDDEN_COMMANDS`)
- Pure utility functions for parsing, filtering, and completing slash commands
- Localization helper logic using imported i18n utilities

There is no network activity, no use of `eval`, `exec`, `child_process`, `fetch`, `curl`, `wget`, or any form of dynamic code execution. There are no file system operations, no encoded/obfuscated strings, and no suspicious external references. The code is entirely concerned with UI command dispatch logic and is consistent with normal upstream application functionality for a TUI wrapper.
</details>
<evidence>
</evidence>
<summary>Pure UI command-definition module; no malicious behavior detected.</summary>
</security_assessment>

[6/7] Reviewing src/package/bin/dsh-tui.js...
+ Reviewed src/package/lib/types/commands.js. Status: SAFE -- Pure UI command-definition module; no malicious behavior detected.
LLM auditresponse for dsh-tui.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js delegating launcher script for the `dsh-tui` application. Its logic is transparent and straightforward:

1. **Role detection**: Uses `realpathSync` to determine whether it is running as a globally installed copy or as the profile-internal copy, then behaves accordingly.
2. **Bootstrap**: On first run, calls `dsh plugin --profile dsh-tui add @deepseek-harness-tui/dsh-tui@<version>` to install the package from npm — the package's own upstream registry. This is expected bootstrapping behavior, not a supply-chain concern.
3. **Delegation**: Reads the profile copy's `bin/dsh-tui.js` from `$DSH_HOME/profiles/dsh-tui/node_modules/...` and then spawns it with `process.execPath` (the current Node binary). No external or unexpected host involved.
4. **Full launch**: Ultimately runs `dsh --profile dsh-tui [args]` with environment variables set for the application's own use.

There is no data exfiltration, no obfuscated or encoded commands, no downloads from unexpected hosts, no access to sensitive system files (e.g. `/etc/shadow`, SSH keys), and no use of `eval`. All file reads are from the application's own state directories (`~/.dsh-tui/`, `~/.dsh/`). The HTML entity encoding (`&apos;`, `&amp;`, etc.) is an artifact of XML embedding of the file content, not obfuscation in the file itself. The `DSH_HOME` environment override is a normal application convention.
</details>
<evidence>
</evidence>
<summary>Legitimate delegating launcher; no malicious behavior detected.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/package/bin/dsh-tui.js. Status: SAFE -- Legitimate delegating launcher; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: dsh-tui-0.9.0.tgz)

API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 40,678
  Completion Tokens: 4,463
  Total Tokens: 45,141
  Total Cost: $0.188979
  Execution Time: 75.14 seconds

Final Status: SAFE


No issues found.


Audit Skips:

dsh-tui-0.9.0.tgz: [SKIPPED] Skipping binary file: dsh-tui-0.9.0.tgz
