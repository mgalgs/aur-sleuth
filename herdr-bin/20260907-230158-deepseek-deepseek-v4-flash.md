---
package: herdr-bin
pkgver: 0.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 69739
completion_tokens: 2264
total_tokens: 72003
cost: 0.006580501802
execution_time: 65.59
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T23:01:58Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for pinned prebuilt binary from official upstream; no malicious behavior.
  - file: herdr.fish
    status: safe
    summary: Standard Fish completion script, no malicious content.
  - file: _herdr
    status: safe
    summary: Standard completion script, no malicious code.
  - file: herdr.bash
    status: safe
    summary: Standard bash completion script, no malicious behavior.
---

Materializing herdr-bin from local mirror...
Materialized herdr-bin
Analyzing herdr-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, arch, source array, sha256sums, etc.) and a single function definition (`package()`). There are no executable statements (command substitutions, backticks, eval, or similar) in the global/top-level scope. All URLs and checksums are quoted strings; they are never executed during sourcing. The `package()` function's body (which uses `install`) is defined but will not be invoked by `makepkg --printsrcinfo`. Therefore, sourcing this file poses no risk at this step.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file for an AUR package. It contains only declarative data: package name, description, version, URL, architecture, license, dependencies, source URLs, and checksums. All source URLs point to the official GitHub releases of the `herdr` project, which is consistent with the package's stated purpose. Checksums are provided for all sources (none are `SKIP`). There are no executable commands, no obfuscation, no unexpected network destinations, and no evidence of malicious intent. The file is a standard, well-formed metadata file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr, herdr.bash...
[1/5] Reviewing PKGBUILD, _herdr, herdr.bash...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the `herdr` binary from the project's official GitHub releases URL, pins concrete SHA-256 checksums for the binary and completion files, and installs them into the correct locations under `$pkgdir`. There are no suspicious network requests, no obfuscated code, no execution of downloaded scripts, and no modifications outside the package's own files.

The file contains only routine `install` commands for the binary and shell completions. The checksums are concrete rather than `SKIP`, which is good hygiene. No evidence of injected malicious behavior or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD for pinned prebuilt binary from official upstream; no malicious behavior.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, _herdr, herdr.bash, herdr.fish...
[2/5] Reviewing _herdr, herdr.bash, herdr.fish...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for pinned prebuilt binary from official upstream; no malicious behavior.
LLM auditresponse for herdr.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completion script for the `herdr` command-line tool. It defines helper functions (`__fish_herdr_global_optspecs`, `__fish_herdr_needs_command`, `__fish_herdr_using_subcommand`) and a large set of `complete` calls that provide tab-completion for `herdr` and its many subcommands, options, and arguments.

The file contains no network requests, no obfuscated or encoded commands, no file system modifications outside of normal completion definitions, no execution of external programs beyond the standard `commandline` and `argparse` built-ins, and no instructions that deviate from standard Fish completion scripting practices. All completions are purely informational (command names, flags, descriptions). There is no evidence of supply-chain attack, backdoor, data exfiltration, or any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Fish completion script, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing _herdr, herdr.bash...
+ Reviewed herdr.fish. Status: SAFE -- Standard Fish completion script, no malicious content.
LLM auditresponse for _herdr:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zsh completion script for the `herdr` command, auto-generated by a CLI argument parser (likely clap). It defines completion functions for all subcommands and options using standard `_arguments`, `_describe`, and `case` constructs. There are no network requests, no execution of downloaded code, no obfuscated or encoded strings, no dangerous commands like `eval`, `curl`, `wget`, or `base64`, and no file operations beyond normal shell completion routines. The final block that sets up `compdef` is standard for Zsh completion files. The file contains no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard completion script, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing herdr.bash...
+ Reviewed _herdr. Status: SAFE -- Standard completion script, no malicious code.
LLM auditresponse for herdr.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard auto-generated Bash completion script for the `herdr` command-line tool. It defines a function `_herdr()` that provides tab-completion suggestions for subcommands, options, and arguments. The structure follows typical patterns for completion scripts generated by frameworks like `clap` or similar Rust CLI libraries. No suspicious patterns (curl, wget, eval, base64, exec) are present in the visible content, and the truncated portion did not trigger any of these patterns either. The script performs only local `compgen` calls and returns completions — it makes no network requests, reads or writes files, executes arbitrary commands, or performs any other potentially malicious operations. This is entirely routine packaging content.
</details>
<evidence></evidence>
<summary>Standard bash completion script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed herdr.bash. Status: SAFE -- Standard bash completion script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 69,739
  Completion Tokens: 2,264
  Total Tokens: 72,003
  Total Cost: $0.006581
  Execution Time: 65.59 seconds

Final Status: SAFE


No issues found.
