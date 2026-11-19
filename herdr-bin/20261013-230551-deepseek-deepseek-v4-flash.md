---
package: herdr-bin
pkgver: 0.9.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 70505
completion_tokens: 4169
total_tokens: 74674
cost: 0.007174713
execution_time: 41.35
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:05:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious indicators.
  - file: herdr.bash
    status: safe
    summary: Standard bash completion script, no malicious content.
  - file: _herdr
    status: safe
    summary: Standard Zsh completion script; no malicious behavior.
  - file: herdr.fish
    status: safe
    summary: Standard fish completion script, no security concerns.
---

Materializing herdr-bin from local mirror...
Materialized herdr-bin
Analyzing herdr-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. No code in the global/top-level scope performs any network requests, file operations, command substitutions, or other actions that could be dangerous when sourced. All source URLs point to the upstream GitHub releases, and there is no obfuscated or suspicious content. Running `makepkg --printsrcinfo` will only read the metadata without executing any harmful operations.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, and source URLs (all pointing to the official GitHub releases of `herdr`). All sources have pinned SHA-256 checksums, ensuring integrity. No code is present in this file; it is purely descriptive metadata. There are no suspicious network requests, obfuscated content, or unexpected system modifications. The use of precompiled binaries is normal for `-bin` packages, and the checksums prevent tampering. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr, herdr.bash...
[1/5] Reviewing PKGBUILD, _herdr, herdr.bash...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the `herdr-bin` package. It downloads a prebuilt binary from the official GitHub releases page, with pinned SHA-256 checksums for both supported architectures and the included shell completion files. The `package()` function only copies the binary and completions into the package directory using `install` commands. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, base64, etc.), or unexpected file operations. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard binary PKGBUILD with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, _herdr, herdr.bash, herdr.fish...
[2/5] Reviewing _herdr, herdr.bash, herdr.fish...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious indicators.
LLM auditresponse for herdr.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Bash completion script for the `herdr` command-line tool. It consists entirely of nested `case` statements that define subcommands and options for tab-completion. There are no network requests, no obfuscated code, no dangerous commands (curl, wget, eval, base64, exec), and no file operations that deviate from normal completion behavior. The script only uses `compgen` (a Bash built-in) to generate completion candidates. No evidence of supply-chain compromise or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard bash completion script, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing _herdr, herdr.fish...
+ Reviewed herdr.bash. Status: SAFE -- Standard bash completion script, no malicious content.
LLM auditresponse for _herdr:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Zsh completion script for the `herdr` command. It defines argument completions using `_arguments`, `_describe`, and `_default` helpers, all of which are normal Zsh completion framework functions. The script enumerates subcommands and their options/arguments for the `herdr` tool — covering commands such as `agent`, `pane`, `session`, `plugin`, `update`, `status`, etc.  

There is no obfuscated code, no network requests (no `curl`/`wget`/`eval`/`base64`), no file system manipulation outside of path-completion lookups (`_files`), and no execution of user-controlled code. The final `if`/`else` block is the standard pattern for autoloaded Zsh completion functions to register themselves. The entire file acts purely as a completion definition and does not perform any runtime actions that would exfiltrate data, download binaries, or modify the system. No evidence of a supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>Standard Zsh completion script; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing herdr.fish...
+ Reviewed _herdr. Status: SAFE -- Standard Zsh completion script; no malicious behavior.
LLM auditresponse for herdr.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completion script for the `herdr` command. It consists entirely of static completion definitions (`complete` commands) and helper functions to determine which subcommand is being used. There is no executable code that performs network requests, downloads files, modifies system state, or reads sensitive data. All options and subcommands correspond to the stated functionality of the herdr project (a terminal multiplexer/workspace manager). The script is transparent, uses no obfuscation, and contains no unusual encoding or dangerous command invocations. It is a standard packaging artifact providing convenient tab-completions for end users.
</details>
<evidence>
</evidence>
<summary>
Standard fish completion script, no security concerns.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed herdr.fish. Status: SAFE -- Standard fish completion script, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 70,505
  Completion Tokens: 4,169
  Total Tokens: 74,674
  Total Cost: $0.007175
  Execution Time: 41.35 seconds

Final Status: SAFE


No issues found.
