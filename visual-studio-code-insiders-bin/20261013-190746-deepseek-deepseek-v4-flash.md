---
package: visual-studio-code-insiders-bin
pkgver: 1791880907
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16120
completion_tokens: 4957
total_tokens: 21077
cost: 0.002369094
execution_time: 51.62
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T19:07:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore pattern only; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official Microsoft sources; no malicious behavior found.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard launcher wrapper; reads local flags and execs the package binary. No security issues.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Standard install script; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard VS Code Insiders AUR package; no indications of malicious behavior.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level statements. This PKGBUILD contains only standard variable assignments, arrays, comments, and a `package()` function definition. There are no top-level command substitutions, no external commands, no downloads, and no code execution outside of the function definitions. The `package()` body (including `bsdtar`, `install`, `ln`, `sed`, and `chmod`) is not executed during `--printsrcinfo` and is therefore out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is static definitions only; parsing it is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is static definitions only; parsing it is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing a single pattern `/*.in`. This only instructs Git to ignore any top-level files ending in `.in` (a common convention for template/input files that are generated or configured during builds). There is no executable code, no network activity, no obfuscation, and no system modification. It is consistent with ordinary packaging and repository hygiene.
</details>
<evidence></evidence>
<summary>Standard .gitignore pattern only; no security issues found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore pattern only; no security issues found.
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR package metadata. It declares a single Arch package `visual-studio-code-insiders-bin` with dependencies, optional dependencies, and per-architecture sources pointing to Microsoft's official Visual Studio Code download host (`vscode.download.prss.microsoft.com`). All three architecture tarballs have pinned sha256 checksums, and the local helper script `visual-studio-code-insiders-bin.sh` also has a pinned sha256 checksum.

There are no suspicious network endpoints, no encoded or obfuscated commands, no file operations, and no executable logic in this file — it is purely declarative metadata. The package filename rename via `::` and the use of `!strip` are normal AUR/package practices. No evidence of injected malicious behavior exists in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official Microsoft sources; no malicious behavior found.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official Microsoft sources; no malicious behavior found.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR launcher wrapper for Visual Studio Code Insiders. It reads optional user-defined command-line flags from `~/.config/code-insiders-flags.conf` or `~/.config/code-flags.conf`, strips comments, and passes them along with the user's arguments to the installed binary at `/usr/share/code-insiders/bin/code-insiders`.

There is no network access, no downloading, no obfuscated code, no encoding tricks, and no modification of system files. The script only reads local configuration files and execs the package's own binary, which is normal behavior for a distribution wrapper. The unquoted `$CODE_USER_FLAGS` expansion allows intended word-splitting of user-supplied flags and does not constitute a supply-chain risk; the flags come from the local user's own configuration. No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard launcher wrapper; reads local flags and execs the package binary. No security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard launcher wrapper; reads local flags and execs the package binary. No security issues.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an Arch Linux package. It defines colored output helper functions and prints informational notes to the user during `post_install` and `post_upgrade` about configuration file locations. There are no network requests, dangerous commands, obfuscation, or any operations that modify system files beyond the package&#x27;s own scope. The code is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script; no malicious content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Standard install script; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows the standard pattern for an AUR binary package. All architecture-specific downloads come from Microsoft&#39;s official Visual Studio Code download CDN (`vscode.download.prss.microsoft.com`), use pinned commit paths in the URL, and have explicit `sha256sums` for each architecture plus the launcher script.

The `package()` function only extracts the official `.deb` payload with `bsdtar`, installs the AUR-provided launcher script into `/usr/bin`, rewrites the `Exec=` lines in desktop entries, and removes the setuid bit from `chrome-sandbox` — all routine packaging operations. There is no `eval`, `base64`, `curl|bash`, obfuscated code, network exfiltration, or modification of files outside the package&#39;s intended scope. The referenced launcher and `.install` files are not shown here, but nothing in this PKGBUILD suggests they are malicious.
</details>
<evidence>
</evidence>
<summary>
Standard VS Code Insiders AUR package; no indications of malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VS Code Insiders AUR package; no indications of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,120
  Completion Tokens: 4,957
  Total Tokens: 21,077
  Total Cost: $0.002369
  Execution Time: 51.62 seconds

Final Status: SAFE


No issues found.
