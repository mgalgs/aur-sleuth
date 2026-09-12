---
package: actual-cli
pkgver: 26.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13299
completion_tokens: 2752
total_tokens: 16051
cost: 0.00126092918
execution_time: 44.69
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T03:05:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard benign .gitignore for AUR package build.
  - file: PKGBUILD
    status: safe
    summary: Standard npm-based PKGBUILD with no signs of compromise.
  - file: Makefile
    status: safe
    summary: Standard AUR helper script, no malicious behavior.
  - file: PKGBUILD.in
    status: safe
    summary: Standard AUR PKGBUILD for an npm package, no threats found.
---

Materializing actual-cli from local mirror...
Materialized actual-cli
Analyzing actual-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and a `package()` function definition. No code executes at global scope when sourcing the file for `makepkg --printsrcinfo`. All variable assignments are literal strings or simple variable references (e.g., `$pkgver`, `$pkgdir`) that are evaluated safely. The `package()` function is not invoked during this step, so any content inside it is out of scope. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or other potentially dangerous constructs at the top level. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, Makefile...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the actual-cli AUR package. It defines package metadata, dependencies (nodejs, npm), and a source tarball from the official npm registry with a pinned sha256 checksum. No embedded scripts, obfuscation, suspicious network requests, or unusual operations are present. The content is standard packaging information and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard package metadata file; no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, Makefile, PKGBUILD...
[1/5] Reviewing .gitignore, Makefile, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR package repositories to exclude build artifacts (`pkg/`, `src/`), version files (`.version`), and common compression output (`*.pkg.tar.lzo`, `*.tgz`). No executable code, network requests, obfuscation, or malicious content is present. It serves a purely administrative purpose.
</details>
<evidence></evidence>
<summary>Standard benign .gitignore for AUR package build.</summary>
</security_assessment>

[2/5] Reviewing Makefile, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard benign .gitignore for AUR package build.
[2/5] Reviewing Makefile, PKGBUILD, PKGBUILD.in...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs the `actual-cli` package from the official npm registry using a tarball with a pinned SHA-256 checksum. The source URL points to the trusted npm registry (`registry.npmjs.org`) and the package identifier matches the official Actual Budget CLI. The `npm install` command is standard for Node.js packages; the `--allow-scripts=better-sqlite3` flag restricts execution of lifecycle scripts to only that named native dependency, which is a prudent security measure rather than a risk. The resulting `rm -rf` call merely deletes a cache directory that would be unused after installation. There are no unexpected network requests, obfuscated code, or operations that deviate from normal packaging practices. This file does not exhibit any signs of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard npm-based PKGBUILD with no signs of compromise.</summary>
</security_assessment>

[3/5] Reviewing Makefile, PKGBUILD.in...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm-based PKGBUILD with no signs of compromise.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is an AUR maintainer helper script that automates version bumps and PKGBUILD regeneration. It performs standard packaging operations: checking for new versions via `npm view`, updating a version file, generating PKGBUILD from a template with `m4`, recalculating checksums with `updpkgsums`, and producing `.SRCINFO` via `makepkg --printsrcinfo`. There is no exfiltration, no execution of untrusted code, no obfuscation, and no downloads from unexpected sources. The only network call is to npm to check the upstream version, which is expected for a Node.js package. All commands are typical for AUR maintenance. No security issues found.
</details>
<evidence>
</evidence>
<summary>Standard AUR helper script, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD.in...
+ Reviewed Makefile. Status: SAFE -- Standard AUR helper script, no malicious behavior.
LLM auditresponse for PKGBUILD.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD.in file is a standard Arch Linux packaging template for the `actual-cli` npm package. It downloads the package from the official npm registry (`registry.npmjs.org`), which is the expected and trusted source for npm packages. The `sha256sums` being set to `SKIP` is common for npm-sourced packages where the registry does not provide checksums; this is not inherently malicious. The `package()` function runs `npm install -g` with a safe `--allow-scripts` flag that only permits the `better-sqlite3` package to run its scripts, which is a legitimate and expected behavior for this package (it includes native bindings). Finally, it removes a `.cache` directory from the installed node_modules, which is a standard cleanup step. There are no suspicious network requests, obfuscated commands, attempts to exfiltrate data, or any deviations from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for an npm package, no threats found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD.in. Status: SAFE -- Standard AUR PKGBUILD for an npm package, no threats found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,299
  Completion Tokens: 2,752
  Total Tokens: 16,051
  Total Cost: $0.001261
  Execution Time: 44.69 seconds

Final Status: SAFE


No issues found.
