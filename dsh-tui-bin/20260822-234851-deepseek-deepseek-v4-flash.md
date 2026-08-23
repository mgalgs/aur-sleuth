---
package: dsh-tui-bin
pkgver: 0.8.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 32960
completion_tokens: 6080
total_tokens: 39040
cost: 0.00258357120
execution_time: 69.39
files_reviewed: 7
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-22T23:48:51Z
file_verdicts:
  - file: dsh-tui-0.8.8.tgz
    status: skipped
    summary: "Skipping binary file: dsh-tui-0.8.8.tgz"
  - file: PKGBUILD
    status: safe
    summary: Clean, standard AUR PKGBUILD with pinned checksum and no malicious behavior.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js
    status: safe
    summary: Clean utility module with no security concerns.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-channel.js
    status: safe
    summary: Clean validation module, no malicious code found.
  - file: src/package/dsh-ecosystem-spec/protocols/tui-contributions.js
    status: safe
    summary: Legitimate validation code; no malicious behavior detected.
  - file: src/package/lib/types/commands.js
    status: safe
    summary: Safe UI command definitions; no security issues.
  - file: src/package/lib/types/bootstrap/state.js
    status: safe
    summary: Empty stub functions with no harmful behavior.
  - file: src/package/bin/dsh-tui.js
    status: safe
    summary: Legitimate launcher with self-installation; no malicious behavior found.
---

Cloning https://aur.archlinux.org/dsh-tui-bin.git...
Cloned dsh-tui-bin
Analyzing dsh-tui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a single source tarball fetched from the official npm registry (`registry.npmjs.org`) over HTTPS, with a pinned SHA256 checksum. No top-level command substitutions, `pkgver()` function, or any other code that executes during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` is present. The only scope executed outside of `prepare()`/`build()`/`package()` is static variable assignments. There is no evidence of malicious behavior that would be triggered by fetching the sources or sourcing the PKGBUILD.
</details>
<summary>No malicious code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, dsh-tui-0.8.8.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed dsh-tui-0.8.8.tgz. Status: SKIPPED -- Skipping binary file: dsh-tui-0.8.8.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an npm-based binary package. The tarball is downloaded from the official npm registry (`registry.npmjs.org`) with a pinned version and a fixed SHA-256 checksum, ensuring integrity. The `prepare()` function runs `npm install --global` with reasonable flags (`--omit=dev`, `--omit=peer`, `--no-audit`, `--no-fund`) and the `package()` function copies files into `$pkgdir` and installs the license. There are no suspicious network requests, obfuscated commands, or file operations outside the expected scope. The use of npm is normal for this type of package; while npm lifecycle scripts can theoretically introduce risk, that is an upstream concern and not a supply-chain attack injected into the PKGBUILD itself.
</details>
<summary>Clean, standard AUR PKGBUILD with pinned checksum and no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard AUR PKGBUILD with pinned checksum and no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 1211 files available for selection; offering the 50 highest-priority to the model. 917 lower-priority file(s) were not offered.
LLM response for file selection:
src/package/bin/dsh-tui.js
src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js
src/package/dsh-ecosystem-spec/protocols/tui-channel.js
src/package/dsh-ecosystem-spec/protocols/tui-contributions.js
src/package/lib/types/commands.js
src/package/lib/types/bootstrap/state.js
Decided to review 6 additional files: src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/commands.js, src/package/lib/types/bootstrap/state.js
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing src/package/bin/dsh-tui.js...
[0/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js...
[0/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js...
LLM auditresponse for tui-channel-http.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tui-channel-http.js` is a straightforward JavaScript module that defines constants and utility functions for constructing and validating TUI (Terminal User Interface) channel endpoint descriptors. It performs basic input validation, normalizes URL origins, and returns a frozen descriptor object. No network requests, file operations, obfuscation, or dangerous commands (eval, base64, curl, etc.) are present. The code is entirely within the expected scope of the application's own functionality and does not exhibit any indicators of a supply-chain attack or malicious behavior.
</details>
<summary>
Clean utility module with no security concerns.</summary>
</security_assessment>

