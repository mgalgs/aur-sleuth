---
package: onorca-bin
pkgver: 1.4.188
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 94755
completion_tokens: 5179
total_tokens: 99934
cost: 0.00557729578
execution_time: 101.63
files_reviewed: 12
files_skipped: 0
files_unauditable: 124
unpinned_sources: 0
date: 2026-08-23T03:41:45Z
file_verdicts:
  - file: LICENSE-1.4.188
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard electron-bin PKGBUILD with pinned checksums; no malicious behavior.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/args.js
    status: safe
    summary: Normal argument parser; no malicious code found.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js
    status: safe
    summary: Simple formatting utility; no security issues.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js
    status: safe
    summary: No malicious behavior; standard data transformation code.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js
    status: safe
    summary: Simple utility function, no malicious behavior found.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js
    status: safe
    summary: Benign module exporting browser handler groups.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js
    status: safe
    summary: Static data file, no malicious code.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js
    status: safe
    summary: Clean command classification utility with no malicious indicators.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js
    status: safe
    summary: Benign JavaScript utility function, no threats.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js
    status: safe
    summary: Normal command suggestion logic, no security issues.
  - file: src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js
    status: safe
    summary: Safe formatting module, no malicious behavior.
---

Cloning https://aur.archlinux.org/onorca-bin.git...
Cloned onorca-bin
Analyzing onorca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no malicious code in its global/top-level scope or in a `pkgver()` function (which is absent). All top-level commands are variable assignments and source array definitions pointing to standard upstream GitHub URLs (raw.githubusercontent.com for the LICENSE file and GitHub release assets for the architecture-specific `.deb` binaries). No command substitution, backtick execution, or other actively executed code exists outside of `package()`. Since `makepkg --nobuild --noprepare` does not execute `prepare()`, `build()`, or `package()`, the only operations performed are fetching the specified sources (downloading the listed files) and sourcing the PKGBUILD, both of which are safe. The provided SHA256 checksums are non-SKIP, though the safety of this gate does not depend on them.
</details>
<summary>
No malicious code runs during source fetching or PKGBUILD sourcing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code runs during source fetching or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE-1.4.188...
LLM auditresponse for LICENSE-1.4.188:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions. This is a static license file without any security concerns.
</details>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE-1.4.188. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for a prebuilt binary Electron application. It fetches the upstream `.deb` archive and license from the official GitHub releases (`stablyai/orca`) with pinned checksums (`sha256sums_x86_64`, `sha256sums_aarch64`, `sha256sums` for the license). No unexpected network requests, obfuscated code, or data exfiltration is present.

