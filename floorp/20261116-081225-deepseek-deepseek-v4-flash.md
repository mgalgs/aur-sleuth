---
package: floorp
pkgver: 12.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 28112
completion_tokens: 5052
total_tokens: 33164
cost: 0.00343944
execution_time: 32.77
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-16T08:12:25Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration file, no security issues.
  - file: floorp.desktop
    status: safe
    summary: A standard, non‑malicious desktop entry file.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no dangerous content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for building Floorp; no malicious code found.
---

Materializing floorp from local mirror...
Materialized floorp
Analyzing floorp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments (including arrays for `source`, `depends`, etc.) and function definitions (`_deno`, `_dereference_symlinks`, `_calc_parallel_jobs`, `prepare`, `build`, `package`).  
No command substitutions (`$(…)`) or backtick expansions exist in the global scope.  
The conditional statements at the top level (`if [[ … ]]`) perform only string comparisons against already‑set variables; they do **not** execute any external commands or network requests.  
All potentially dangerous operations (fetching sources, patching, building, installing) are confined to the `prepare`, `build`, and `package` functions, which are **not** executed during `makepkg --printsrcinfo`.  

The unusual parameter expansions such as `${_build_system_libs::1}` or `${_runtime_commit::7}` are syntactically valid but merely transform variable values using empty‑pattern substitution — they do **not** invoke external commands or load content from outside the file.  

Therefore, sourcing this PKGBUILD is safe, and running `makepkg --printsrcinfo` poses no risk.
</details>
<evidence></evidence>
<summary>Safe; no top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no top-level code execution.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: floorp-runtime-8965ffc.tar.gz::https://github.com/Floorp-Projects/Floorp-Runtime/archive/8965ffc346d426ccdf919bd18585e4d4a0c21654.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file exclusively contains standard ignore rules for an AUR repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore`). There is no executable code, no network requests, no obfuscation, and no deviation from typical AUR package practices. This file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for nvchecker, a tool used to check for new upstream releases. It defines the Floorp project's GitHub repository as the source, with a `v` prefix for tags and `use_latest_release` enabled. There are no dangerous commands, obfuscated content, network requests to unexpected hosts, or any deviation from normal packaging helper scripts. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, floorp.desktop...
[2/5] Reviewing .SRCINFO, PKGBUILD, floorp.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration file, no security issues.
LLM auditresponse for floorp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the Floorp web browser. It contains localized names, comments, and desktop actions for launching new windows, private windows, and the profile manager. All `Exec` lines invoke the `floorp` binary with normal command‑line flags (`%u`, `--new-window`, `--private-window`, `--ProfileManager`). There are no network requests, obfuscated code, file operations, or any indicators of supply‑chain compromise. The only placeholder is `@WMCLASS@` in `StartupWMClass`, which is routinely substituted during package builds and poses no security risk.
</details>
<evidence>
</evidence>
<summary>A standard, non‑malicious desktop entry file.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed floorp.desktop. Status: SAFE -- A standard, non‑malicious desktop entry file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file generated by AUR helpers. It contains standard package information: version, dependencies, source URLs, and checksums. All source URLs point to the official Floorp-Projects GitHub repositories. Checksums for the runtime and core sources are set to `SKIP`, which is normal for VCS-based or unchcecksummed sources and not indicative of malice. No executable code, obfuscated strings, network requests, or file operations are present. The file serves only as data for the AUR build process and exhibits no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Metadata file, no dangerous content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no dangerous content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard build script for the Floorp browser from the AUR. It fetches source code from the official Floorp-Projects GitHub repositories, applies patches, and builds the browser with typical Firefox-based build steps (mach, PGO, etc.). The use of `SKIP` checksums on the runtime and core VCS sources is normal for git-based sources in the AUR and is not malicious. The `_calc_parallel_jobs` function reads `/proc/meminfo` and `lscpu` only to determine build parallelism, which is a common performance optimization. The `_dereference_symlinks` function uses `rsync` to resolve symlinks, which is a routine build utility. All commands (deno tasks, git apply, mach, cp, install) serve the package's build and install process. There is no evidence of data exfiltration, backdoors, obfuscated code, downloading executables from unexpected hosts, or any other genuinely malicious behavior. The build process does fetch from the Floorp-core git repository (a mutable branch), but this is standard for AUR VCS-style packages and is a trust/hygiene concern, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for building Floorp; no malicious code found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for building Floorp; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,112
  Completion Tokens: 5,052
  Total Tokens: 33,164
  Total Cost: $0.003439
  Execution Time: 32.77 seconds

Final Status: SAFE


No issues found.
