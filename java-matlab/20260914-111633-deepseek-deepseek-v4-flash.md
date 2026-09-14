---
package: java-matlab
pkgbase: matlab
pkgver: R2026a+26.1.0.3251617
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36239
completion_tokens: 8015
total_tokens: 44254
cost: 0.004631347014
execution_time: 128.78
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T11:16:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker configuration for MATLAB container.
  - file: .gitignore
    status: safe
    summary: Benign AUR .gitignore whitelisting packaging files; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard MATLAB packaging from MathWorks; no malicious code.
  - file: matlab.install
    status: safe
    summary: Benign install script prints activation reminder.
---

java-matlab is built from matlab
Materializing java-matlab from local mirror...
Materialized java-matlab
Analyzing java-matlab AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. Reviewing the top-level code in this file, I find only standard packaging constructs: variable definitions, array definitions (product lists, arch), a URL assignment pointing to the official MathWorks MATLAB page, simple parameter expansions (e.g. `_release="${pkgver%+*}"`), and a loop that builds product-name strings from the product list. The only command substitution visible at top level is `$(printf '%s' "${_product#MATLAB_}" ...)`, which is ordinary string manipulation and cannot download or execute anything. There is no `eval`, no base64/hex/obfuscated payloads, no network fetch, no file writes, and no exfiltration anywhere in the global scope.

The network-downloading code (MPM-based product archives), file moves, `patchelf`, and `install`/`ln` operations appear inside `prepare()`, `build()`, and `package_java-matlab()` function bodies. Those functions are not invoked by `makepkg --printsrcinfo`, so they are outside the scope of this narrow gate; they should be examined in the full PKGBUILD audit that follows. Nothing in the top-level scope is dangerous to execute during metadata parsing.
</details>
<evidence></evidence>
<summary>The top-level scope contains only benign variable/array definitions, a MathWorks URL, and non-executing string manipulation. No malicious code runs during `makepkg --printsrcinfo`; the network and file-modifying operations are confined to function bodies that are not executed at this step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- The top-level scope contains only benign variable/array definitions, a MathWorks URL, and non-executing string manipulation. No malicious code runs during `makepkg --printsrcinfo`; the network and file-modifying operations are confined to function bodies that are not executed at this step.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a metadata-only `.SRCINFO` for a set of MATLAB-related Arch Linux packages. It contains no executable code, no network requests, no obfuscated content, and no file operations. All referenced URLs point to the official MathWorks domain (mathworks.com). The dependencies, provides, and conflicts are standard package metadata. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration file for the `nvchecker` tool used to check for new versions of software. It defines a version-checking source that monitors the `mathworks/matlab` container image on Docker Hub (`registry = &quot;docker.io&quot;`). This is a normal and expected practice for packages that track upstream releases via container registries. The included regex patterns (`include_regex`, `from_pattern`, `to_pattern`) are used to extract version strings from Docker tags. Commented-out alternative configurations (using `jq` or `regex` sources) are inert and do not execute. There are no dangerous commands, obfuscation, network requests to unexpected hosts, or any behavior that deviates from legitimate version-checking automation. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Safe nvchecker configuration for MATLAB container.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, matlab.install...
[2/5] Reviewing .gitignore, PKGBUILD, matlab.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker configuration for MATLAB container.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard AUR maintainer whitelist pattern. It ignores everything (`*`) and then un-ignores only the packaging files a maintainer wants to track in the AUR git repository: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml` (config for the nvchecker upstream-version checker), and any `*.install` scripts. 

There is no executable code, no network activity, no obfuscation, no file manipulation, and no system modification. The file contains only git ignore patterns and is entirely consistent with ordinary AUR packaging workflow. No genuine security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign AUR .gitignore whitelisting packaging files; no security issues found.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, matlab.install...
+ Reviewed .gitignore. Status: SAFE -- Benign AUR .gitignore whitelisting packaging files; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `matlab` (and subpackages) downloads MATLAB from MathWorks using the MPM tool. There is no evidence of obfuscated commands, unauthorized network requests, or exfiltration. The build process extracts the official MATLAB installer and splits it into components. The only security-relevant observation is that the installation directory at `$pkgdir/opt/MATLAB/&lt;release&gt;` is created with world-writable permissions (`777`). While this is a hardening concern (a local user could potentially tamper with installed files), it does not constitute a supply-chain attack and appears unintentional or required for runtime operation. No genuinely malicious behavior was detected.
</details>
<evidence>
</evidence>
<summary>Standard MATLAB packaging from MathWorks; no malicious code.</summary>
</security_assessment>

[4/5] Reviewing matlab.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard MATLAB packaging from MathWorks; no malicious code.
LLM auditresponse for matlab.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `matlab.install` contains only `post_install()` and `post_upgrade()` functions that print a single help message advising the user to activate MATLAB using `MathWorksProductAuthorizer`. There are no network requests, file operations, execution of external commands, obfuscated code, or any other dangerous behavior. The script is entirely benign and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Benign install script prints activation reminder.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed matlab.install. Status: SAFE -- Benign install script prints activation reminder.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,239
  Completion Tokens: 8,015
  Total Tokens: 44,254
  Total Cost: $0.004631
  Execution Time: 128.78 seconds

Final Status: SAFE


No issues found.
