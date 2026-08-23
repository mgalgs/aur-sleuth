---
package: yazi-nightly-bin
pkgver: 26.5.6.20260619.ab8d634
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 55565
completion_tokens: 7269
total_tokens: 62834
cost: 0.00630927
execution_time: 223.73
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:07:30Z
file_verdicts:
  - file: yazi-20260619-x86_64.zip
    status: skipped
    summary: "Skipping binary file: yazi-20260619-x86_64.zip"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR nightly binary package, no malicious behavior detected.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts
    status: safe
    summary: Static completion spec; no malicious code present.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish
    status: safe
    summary: Fish completions file, no malicious content.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash
    status: safe
    summary: Standard bash completion script, no security issues.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1
    status: safe
    summary: Standard PowerShell completion script; no security concerns.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1
    status: safe
    summary: Standard PowerShell argument completer, no malicious code.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_yazi
    status: safe
    summary: Standard zsh completion script; no security issues found.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/_ya
    status: safe
    summary: Standard zsh completion script, no malicious content.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts
    status: safe
    summary: Static completion spec; no executable or dangerous code.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash
    status: safe
    summary: Standard bash completion script, no suspicious behavior.
  - file: src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish
    status: safe
    summary: Standard fish completion script; no malicious content.
---

Cloning https://aur.archlinux.org/yazi-nightly-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-joy42a2p...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-joy42a2p
Analyzing yazi-nightly-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-joy42a2p) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is well-formed and contains no code that executes malicious actions when sourced and during source fetching and `pkgver()`. The top-level scope only runs `date -u +%Y%m%d` to generate a date string — a harmless command. The source array downloads a binary zip from the official GitHub releases of the yazi project over HTTPS, which is legitimate. The `pkgver()` function runs `./yazi --version` from the downloaded archive — this is standard practice for binary packages and not suspicious. No obfuscation, network exfiltration, or unexpected command execution occurs at this stage. The `prepare()`, `build()`, and `package()` functions are not executed, so their content is out of scope.
</details>
<summary>Safe PKGBUILD with no immediate execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe PKGBUILD with no immediate execution risks.[/]
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
This PKGBUILD follows standard AUR packaging practices for a nightly binary package. It downloads pre-built binaries directly from the official GitHub releases (sxyazi/yazi) using HTTPS. The `sha256sums` are set to `SKIP`, which is expected for nightly/unstable releases where checksums change frequently. The `pkgver()` function extracts the version from the binary itself, which is a common technique for `-bin` packages. The `package()` function installs binaries, license, documentation, and shell completions into standard locations. No obfuscated code, suspicious network requests, eval, or unusual file operations are present. The package does not attempt to exfiltrate data, download arbitrary code, or modify system files outside its scope.
</details>
<summary>Standard AUR nightly binary package, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR nightly binary package, no malicious behavior detected.
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
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya...
[0/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
LLM auditresponse for yazi.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `yazi.ts` is a Fig completion specification for the `yazi` command-line tool. It defines command-line options and arguments in a static TypeScript object. There is no executable logic, no network requests, no file modifications, no obfuscated code, and no commands like `eval`, `curl`, `wget`, or `base64`. The content is purely declarative and poses no security risk. It follows standard practices for Fig completion specs.
</details>
<summary>Static completion spec; no malicious code present.</summary>
</security_assessment>

[1/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.ts. Status: SAFE -- Static completion spec; no malicious code present.
LLM auditresponse for yazi.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Fish shell completions file for the `yazi` terminal file manager. It defines tab-completion rules for command-line options such as `--cwd-file`, `--chooser-file`, `--client-id`, `--clear-cache`, `--debug`, and version/help flags. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from normal packaging. The file is purely declarative and poses no security risk.
</details>
<summary>Fish completions file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.fish. Status: SAFE -- Fish completions file, no malicious content.
LLM auditresponse for yazi.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Bash completion script for the `yazi` command. It defines a completion function `_yazi` that provides tab-completion for command-line options and arguments. The script uses only standard shell constructs (`compgen`, `case` statements) and does not perform any network requests, execute external commands beyond bash builtins, or contain obfuscated code. It does not deviate from normal packaging practices for shell completions. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Standard bash completion script, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/yazi.bash. Status: SAFE -- Standard bash completion script, no security issues.
LLM auditresponse for _yazi.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PowerShell argument completer for the `yazi` command. It registers a native argument completer that returns tab completion suggestions for yazi&#39;s command-line flags (e.g., `--cwd-file`, `--chooser-file`, `--debug`, `--help`, etc.). The code is entirely self-contained and operates within the standard PowerShell completion infrastructure. It does not make any network requests, execute external commands, decode obfuscated data, or perform any file operations beyond reading the command line context. There is no evidence of malicious or dangerous behavior; it is a routine packaging supplement to improve user experience.
</details>
<summary>Standard PowerShell completion script; no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1, src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_yazi.ps1. Status: SAFE -- Standard PowerShell completion script; no security concerns.
LLM auditresponse for _ya.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This PowerShell script is a standard auto-generated argument completer for the `ya` command-line tool. It uses `Register-ArgumentCompleter` with a `switch` statement to provide tab-completions for subcommands and options. There are no network requests, file operations, encoded/obfuscated commands, or any code that executes external programs. The script purely returns completion results. It is consistent with legitimate CLI helper scripts shipped by upstream projects (e.g., those generated by clap-completions). No supply-chain attack indicators are present.
</details>
<summary>Standard PowerShell argument completer, no malicious code.</summary>
</security_assessment>

[5/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya, src/yazi-x86_64-unknown-linux-gnu/completions/_yazi...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_ya.ps1. Status: SAFE -- Standard PowerShell argument completer, no malicious code.
LLM auditresponse for _yazi:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard zsh completion script (`_yazi`) for the `yazi` terminal file manager. It defines argument completions using `_arguments`, `_files`, `_describe`, and related zsh completion builtins. There are no network requests, obfuscated code, unusual system modifications, or any behavior deviating from normal packaging practices. The script simply enables tab-completion for the `yazi` binary's options and entry arguments.
</details>
<summary>Standard zsh completion script; no security issues found.</summary>
</security_assessment>

[6/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish, src/yazi-x86_64-unknown-linux-gnu/completions/_ya...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_yazi. Status: SAFE -- Standard zsh completion script; no security issues found.
LLM auditresponse for _ya:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard zsh completion script for the `ya` command, auto-generated by a tool (likely `clap` or similar). It defines subcommands, options, and argument completions using the `_arguments` and `_describe` zsh builtins. There is no obfuscated code, no network requests, no file operations, no execution of external commands outside of the completion framework, and no behavior that deviates from normal packaging practices. The final conditional block (`if [ &quot;$funcstack[1]&quot; = &quot;_ya&quot; ]`) is a typical pattern for loading zsh completions. No security concerns are present.
</details>
<summary>Standard zsh completion script, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/_ya. Status: SAFE -- Standard zsh completion script, no malicious content.
LLM auditresponse for ya.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static Fig autocompletion specification written in TypeScript. It contains only a JSON-like object hierarchy defining subcommands, options, and arguments for the CLI tool "ya". There are no executable statements, no network operations, no file system modifications, no obfuscated code, and no commands that could be exploited. The content is purely declarative and serves a legitimate purpose for shell autocompletion. No security issues are present.
</details>
<summary>Static completion spec; no executable or dangerous code.</summary>
</security_assessment>

[8/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash, src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.ts. Status: SAFE -- Static completion spec; no executable or dangerous code.
LLM auditresponse for ya.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a bash tab-completion script for the `ya` CLI tool. It defines a `_ya()` function that uses a state-machine pattern to match subcommands (e.g. `cache`, `emit`, `pkg`) and their options, then populates `COMPREPLY` for tab completion. There are no network operations, file writes, `eval`, `base64`, obfuscation, or any commands that execute external code beyond `compgen` (which is a standard bash built-in for generating completions). The `complete` command at the end registers the function for the `ya` executable. This is entirely routine and expected for a command-line tool with subcommands; there is no evidence of malicious or unusual behavior. The content appears to be generated by a Rust argument parser (likely `clap`) and is consistent with normal packaging.
</details>
<summary>Standard bash completion script, no suspicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.bash. Status: SAFE -- Standard bash completion script, no suspicious behavior.
LLM auditresponse for ya.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
The `ya.fish` file is a fish shell completion script for the `ya` command, which is part of the yazi file manager. It defines auto-completions for various subcommands (`emit`, `emit-to`, `exec`, `pkg`, `pub`, `pub-to`, `sub`, `cache`, `env`, `help`) and their options using standard fish shell built-in functions (`complete`, `argparse`, `commandline`).

There are no network requests, file operations outside of standard shell completion logic, obfuscated or encoded code, `eval`, or execution of external resources. The script purely provides command-line suggestions and does not modify system state, exfiltrate data, or execute any commands beyond fish's own completion machinery. It is consistent with expected packaging conventions for shell completions.
</details>
<summary>Standard fish completion script; no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/yazi-x86_64-unknown-linux-gnu/completions/ya.fish. Status: SAFE -- Standard fish completion script; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: yazi-20260619-x86_64.zip)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,565
  Completion Tokens: 7,269
  Total Tokens: 62,834
  Total Cost: $0.006309
  Execution Time: 223.73 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-yazi-nightly-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-joy42a2p/yazi-20260619-x86_64.zip: [SKIPPED] Skipping binary file: yazi-20260619-x86_64.zip
