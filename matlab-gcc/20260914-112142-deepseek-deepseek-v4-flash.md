---
package: matlab-gcc
pkgbase: matlab
pkgver: R2026a+26.1.0.3251617
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36085
completion_tokens: 3386
total_tokens: 39471
cost: 0.003797387342
execution_time: 78.66
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T11:21:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting standard AUR packaging files; no security risk.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for MATLAB version tracking.
  - file: matlab.install
    status: safe
    summary: Simple informational install script with no dangerous operations.
  - file: PKGBUILD
    status: safe
    summary: Standard MATLAB packaging with MPM; no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no executable or suspicious content.
---

matlab-gcc is built from matlab
Materializing matlab-gcc from local mirror...
Materialized matlab-gcc
Analyzing matlab-gcc AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD only defines variables (including a large array of product names) and iterates over that array to populate `provides` and `conflicts`. The iteration uses a safe command substitution (`printf` and `tr` on static strings) and does not perform any network operations, file writes, or execute external code beyond standard system utilities. No `eval`, `curl`, `wget`, or other dangerous constructs are present at top level. The `local` keyword appears outside a function (which is a scripting error in bash but not a security concern) and would only cause a benign error. Sourcing this PKGBUILD for `--printsrcinfo` does not trigger any malicious behavior.
</details>
<evidence></evidence>
<summary>No global-level malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level malicious code; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .nvchecker.toml...
[0/5] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files (`*`) and then whitelists the packaging-related files that should be tracked: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and `*.install` files. This is a common and conventional pattern for AUR package repositories to keep only the relevant packaging metadata under version control.

There is no executable code, no network access, no obfuscation, no file manipulation, and no system modification of any kind. The file contains only plain-text git ignore patterns and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore whitelisting standard AUR packaging files; no security risk.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting standard AUR packaging files; no security risk.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool that checks for new upstream versions. It defines a source that queries the official MathWorks MATLAB container image on Docker Hub (`mathworks/matlab`). The configuration uses standard `from_pattern` and `to_pattern` to map container tags to version strings. No commands are executed, no data is exfiltrated, and the network destination (`docker.io`) is the expected container registry for the package's own upstream. The commented-out lines are alternative sources that are not active. The file is consistent with normal packaging practices and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for MATLAB version tracking.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for MATLAB version tracking.
[2/5] Reviewing .SRCINFO, PKGBUILD, matlab.install...
LLM auditresponse for matlab.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `matlab.install` contains only two functions (`post_install` and `post_upgrade`) that print a single informational message to the console. There are no network requests, no file operations, no execution of external commands, no obfuscation, and no system modifications. This is a standard `.install` file that simply reminds the user about activation steps. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Simple informational install script with no dangerous operations.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed matlab.install. Status: SAFE -- Simple informational install script with no dangerous operations.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging of MATLAB using MathWorks' official MPM (MathWorks Product Manager) tool for downloading and installing MATLAB products. The file defines subpackages for MATLAB, Java components, JRE, GCC, and GCC Fortran. All network operations target MathWorks' own infrastructure via `matlab-mpm` (a separate AUR package that wraps the official MPM) – this is expected for installing proprietary software from the vendor.

The `prepare()` function runs `matlab-mpm download` and then executes the downloaded `mpm` binary to install MATLAB into a staging directory. This is standard and not suspicious. The only notable deviation from ideal packaging is the use of `install -vdm777` on the installation directory under `/opt`, which sets world-writable permissions. While this is a minor security hygiene issue (any local user could write files into MATLAB's directory), it does not constitute a supply-chain attack or malicious behavior. No obfuscated code, data exfiltration, backdoors, or unexpected network destinations are present. The file follows typical AUR packaging patterns for large proprietary applications.
</details>
<evidence></evidence>
<summary>Standard MATLAB packaging with MPM; no malicious code found.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard MATLAB packaging with MPM; no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata used by the Arch User Repository to describe package versions, dependencies, and subpackages. It contains no executable code, no network requests, no file operations, and no obfuscation. All dependencies point to legitimate matlab-related packages (e.g., matlab, matlab-meta, matlab-gcc-meta). There are no signs of malicious behavior or supply-chain attack. The file follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Declarative metadata, no executable or suspicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no executable or suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,085
  Completion Tokens: 3,386
  Total Tokens: 39,471
  Total Cost: $0.003797
  Execution Time: 78.66 seconds

Final Status: SAFE


No issues found.
