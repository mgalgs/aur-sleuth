---
package: hydra-ade-git
pkgver: 0.1.0.r75.ga76d0fc
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10567
completion_tokens: 2897
total_tokens: 13464
cost: 0.001449682766
execution_time: 87.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T03:02:21Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard -git package metadata; only upstream VCS source, no malicious behavior found.
---

Materializing hydra-ade-git from local mirror...
Materialized hydra-ade-git
Analyzing hydra-ade-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, depends, source, etc.) and function declarations (pkgver, prepare, build, package). No top-level code executes external commands, network requests, or dangerous operations. During `makepkg --printsrcinfo`, only the global scope is sourced, and none of the functions are invoked. All assignments are static strings or arrays with proper quoting. There is no evidence of malicious code that would execute during this step.
</details>
<evidence></evidence>
<summary>Safe to parse for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to parse for metadata.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward, standard Arch User Repository package for a Tauri v2 + Rust application. It clones the upstream repository from GitHub, installs dependencies via pnpm and cargo, builds the project, and installs the resulting binary along with icons and a desktop entry. There are no suspicious network requests beyond the declared git source and routine npm/registry fetches. No obfuscated code, eval, curl|bash, or other malicious patterns are present. The `sha256sums` entry is `SKIP`, which is normal and expected for a `-git` package (VCS source). All operations are consistent with legitimate packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for an AUR package build directory (`/pkg/`, `/src/`), a directory named `/hydra/`, and generic patterns for tarballs and log files. There are no commands, network requests, obfuscation, or any other suspicious content. This is a normal configuration file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard declarative metadata file for a `-git` AUR package. It contains no executable code, no install scripts, no network operations of its own, and no encoded/obfuscated content. The sole source is the upstream project's own GitHub repository (`git+https://github.com/renanbs/hydra.git`), which is the expected, legitimate origin for the package's declared project (`https://github.com/renanbs/hydra`).

The `sha256sums = SKIP` line is required and standard practice for VCS sources and is not a red flag. The fact that the git source tracks a mutable ref (default branch) rather than a pinned commit is normal for `-git` packages; it weakens reproducibility slightly, but it is not malicious. The dependency lists (cargo/nodejs/pnpm/rust as makedepends; gtk3/webkit2gtk/openssl/cairo as depends) are all consistent with building a Tauri v2 + Rust application. The `conflicts = hydra` entry is plausibly a legitimate packaging decision to avoid collisions with the existing `hydra` package (e.g., a shared `/usr/bin/hydra` binary name) and does not by itself indicate malice.

No evidence of injected supply-chain behavior — no exfiltration, no curl|bash, no eval of decoded payloads, no unexpected file modifications, and no execution of untrusted content — was found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard -git package metadata; only upstream VCS source, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard -git package metadata; only upstream VCS source, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,567
  Completion Tokens: 2,897
  Total Tokens: 13,464
  Total Cost: $0.001450
  Execution Time: 87.92 seconds

Final Status: SAFE


No issues found.
