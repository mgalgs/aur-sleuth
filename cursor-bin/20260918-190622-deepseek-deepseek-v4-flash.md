---
package: cursor-bin
pkgver: 3.21.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13219
completion_tokens: 4145
total_tokens: 17364
cost: 0.00105996352
execution_time: 82.47
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:06:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A standard .gitignore listing build artifacts; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary repackage, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: "SAFE: .SRCINFO contains only standard package metadata with pinned checksums and official source URLs."
  - file: rg.sh
    status: safe
    summary: Benign rg wrapper converting --cursor-ignore to --ignore-file; no suspicious behavior, network, or obfuscation.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions (strings, arrays) and comments at the top level. There are no command substitutions, backticks, or any executable statements that would run when sourced by `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during this step. The content is consistent with standard AUR packaging and poses no risk for this narrow safety gate.
</details>
<evidence></evidence>
<summary>Safe to source for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It lists build artifacts and generated files such as the downloaded AppImage, the built `.pkg.tar.zst` package, and extracted package/source paths (`pkg/`, `src/`). There are no commands, network operations, obfuscated strings, or file modification logic present. The content is purely a list of files/directories to be ignored by version control and poses no security risk.
</details>
<evidence></evidence>
<summary>A standard .gitignore listing build artifacts; no malicious behavior found.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A standard .gitignore listing build artifacts; no malicious behavior found.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Cursor binary from `downloads.cursor.com` and adapts packaging scripts from the official Arch Linux VS Code package (`gitlab.archlinux.org`).  All remote sources are expected upstream locations.  The `package()` function performs only standard extraction, file relocation, symlink creation, and text substitution via `sed`—no unexpected network requests, code execution, or system modifications outside `$pkgdir`.  Checksums are provided for all sources except the deb (which is set explicitly later).  No evidence of obfuscated commands, backdoors, or data exfiltration.  This is a normal AUR binary packaging workflow.
</details>
<evidence></evidence>
<summary>Standard AUR binary repackage, no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary repackage, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `cursor-bin` AUR package. It contains only package metadata: name, description, version, URL, architecture, dependencies, build options, source URLs, and SHA-512 checksums. There is no executable code, shell script logic, or post-installation behavior embedded in this file.

The source URLs point to the application's official download domain (`downloads.cursor.com`) and to Arch Linux's official packaging repository on GitLab (`gitlab.archlinux.org`), both of which are expected and consistent with legitimate packaging practices. The local `rg.sh` file is listed as a source with a pinned checksum, which is normal. No suspicious network requests, obfuscated strings, or dangerous commands are present. The `!strip` and `!debug` options are routine packaging choices and do not indicate malicious behavior.

Overall, this file shows no evidence of a supply-chain attack. The presence of pinned SHA-512 checksums indicates the package maintainer intends to verify the downloaded artifacts. Without the PKGBUILD or the actual source scripts, there is nothing in this `.SRCINFO` alone that warrants an UNSAFE classification.
</details>
<evidence>
</evidence>
<summary>
SAFE: .SRCINFO contains only standard package metadata with pinned checksums and official source URLs.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- SAFE: .SRCINFO contains only standard package metadata with pinned checksums and official source URLs.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal, standard shell wrapper for ripgrep. It contains no network activity, no downloads, no code execution primitive such as `eval`, no obfuscated/encoded content, and no file system modifications. It simply `exec`s the system binary `/usr/bin/rg` (absolute path, no PATH hijacking risk) and performs an in-memory parameter expansion that rewrites each argument by replacing the substring `--cursor-ignore` with `--ignore-file`.

The expansion is quoted, so there is no word splitting, glob expansion, or command injection. The `exec` builtin is the normal idiom for making the wrapper transparently replace itself with the real tool. The `--cursor-ignore` to `--ignore-file` translation is a benign compatibility shim: Cursor (the application this AUR package ships) passes a custom flag to the bundled/search ripgrep, and this wrapper maps it to ripgrep's standard ignore-file flag. The only theoretical quirk is that the substitution is a naive substring replacement (e.g., a legitimate filename containing the literal text `--cursor-ignore` would be altered), but that is at worst a minor functional quirk, not a security issue. No unexpected destinations, hosts, or payloads are involved.
</details>
<evidence>
</evidence>
<summary>
Benign rg wrapper converting --cursor-ignore to --ignore-file; no suspicious behavior, network, or obfuscation.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Benign rg wrapper converting --cursor-ignore to --ignore-file; no suspicious behavior, network, or obfuscation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,219
  Completion Tokens: 4,145
  Total Tokens: 17,364
  Total Cost: $0.001060
  Execution Time: 82.47 seconds

Final Status: SAFE


No issues found.
