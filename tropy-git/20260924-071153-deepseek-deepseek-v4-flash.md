---
package: tropy-git
pkgver: 1.18.0.beta.6.r8.gfd9c828
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15155
completion_tokens: 2857
total_tokens: 18012
cost: 0.001849118614
execution_time: 58.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T07:11:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS package metadata; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR Electron git package, no malicious behavior.
  - file: tropy.sh
    status: safe
    summary: Standard Electron launcher, no malicious code.
---

Materializing tropy-git from local mirror...
Materialized tropy-git
Analyzing tropy-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of the PKGBUILD. All variable definitions and function declarations in this file are static assignments or function definitions, containing no command substitutions, inline executions, or other code that would execute at source time. Potentially dangerous operations (e.g., `source /usr/share/nvm/init-nvm.sh`, `npm install`, `cd`) are confined within function bodies (pkgver, _ensure_local_nvm, prepare, build, package) and will not execute during the printsrcinfo step. No security risk is present at this scope.</details>
<evidence></evidence>
<summary>No dangerous code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, tropy.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file declares a standard AUR VCS package for Tropy from the project's official GitHub repository. It lists normal build dependencies (npm, git, nvm, gendesk, jq, zip), runtime dependencies (electron44, libvips), and optional dependencies for heif/pdf support. Fetching the package's own upstream Git repository via git+https is expected for a -git package, and the SKIP checksum on the VCS source is normal and required for mutable VCS checkouts.

The only other source is tropy.sh, which has a pinned SHA-256 checksum. No malicious commands, obfuscated content, suspicious network endpoints, or unexpected file operations are present in this file. The file is limited to package metadata and does not contain any build or install logic that could execute attacker-controlled code. There is no evidence of supply-chain tampering or behavior outside standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package metadata; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, tropy.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS package metadata; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron application from the official upstream repository (`github.com/tropy/tropy`). All operations are routine:

*   Source fetching uses a git clone from the project's own GitHub repository, which is expected for a `-git` package.
*   Build dependencies (`npm`, `nvm`, `electron`) and environment setup are normal for Electron AUR packaging to use the system Electron binary.
*   `npm install` with `--legacy-peer-deps` is a standard step for Node.js projects; it fetches packages from the npm registry, which is the package's own declared dependency source.
*   The `prepare()` and `build()` functions perform typical source transformations (version substitution, path replacement for system Electron) and packaging via `@electron/packager`.
*   No obfuscated code, remote code execution (e.g., `curl|bash`), unexpected file operations, or data exfiltration is present. The only network activities are to the project's own GitHub and npm registry, both expected.

While the `sha256sums` for the git source is `SKIP` (required for VCS) and npm dependencies are unpinned, these are standard practices in AUR `-git` packages and do not indicate malice. The file is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard AUR Electron git package, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing tropy.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR Electron git package, no malicious behavior.
LLM auditresponse for tropy.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Electron application launcher for Tropy, commonly used in AUR packages. It sets environment variables for Electron (ozone platform hint, trash backend, desktop file), reads user-defined flags from config files in `$XDG_CONFIG_HOME`, and launches the app with appropriate arguments. There are no suspicious network requests (no curl/wget), no obfuscated code, no base64, no eval, and no unexpected system modifications. The script does not deviate from expected behavior for launching a desktop application. Disabling security warnings and sandboxing are upstream application choices, not supply-chain attacks. The use of placeholder variables (@appname@, @runname@, etc.) is standard for templated packaging scripts. No evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed tropy.sh. Status: SAFE -- Standard Electron launcher, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,155
  Completion Tokens: 2,857
  Total Tokens: 18,012
  Total Cost: $0.001849
  Execution Time: 58.06 seconds

Final Status: SAFE


No issues found.