The `package()` function extracts the archive, sets the setuid bit on the Electron sandbox helper (`chrome-sandbox`) — a normal and expected operation for Electron-based packages that need to create isolated sandboxes without user namespaces. It also creates a symlink and installs the license. All operations are confined to `$pkgdir` and `$srcdir`. There is no execution of untrusted code, no `curl|bash`, no encoded payloads, and no manipulation of files outside the package’s own scope.
</details>
<summary>Standard electron-bin PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard electron-bin PKGBUILD with pinned checksums; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 124 compiled/archived file(s) cannot be audited as text and were not reviewed (onorca-bin-1.4.188-x86_64.deb, src/control.tar.xz, src/data.tar.xz and 121 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2767 files available for selection; offering the 50 highest-priority to the model. 2076 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787456466-89U2vCfyjd7VE3WPhMaT', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious code. The listing is all JavaScript files under src/opt/Orca/resources/app.asar.unpacked/out/cli/. These are part of the prebuilt application bundle (the .asar.unpacked suggests they are extracted from an Electron app). Since this is a -bin package, the PKGBUILD likely just extracts the archive and copies files. The install hook (.install) and PKGBUILD are already reviewed. The remaining files are all from the upstream bundle. The instruction says: "DEPRIORITIZE vendored upstream bundle content... When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents."\n\nGiven that the PKGBUILD and install hook are already reviewed, the only remaining files are the prebuilt application files. The AUR maintainer did not modify these; they are from the upstream release. The probability of a supply chain attack being injected into these specific files by the AUR maintainer is near zero because they are not touched. However, the upstream could have malicious code, but that\'s not the scope of an AUR audit (which focuses on the packaging side). The instruction says: "Files the maintainer wrote or modified always outrank files that came from the artifact." So we should not waste slots on these.\n\nBut wait, the reviewer instructions say: "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." The listing only contains these bundle files. The only files that could be malicious are these... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787456466-89U2vCfyjd7VE3WPhMaT', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious code. The listing is all JavaScript files under src/opt/Orca/resources/app.asar.unpacked/out/cli/. These are part of the prebuilt application bundle (the .asar.unpacked suggests they are extracted from an Electron app). Since this is a -bin package, the PKGBUILD likely just extracts the archive and copies files. The install hook (.install) and PKGBUILD are already reviewed. The remaining files are all from the upstream bundle. The instruction says: "DEPRIORITIZE vendored upstream bundle content... When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents."\n\nGiven that the PKGBUILD and install hook are already reviewed, the only remaining files are the prebuilt application files. The AUR maintainer did not modify these; they are from the upstream release. The probability of a supply chain attack being injected into these specific files by the AUR maintainer is near zero because they are not touched. However, the upstream could have malicious code, but that\'s not the scope of an AUR audit (which focuses on the packaging side). The instruction says: "Files the maintainer wrote or modified always outrank files that came from the artifact." So we should not waste slots on these.\n\nBut wait, the reviewer instructions say: "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." The listing only contains these bundle files. The only files that could be malicious are these... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/args.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js...
[0/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js...
[0/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/args.js...
LLM auditresponse for args.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard argument parser module for a CLI tool. It defines flag sets, parsing logic, and validation functions. No network requests, obfuscation, system commands, or data exfiltration are present. The code is straightforward and consistent with normal command-line parsing utilities.
</details>
<summary>Normal argument parser; no malicious code found.</summary>
</security_assessment>

[0/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/args.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js...
[1/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/args.js. Status: SAFE -- Normal argument parser; no malicious code found.
LLM auditresponse for artifact-format.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple JavaScript module that exports three formatting functions: `formatArtifactList`, `formatArtifactListPage`, and `formatArtifactShared`. It takes artifact data and formats it into human-readable strings. There is no obfuscation, no network requests, no file system operations, no system modifications, no use of dangerous commands (eval, base64, curl, wget, etc.), and no exfiltration of data. The code is entirely benign and performs only the stated formatting functionality. No security issues are present.
</details>
<summary>
Simple formatting utility; no security issues.
</summary>
</security_assessment>

[1/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js...
[2/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/artifact-format.js. Status: SAFE -- Simple formatting utility; no security issues.
LLM auditresponse for agent-context.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript module that builds and formats an agent context schema from command specifications. It performs no network requests, file system operations, system modifications, or obfuscated code execution. The functions `buildAgentContext` and `formatAgentContextSummary` only transform and sort data structures. There is no evidence of malicious behavior such as data exfiltration, backdoors, or code injection. The code is consistent with the expected functionality of a CLI tool.
</details>
<summary>No malicious behavior; standard data transformation code.</summary>
</security_assessment>

[3/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/agent-context.js. Status: SAFE -- No malicious behavior; standard data transformation code.
[3/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js...
LLM auditresponse for base64-payload-byte-count.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single exported function `formatBase64PayloadByteCount` that calculates the byte length of a base64-encoded string. It uses `Buffer.byteLength` with the `'base64'` encoding and falls back to a manual estimation. There is no obfuscation, network requests, file operations, system modifications, or any other suspicious behavior. The code is a standard utility function and does not deviate from normal packaging practices.
</details>
<summary>Simple utility function, no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/base64-payload-byte-count.js. Status: SAFE -- Simple utility function, no malicious behavior found.
[4/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js...
LLM auditresponse for browser-handler-groups.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript module that exports an array of browser command handler groups. Each group defines a set of command keys and a `load` function that dynamically imports a local handler module (e.g., `./handlers/browser-nav.js`). There are no network requests, obfuscation, dangerous system commands, or any behavior that deviates from normal application code. The file is a straightforward organizational structure for a CLI tool's browser automation commands and poses no security risk.
</details>
<summary>Benign module exporting browser handler groups.</summary>
</security_assessment>

[4/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js...
[5/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-handler-groups.js. Status: SAFE -- Benign module exporting browser handler groups.
LLM auditresponse for bundled-skill-guides.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a generated JavaScript bundle containing skill guide markdown strings and an exported array of guide objects. It is purely static data with no executable logic, no network requests, no file operations, no obfuscated code, no system commands, and no dynamic evaluation. The content consists entirely of documentation strings (markdown for CLI usage, computer-use, linear integration, etc.) and a structured array. There is no evidence of malicious behavior such as exfiltration, backdoors, or injection of attacker-controlled code. The file is consistent with a normal bundled-skill-guides data file generated by an upstream build script.
</details>
<summary>Static data file, no malicious code.</summary>
</security_assessment>

[5/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js...
[6/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/bundled-skill-guides.js. Status: SAFE -- Static data file, no malicious code.
LLM auditresponse for codex-command-classification.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript utility module that classifies CLI commands (specifically for the `codex` and `claude` executables) as either interactive or non-interactive based on the subcommand and flags provided. It exports two functions: `shouldUseRendererBackedCodexTerminal` and `shouldUseRendererBackedInteractiveTerminal`. The code consists of constant sets of subcommands and flags, a tokenizer, a helper to strip shell launch prefixes, and logic to detect if a command is non-interactive. There are no network requests, no file system operations, no obfuscated code, no use of `eval` or `base64`, and no system modifications. The file performs only command-line parsing and classification. This is entirely benign and typical of a utility that helps determine whether to use a terminal emulator with a renderer process. No supply-chain attack indicators are present.
</details>
<summary>
Clean command classification utility with no malicious indicators.</summary>
</security_assessment>

[6/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js...
[7/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/codex-command-classification.js. Status: SAFE -- Clean command classification utility with no malicious indicators.
LLM auditresponse for command-spec.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a simple JavaScript utility function that returns an array of path strings from a spec object. There is no evidence of obfuscation, network requests, file operations, or any other behavior that could be considered malicious. The code is straightforward and serves a legitimate purpose.
</details>
<summary>Benign JavaScript utility function, no threats.</summary>
</security_assessment>

[8/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js, src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/command-spec.js. Status: SAFE -- Benign JavaScript utility function, no threats.
LLM auditresponse for command-suggestion.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements command and flag suggestion logic for the `orca` CLI tool, using Levenshtein distance to provide typo recovery. It contains no network requests, file operations, system modifications, obfuscated code, or any other behavior that deviates from standard application functionality. The code is well-commented, follows normal patterns, and serves the legitimate purpose of helping users recover from mistyped commands. There is no evidence of a supply-chain attack or malicious intent.
</details>
<summary>
Normal command suggestion logic, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/command-suggestion.js. Status: SAFE -- Normal command suggestion logic, no security issues.
LLM auditresponse for browser-format.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `browser-format.js` is a standard Node.js module that exports several formatting functions for browser tab, profile, snapshot, and screenshot data. It imports a single dependency (`./base64-payload-byte-count`) using `require` and performs no network requests, no system commands, no file operations, and no code execution via `eval` or similar constructs. All functions only construct and return formatted strings from input objects. The HTML escaping seen in the prompt (e.g., `&quot;`) is not part of the actual file content; it is a presentation artifact. There is no obfuscation, no suspicious imports, and no deviation from ordinary application code. No evidence of supply-chain attack or malicious intent.
</details>
<summary>Safe formatting module, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/Orca/resources/app.asar.unpacked/out/cli/browser-format.js. Status: SAFE -- Safe formatting module, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 94,755
  Completion Tokens: 5,179
  Total Tokens: 99,934
  Total Cost: $0.005577
  Execution Time: 101.63 seconds

Final Status: SAFE


No issues found.
