---
package: dsh-tui-bin
pkgver: 0.20.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10106
completion_tokens: 2947
total_tokens: 13053
cost: 0.00144000
execution_time: 28.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T16:11:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard npm binary packaging with pinned checksum; no malicious behavior.
  - file: dsh-tui-bin.install
    status: safe
    summary: Normal post-install script calling own binary for profile setup.
---

Materializing dsh-tui-bin from local mirror...
Materialized dsh-tui-bin
Analyzing dsh-tui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions (`prepare()`, `package()`) at the top level. There are no command substitutions, backtick expressions, or function invocations that would execute code during `makepkg --printsrcinfo`. The `source` array uses variable interpolation but that is safe string expansion. No malicious payloads or data exfiltration are possible at this stage.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, dsh-tui-bin.install...
[0/3] Reviewing .SRCINFO, dsh-tui-bin.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `dsh-tui-bin` package. It contains no executable code, network requests, or system operations. The source URL points to the official npmjs.org registry, which is the expected distribution channel for an npm-based package. The `sha256sums` field contains a pinned hash (not `SKIP`), providing integrity verification for the downloaded tarball.

All fields describe normal packaging metadata: version, license (MIT), architecture, dependencies (`deepseek-harness`, `nodejs`, `pnpm`), conflicts with other variants of the same package, and the upstream GitHub repository URL. There is no evidence of obfuscation, data exfiltration, backdoors, or any behavior deviating from standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing dsh-tui-bin.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches a prebuilt npm tarball from the official npm registry (`registry.npmjs.org`) with a pinned SHA-256 checksum, ensuring the exact version is verified. The `prepare()` function runs `npm install --global` with standard flags (`--no-audit`, `--no-fund`, `--legacy-peer-deps`) to install the package into a temporary directory, and `package()` copies those files into the package directory. There are no suspicious network requests (the only source is the npm registry, which is the expected upstream for an npm-based binary package), no obfuscated code, no eval/curl/wget in unexpected contexts, and no file operations outside the package's own scope. The `install=dsh-tui-bin.install` is an external file not analyzed here but often contains standard post-install steps. The checksum is pinned and not skipped, which is good practice. No evidence of supply-chain injection, data exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard npm binary packaging with pinned checksum; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing dsh-tui-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm binary packaging with pinned checksum; no malicious behavior.
LLM auditresponse for dsh-tui-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dsh-tui-bin.install` is a standard Arch Linux package install script that calls the application's own binary (`/usr/bin/dsh-tui update`) to initialize a user profile after installation or upgrade. There is no obfuscated code, no unexpected network requests, no dangerous commands (eval, base64, curl, wget), and no exfiltration of sensitive data. The script simply runs the packaged binary with environment variables that disable the update engine and launcher (to avoid recursion) and uses `runuser` to execute as the first non-root user found on the system. This is normal behavior for an AUR package that needs to perform initial setup for the user. The informational messages about optional agent backends are benign. No signs of a supply-chain attack are present.
</details>
<evidence></evidence>
<summary>Normal post-install script calling own binary for profile setup.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed dsh-tui-bin.install. Status: SAFE -- Normal post-install script calling own binary for profile setup.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,106
  Completion Tokens: 2,947
  Total Tokens: 13,053
  Total Cost: $0.001440
  Execution Time: 28.20 seconds

Final Status: SAFE


No issues found.
