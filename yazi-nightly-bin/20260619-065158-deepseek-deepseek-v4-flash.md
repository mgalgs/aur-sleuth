---
package: yazi-nightly-bin
pkgver: 26.5.6.20260619.ab8d634
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: af83c8ecbd0b8272d6c9200f7baf40324851f319
prompt_tokens: 55565
completion_tokens: 5450
total_tokens: 61015
cost: 0.00598185
execution_time: 43.27
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:51:58Z
file_verdicts:
  - file: yazi-20260619-x86_64.zip
    status: skipped
    summary: "Skipping binary file: yazi-20260619-x86_64.zip"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR nightly binary package; no malicious behavior detected.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish
    status: safe
    summary: Shell completion script with no security issues.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts
    status: safe
    summary: Static Fig autocomplete spec; no executable code or threats.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts
    status: safe
    summary: Standard Fig completion spec, no malicious content.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash
    status: safe
    summary: Standard bash completion script with no malicious behavior.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_ya
    status: safe
    summary: Standard Zsh completion script, no malicious behavior found.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish
    status: safe
    summary: Standard Fish completions script; no security concerns.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_yazi
    status: safe
    summary: Standard Zsh completion script, no security issues.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash
    status: safe
    summary: Standard bash completion script, no security issues.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1
    status: safe
    summary: Standard PowerShell completion script; no security issues.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1
    status: safe
    summary: Standard PowerShell completion script, no malicious activity.
---

