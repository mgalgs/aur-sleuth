---
package: herdr-bin
pkgver: 0.8.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 68032
completion_tokens: 2623
total_tokens: 70655
cost: 0.00582706656
execution_time: 194.24
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 4
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T11:03:32Z
file_verdicts:
  - file: _herdr
    status: safe
    summary: Standard Zsh completion script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with pinned sources, checksums, and safe install steps.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: herdr.bash
    status: safe
    summary: Standard bash completion script, no malicious code.
  - file: herdr.fish
    status: safe
    summary: Standard Fish completion file; no malicious content.
---

Cloning https://aur.archlinux.org/herdr-bin.git...
Cloned herdr-bin
Analyzing herdr-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable and array assignments. No command substitutions, dangerous built-ins (eval, base64, curl, wget), or obfuscated code exist in the global scope. The `source` array references GitHub release URLs for the binaries and three local completion files with provided SHA-256 checksums. The `pkgver()` function is absent. The `package()` function is defined but is not executed by `--nobuild --noprepare`. Fetching the sources via `makepkg` downloads from the project's own GitHub releases and extracts the archive, which is the expected behavior. There is no evidence of malicious code that would execute during the source-fetching or sourcing phase.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 4 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr...
LLM auditresponse for _herdr:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zsh completion script for the `herdr` command. It defines completion functions using `_arguments` and `_describe` to provide tab-completion for the `herdr` CLI and its subcommands. The file contains only shell completion logic — no network requests, file operations, system modifications, obfuscated code, or any other suspicious behavior. The `compdef` line at the end is the standard way to register the completion function. There is no evidence of malicious or dangerous code.
</details>
<evidence></evidence>
<summary>Standard Zsh completion script, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, _herdr, herdr.bash...
[1/5] Reviewing .SRCINFO, PKGBUILD, herdr.bash...
+ Reviewed _herdr. Status: SAFE -- Standard Zsh completion script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads release binaries directly from the project&apos;s own GitHub repository (`github.com/herdrdev/herdr/releases`), with pinned version `0.8.2` and explicit SHA-256 checksums for both the binary and the completion files. No checksum is set to `SKIP`.

The `package()` function only installs the prebuilt binary into `/usr/bin` and installs shell completion files into the appropriate directories. There are no `eval`, `base64`, `curl`, `wget`, or other dynamic code execution constructs. There is no obfuscation, no suspicious file operations, no modification of files outside the package&apos;s own install scope, and no network activity beyond fetching the declared upstream sources during `makepkg`.

The package is consistent with ordinary, legitimate packaging. No evidence of injected malicious behavior or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt binary PKGBUILD with pinned sources, checksums, and safe install steps.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, herdr.bash, herdr.fish...
[2/5] Reviewing .SRCINFO, herdr.bash, herdr.fish...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with pinned sources, checksums, and safe install steps.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the herdr-bin AUR package. It contains no executable code, no obfuscation, and no suspicious instructions. All sources are fetched from the official upstream GitHub repository using pinned version releases with valid sha256 checksums. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing herdr.bash, herdr.fish...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for herdr.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Bash completion script for the `herdr` command-line tool. It contains only completion logic using `compgen` and standard Bash constructs. No network requests, file downloads, execution of external commands, obfuscated code, or any other suspicious patterns are present. The file does not exhibit any supply-chain attack indicators; it is a legitimate auto-generated completion script that ships with the application.
</details>
<evidence></evidence>
<summary>Standard bash completion script, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing herdr.fish...
+ Reviewed herdr.bash. Status: SAFE -- Standard bash completion script, no malicious code.
LLM auditresponse for herdr.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Fish shell completion script for the `herdr` command. It defines helper functions and registers `complete` specifications for tab-completion of the `herdr` binary and its subcommands. No network operations, no execution of external binaries (beyond built-in fish commands like `commandline`, `argparse`, `echo`, `test`, `contains`), no obfuscated code, and no system modifications occur. The file is standard and benign – it simply enables autocomplete behavior for the package's CLI tool.
</details>
<evidence></evidence>
<summary>Standard Fish completion file; no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed herdr.fish. Status: SAFE -- Standard Fish completion file; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 68,032
  Completion Tokens: 2,623
  Total Tokens: 70,655
  Total Cost: $0.005827
  Execution Time: 194.24 seconds

Final Status: SAFE


No issues found.