[0/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js...
[1/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-channel-http.js. Status: SAFE -- Clean utility module with no security concerns.
LLM auditresponse for tui-channel.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tui-channel.js` is a standard JavaScript module that defines validation functions for a TUI (Terminal User Interface) channel protocol. It imports `defineCapabilityProtocol` from the `@dsh-std/connection` package, which is a normal dependency. The code consists of constants, validation functions for various channel operations (open, subscribe, invoke, close), and helper functions like `exactRecord`, `featureList`, `positiveInteger`, etc. There are no network requests, no obfuscated or encoded commands, no use of dangerous functions like `eval`, `curl`, `base64`, or `wget`, and no file system or system modifications. The logic is purely about validating the structure and types of data objects, which is standard for a protocol implementation. There is no evidence of malicious or injected code; the file serves its intended purpose of ensuring data integrity for the TUI channel protocol.
</details>
<summary>Clean validation module, no malicious code found.</summary>
</security_assessment>

[1/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-channel.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/commands.js...
[2/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/commands.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-channel.js. Status: SAFE -- Clean validation module, no malicious code found.
LLM auditresponse for tui-contributions.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain JavaScript module exporting validation functions for extension contributions (SettingsSection, Scene). It performs schema validation (required fields, types, patterns) and freezes objects. There are no network requests, no execution of fetched code, no obfuscated strings, no use of dangerous functions like `eval` or `base64` decoding, and no attempts to access or exfiltrate local data. All operations are confined to validating and freezing plain objects. The code follows a typical pattern for a plugin/extension catalog system and contains no indicators of malicious supply-chain injection.
</details>
<summary>
Legitimate validation code; no malicious behavior detected.</summary>
</security_assessment>

[2/6] Reviewing src/package/bin/dsh-tui.js, src/package/dsh-ecosystem-spec/protocols/tui-contributions.js, src/package/lib/types/commands.js, src/package/lib/types/bootstrap/state.js...
[3/6] Reviewing src/package/bin/dsh-tui.js, src/package/lib/types/commands.js, src/package/lib/types/bootstrap/state.js...
+ Reviewed src/package/dsh-ecosystem-spec/protocols/tui-contributions.js. Status: SAFE -- Legitimate validation code; no malicious behavior detected.
LLM auditresponse for commands.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript module that defines a list of slash commands and helper functions for the TUI's command autocompletion and dispatch system. It contains no network requests, no file system operations, no obfuscated code, no encoded strings, and no dynamic evaluation (`eval`, `Function`, etc.). All operations are purely in-memory string manipulation and array lookups (name matching, filtering, completion). The content is consistent with the stated purpose of providing command metadata and parsing logic for a terminal UI. No supply-chain attack or malicious behavior is present.
</details>
<summary>Safe UI command definitions; no security issues.</summary>
</security_assessment>

[4/6] Reviewing src/package/bin/dsh-tui.js, src/package/lib/types/bootstrap/state.js...
+ Reviewed src/package/lib/types/commands.js. Status: SAFE -- Safe UI command definitions; no security issues.
LLM auditresponse for state.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `state.js` contains three empty function definitions (`flushInteractionTime`, `updateLastInteractionTime`, `markScrollActivity`), each explicitly documented as no-op stubs for telemetry that dsh-tui does not implement. There is no executable code beyond the function declarations, no network access, no file system manipulation, and no obfuscation. The file serves only to satisfy imports from a ported Ink UI library without activating any telemetry.
</details>
<summary>
Empty stub functions with no harmful behavior.</summary>
</security_assessment>

[5/6] Reviewing src/package/bin/dsh-tui.js...
+ Reviewed src/package/lib/types/bootstrap/state.js. Status: SAFE -- Empty stub functions with no harmful behavior.
LLM auditresponse for dsh-tui.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js launcher script for the `dsh-tui` application, part of the `@deepseek-harness-tui/dsh-tui` package. It follows a dual-role design: either acting as a thin shell (global install) that delegates to a profile copy, or running the full startup logic (profile copy). The code is well-structured and does not contain any malicious behavior.

The script performs standard operations:
- Checks for required CLI tools (`dsh`, `pnpm`) and provides installation instructions if missing.
- Self-installs the package into a profile directory via `dsh plugin --profile dsh-tui add`, which is expected for plugin-based tools.
- Delegates execution to the profile copy or spawns `dsh --profile dsh-tui` with the user's arguments.
- Reads/writes only application-specific files under `~/.dsh` or `~/.dsh-tui` (e.g., `package.json` for version checking, `resume.txt` for session restoration).
- Handles environment variables and platform differences (Windows vs Unix) with proper escaping.

There is no obfuscated code, no network requests to unknown hosts, no exfiltration of sensitive data, and no backdoors. The self-installation logic uses the package manager (`pnpm`) with a fixed version, which is a legitimate pattern for plugin systems. All operations are confined to the application's own scope and standard packaging practices.
</details>
<summary>Legitimate launcher with self-installation; no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/package/bin/dsh-tui.js. Status: SAFE -- Legitimate launcher with self-installation; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: dsh-tui-0.8.8.tgz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 32,960
  Completion Tokens: 6,080
  Total Tokens: 39,040
  Total Cost: $0.002584
  Execution Time: 69.39 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_dro2r_o/dsh-tui-0.8.8.tgz: [SKIPPED] Skipping binary file: dsh-tui-0.8.8.tgz
