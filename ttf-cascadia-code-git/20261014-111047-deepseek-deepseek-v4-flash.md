---
package: ttf-cascadia-code-git
pkgbase: cascadia-code-git
pkgver: 2407.24.r0.g56bcca3f2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11786
completion_tokens: 2821
total_tokens: 14607
cost: 0.001585948
execution_time: 44.32
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T11:10:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Simple .gitignore with standard ignore patterns; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for an upstream VCS font package; no malicious behavior found.
  - file: .editorconfig
    status: safe
    summary: Benign editor configuration file; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS font package; only unpinned pip dependencies noted.
---

ttf-cascadia-code-git is built from cascadia-code-git
Materializing ttf-cascadia-code-git from local mirror...
Materialized ttf-cascadia-code-git
Analyzing ttf-cascadia-code-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations at the top level. No command substitutions, `eval`, `curl`, `wget`, or other executable statements appear in the global scope that would execute when the file is sourced by `makepkg --printsrcinfo`. The `source` array and `sha256sums=SKIP` are standard for VCS packages and do not cause code execution during sourcing. The functions `pkgver()`, `build()`, and `package_*()` are defined but not invoked during metadata generation. Therefore, this step poses no risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executes.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .editorconfig...
[0/4] Reviewing .SRCINFO, .editorconfig, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an AUR git repository. It contains two pattern rules: `*/` ignores all directories, and `*.tar*` ignores tarball files such as `.tar.gz` and `.tar.xz`. These patterns are normal for a packaging repository, which typically stores only the PKGBUILD and related metadata in git while excluding upstream source archives and generated build artifacts. There is no code execution, no network activity, no obfuscation, and no indication of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Simple .gitignore with standard ignore patterns; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .editorconfig...
+ Reviewed .gitignore. Status: SAFE -- Simple .gitignore with standard ignore patterns; no security concerns.
[1/4] Reviewing .SRCINFO, .editorconfig, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `cascadia-code-git` package. It describes two split packages (`otf-cascadia-code-git` and `ttf-cascadia-code-git`) built from the official Microsoft Cascadia Code GitHub repository. The source is fetched via `git+https://github.com/microsoft/cascadia-code.git`, which is the package’s own upstream project.

The `sha256sums = SKIP` entry is expected and normal for VCS sources. There are no suspicious commands, downloads from unrelated hosts, obfuscated content, file operations, or any other behavior beyond standard packaging metadata. The file contains only declarative PKGBUILD metadata and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for an upstream VCS font package; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing .editorconfig, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for an upstream VCS font package; no malicious behavior found.
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.editorconfig` configuration used to define editor formatting rules (charset, indentation, trailing whitespace handling). It contains no executable code, no network operations, no file manipulation, and no obfuscated content. It is a benign configuration file consistent with typical development and packaging practices.
</details>
<evidence></evidence>
<summary>Benign editor configuration file; no security concerns found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .editorconfig. Status: SAFE -- Benign editor configuration file; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS font package. It clones Microsoft's official Cascadia Code repository, derives `pkgver` with `git describe`, builds font artifacts via a Python venv and the upstream `build.py`, then installs the resulting OTF/TTF files and LICENSE into `$pkgdir`. I found no evidence of data exfiltration, backdoors, obfuscated commands, unexpected hosts, or tampering outside the package's own build/install scope. `sha256sums=(SKIP)` is normal for VCS sources.

The only supply-chain consideration is `pip install -r requirements.in` inside the venv: it resolves unpinned Python dependencies from PyPI at build time rather than using a fully pinned/checksummed lock, which widens the dependency-trust window. However, installing the upstream project's declared Python dependencies from PyPI is a routine part of building Python-based upstream projects and is not itself malicious or indicative of an injected attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS font package; only unpinned pip dependencies noted.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS font package; only unpinned pip dependencies noted.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,786
  Completion Tokens: 2,821
  Total Tokens: 14,607
  Total Cost: $0.001586
  Execution Time: 44.32 seconds

Final Status: SAFE


No issues found.