Cloning https://aur.archlinux.org/yazi-nightly-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vj_6vnw0...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vj_6vnw0
Analyzing yazi-nightly-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vj_6vnw0) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only fetches a single source from the official GitHub releases (`https://github.com/sxyazi/yazi/releases/download/nightly/yazi-$CARCH-unknown-linux-gnu.zip`) and defines packaging functions. The top-level code computes a date string and sets variables — no dangerous commands. The `pkgver()` function runs the downloaded `yazi` binary to extract its version string, which is expected for a binary package that auto-detects its version. No obfuscation, unexpected network destinations, or code execution beyond the intended source download and binary invocation occur during the `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` steps. The SKIP checksum is standard for binary zips from a nightly release.
</details>
<summary>Standard AUR binary package; no malicious code during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR binary package; no malicious code during source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, yazi-20260619-x86_64.zip...
[1/2] Reviewing PKGBUILD...
! Reviewed yazi-20260619-x86_64.zip. Status: SKIPPED -- Skipping binary file: yazi-20260619-x86_64.zip
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a nightly binary release of the yazi file manager. It downloads a precompiled binary from the official GitHub releases (`https://github.com/sxyazi/yazi/releases/download/nightly/`), then installs the binaries (`ya`, `yazi`), license, README, and shell completions into their standard locations. There is no obfuscated code, no unexpected network destinations, no execution of arbitrary downloaded scripts, and no exfiltration of system data. The `sha256sums` field is set to `'SKIP'`, which is expected for a nightly release where the checksum would change each build and is not a sign of malice. All commands (`install`, `cd`, `awk`) are routine packaging operations. No aspect of this file deviates from typical AUR packaging practices or introduces supply-chain risk.
</details>
<summary>
Standard AUR nightly binary package; no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR nightly binary package; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1
src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1
src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash
src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish
src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts
src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash
src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish
src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts
src/yazi-x86_64-unknown-linux-gnu/completions/_ya
src/yazi-x86_64-unknown-linux-gnu/completions/_yazi
Decided to review 10 additional files: src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
LLM auditresponse for yazi.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completion script for the `yazi` command. It only defines argument completions for various flags (`--cwd-file`, `--chooser-file`, `--client-id`, etc.) using the `complete -c yazi` syntax. There are no executable commands, network requests, file operations, or obfuscated code. The content is entirely declarative and follows standard packaging practices for providing shell completions. No security issues are present.
</details>
<summary>Shell completion script with no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish. Status: SAFE -- Shell completion script with no security issues.
LLM auditresponse for ya.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ya.ts` is a static Fig autocomplete specification written in TypeScript. It defines command-line options, subcommands, and arguments for the `ya` CLI tool (Yazi). The content is entirely declarative data—no executable code, no network requests, no file system operations, no obfuscation, and no references to any external resources. It contains only string constants, nested object literals, and an export statement. There is no evidence of any malicious or unexpected behavior; it is a straightforward autocomplete configuration file.
</details>
<summary>Static Fig autocomplete spec; no executable code or threats.</summary>
</security_assessment>

[2/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts. Status: SAFE -- Static Fig autocomplete spec; no executable code or threats.
LLM auditresponse for yazi.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fig completion specification (`Fig.Spec`) for the `yazi` command-line tool. It defines available options (e.g., `--cwd-file`, `--chooser-file`, `--client-id`) and arguments. There are no executable commands, network requests, file operations outside the normal application scope, or any other suspicious patterns. The file is entirely declarative and harmless; it poses no security risk.
</details>
<summary>Standard Fig completion spec, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts. Status: SAFE -- Standard Fig completion spec, no malicious content.
LLM auditresponse for yazi.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard bash completion script for the `yazi` command. It defines tab-completion behavior for supported options (e.g., `--cwd-file`, `--chooser-file`, `--client-id`, etc.) and does not contain any network requests, file operations, obfuscated code, or other malicious activity. The only commands used are `compgen` and `complete`, which are normal shell built‑ins for implementing command‑line completion. There is no evidence of a supply‑chain attack or any deviation from standard packaging practices.
</details>
<summary>Standard bash completion script with no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash. Status: SAFE -- Standard bash completion script with no malicious behavior.
LLM auditresponse for _ya:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Zsh shell completion script for the `ya` command (part of the Yazi file manager). It contains only standard autocompletion definitions using zsh's `_arguments` and `_describe` builtins to provide tab-completion for subcommands (emit, pkg, pub, cache, env, help) and their options. There are no network requests, no file operations beyond reading completion state, no obfuscated or encoded code, no external commands executed, and no system modifications. The script simply registers completions for the upstream tool's CLI interface. This is a routine packaging artifact with no evidence of malicious behavior.
</details>
<summary>Standard Zsh completion script, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_ya. Status: SAFE -- Standard Zsh completion script, no malicious behavior found.
LLM auditresponse for ya.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completion script for the `ya` command, part of the `yazi` package. It defines completions using standard Fish builtins (`complete`, `argparse`, `commandline`). There are no network requests, obfuscated code, dangerous commands (`eval`, `curl`, `base64`, etc.), or unusual file operations. The script simply generates command-line completions for `ya` and its subcommands (`emit`, `emit-to`, `exec`, `pkg`, `pub`, `pub-to`, `sub`, `cache`, `env`, `help`). No malicious or suspicious behavior is present.
</details>
<summary>Standard Fish completions script; no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish. Status: SAFE -- Standard Fish completions script; no security concerns.
LLM auditresponse for _yazi:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Zsh completion script for the `yazi` command. It defines command-line argument completions using standard Zsh functions (`_arguments`, `_files`, `_default`, `_describe`). There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that deviate from normal completion script behavior. The script simply provides tab-completion for valid `yazi` options. This is a standard and expected file in a package distribution.
</details>
<summary>Standard Zsh completion script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_yazi. Status: SAFE -- Standard Zsh completion script, no security issues.
LLM auditresponse for ya.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Bash tab-completion script for the `ya` command-line tool. It defines a `_ya()` function that uses `compgen` to provide completions for various subcommands and options. The script performs no network operations, no file system modifications outside of standard shell completion mechanics, and contains no obfuscated code, encoded commands, or execution of external binaries. The only external commands used are the built-in `compgen` and `complete` functions. The content is consistent with auto-generated completion scripts produced by tools like `clap` or similar Rust argument parsers. There is no evidence of malicious behavior.
</details>
<summary>Standard bash completion script, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash. Status: SAFE -- Standard bash completion script, no security issues.
LLM auditresponse for _ya.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a PowerShell tab-completion script for the `ya` command (yazi&#x27;s CLI tool). It uses `Register-ArgumentCompleter` to provide autocomplete suggestions for `ya` subcommands and flags. The script contains only static completion definitions and performs no network requests, file operations, execution of external commands, or any other potentially dangerous actions. It is a standard, harmless helper script that improves the user experience in PowerShell.
</details>
<summary>Standard PowerShell completion script; no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1. Status: SAFE -- Standard PowerShell completion script; no security issues.
LLM auditresponse for _yazi.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_yazi.ps1` is a standard PowerShell argument completer for the `yazi` file manager. It defines a completion block that provides tab-completion for command-line options such as `--cwd-file`, `--chooser-file`, `--client-id`, etc. There are no network requests, no dangerous commands (e.g., `eval`, `curl`, `wget`, `base64`), no obfuscated or encoded code, and no file system modification outside of the completion mechanism itself. This is a typical packaging convenience script and poses no security risk.
</details>
<summary>Standard PowerShell completion script, no malicious activity.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1. Status: SAFE -- Standard PowerShell completion script, no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: yazi-20260619-x86_64.zip)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,565
  Completion Tokens: 5,450
  Total Tokens: 61,015
  Total Cost: $0.005982
  Execution Time: 43.27 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-yazi-nightly-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vj_6vnw0/yazi-20260619-x86_64.zip: [SKIPPED] Skipping binary file: yazi-20260619-x86_64.zip
