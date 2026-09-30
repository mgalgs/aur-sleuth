---
package: linuxvr-viewshot
pkgver: 0.4.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14340
completion_tokens: 4422
total_tokens: 18762
cost: 0.0010873296
execution_time: 104.84
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T23:12:10Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: linuxvr-viewshot.install
    status: safe
    summary: Benign informational .install script; only echo statements, no risky operations.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned checksum; no malicious or suspicious behavior found.
---

Materializing linuxvr-viewshot from local mirror...
Materialized linuxvr-viewshot
Analyzing linuxvr-viewshot AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions (pkgname, pkgver, source, etc.), comments, and a function definition (`_srcdir()`). There are no command substitutions, `eval`, network calls (curl/wget), or other operations that would execute when the file is sourced for `makepkg --printsrcinfo`. The `install` variable is a plain string referencing a file; the `_tag` and `source` variables use simple string manipulation. No code outside the package functions runs during parsing, so `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR git repositories. It instructs git to ignore all files except the PKGBUILD, .SRCINFO, `.install` scripts, and the `.gitignore` itself, which is the conventional AUR packaging workflow. The comments are in German and simply explain that only those files should be committed. There is no executable code, no network activity, no obfuscation, and no file operations outside of normal version-control behavior. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no malicious or suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, linuxvr-viewshot.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, linuxvr-viewshot.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR package `linuxvr-viewshot`. It declares the package name, version, description, upstream URL, an install script, architecture, license, build and runtime dependencies, optional dependencies, and a source tarball from the project's own GitHub repository with a valid SHA-256 checksum. No unusual encoding, obfuscated commands, unexpected network requests, or file operations are present. The content conforms to normal packaging practices and contains no evidence of malicious code.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, linuxvr-viewshot.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for linuxvr-viewshot.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.install` script containing only `post_install()` and `post_upgrade()` functions that print user-facing informational messages. The messages explain that the user must launch the app once, after which the application itself will copy its VR layer into `~/.local` so that Steam/Proton can see it. No commands are executed other than `echo`, no network requests are made, no files are written or modified, and no environment variables are touched. There is no obfuscation, no encoded payload, and no indication of injected malicious code. The script is entirely consistent with ordinary packaging practice for a user-space application that installs per-user components at runtime by design.

The file contains only quoted `echo` statements displaying bilingual (English/German) end-user instructions. There is nothing here outside the scope of the package's stated purpose: the upstream application is the component that later performs the `~/.local` copy when launched, and the installer script merely informs the user of that behavior. No evidence of a supply-chain attack or any form of malicious activity was found.</details>
<evidence></evidence>
<summary>Benign informational .install script; only echo statements, no risky operations.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed linuxvr-viewshot.install. Status: SAFE -- Benign informational .install script; only echo statements, no risky operations.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Rust packaging practices and contains no malicious or suspicious behavior. The source tarball is fetched from the package's own upstream GitHub repository using the official `archive/refs/tags/` URL and, importantly, has a pinned sha256 checksum (not SKIP). The build uses `cargo fetch --locked`, `cargo build --frozen --release`, and `cargo test --frozen` — the `--frozen` flag actually strengthens reproducibility by requiring an up-to-date Cargo.lock. There is no `git pull`, `curl | bash`, base64, obfuscation, or any download-and-execute pattern present.

The `package()` function stages files only into `$pkgdir` (the .so layer, UI Python files, a generated desktop entry, icon, license and docs), and creates a trivial launcher script in `/usr/bin` via heredoc that simply execs the app's own `starter.py`. The `sed` call only performs a plain `@START@` → package-name substitution in the desktop template, and the `find ... -exec rm -rf` is scoped strictly to `__pycache__` directories inside the staged application directory — a normal hygiene step when shipping Python code. The optdepends note about `pip install --user rapidocr` is only user-facing documentation text, not executed by the PKGBUILD. No files outside the package's own scope are touched, and no data is exfiltrated.
</details>
<evidence>

</evidence>
<summary>Standard Rust PKGBUILD with pinned checksum; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned checksum; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,340
  Completion Tokens: 4,422
  Total Tokens: 18,762
  Total Cost: $0.001087
  Execution Time: 104.84 seconds

Final Status: SAFE


No issues found.
