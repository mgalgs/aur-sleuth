---
package: xwayland-satellite-git
pkgver: 0.8.2.r18.gae88928
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12038
completion_tokens: 1434
total_tokens: 13472
cost: 0.0019041366
execution_time: 18.01
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-09T15:16:55Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license file; no executable or suspicious content found.
  - file: .gitignore
    status: safe
    summary: Trivial .gitignore with standard build artifact entries; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; upstream source only, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious behavior or injected code found.
---

Materializing xwayland-satellite-git from local mirror...
Materialized xwayland-satellite-git
Analyzing xwayland-satellite-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The global scope contains only standard variable definitions, dependency arrays, and a `source` array pointing to the project's own upstream Git repository. There are no top-level command substitutions, no `eval`, `curl`, `wget`, base64 decoding, obfuscated strings, or any other code that would execute during sourcing. All potentially interesting logic is inside `pkgver()`, `prepare()`, `build()`, `check()`, and `package()`, which are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is standard metadata; no malicious execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is standard metadata; no malicious execution during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain BSD Zero Clause License text file. It contains only standard license boilerplate and a copyright notice. There is no executable code, no network activity, no file operations, and no instructions of any kind. Nothing in the file deviates from normal packaging content or poses a security risk.
</details>
<evidence>
</evidence>
<summary>
Plain license file; no executable or suspicious content found.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Plain license file; no executable or suspicious content found.
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in the AUR package repository. It ignores the `pkg` and `src` build directories, archive files matching `*.tar*`, and the built `xwayland-satellite` binary. These are routine entries for a VCS-based AUR package and do not perform any commands, network operations, file modifications, or anything else at build or install time. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Trivial .gitignore with standard build artifact entries; no security concerns.
</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Trivial .gitignore with standard build artifact entries; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It declares a VCS `-git` package for `xwayland-satellite`, with the source pointing to the project's own upstream GitHub repository (`git+https://github.com/Supreeeme/xwayland-satellite.git`). The `b2sums = SKIP` entry is normal and required for VCS sources, and is not a sign of malice.

No malicious behavior is present: there are no network requests to unexpected hosts, no encoded or obfuscated commands, no file manipulation, and no build or install scripts in this file. The metadata only describes the package name, dependencies, architecture, and upstream VCS source. All listed dependencies are consistent with the project's stated purpose of running Xwayland outside a Wayland compositor.

This is a straightforward and benign AUR metadata file. There are no hygiene concerns beyond the standard unpinned VCS nature of a `-git` package, which is expected for this package type.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; upstream source only, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; upstream source only, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package. It clones the project's own upstream repository from GitHub, uses `b2sums=('SKIP')` as expected for a VCS source, and performs a normal fetch/build/test/install workflow with Cargo. The `prepare()` and `build()` functions only set standard Rust environment variables and invoke `cargo fetch` / `cargo build --frozen` against the project's locked dependencies. The `package()` function installs only the expected binary and systemd user service into `$pkgdir`.

No suspicious behavior is present: there are no obfuscated commands, no `eval`/`base64`/`curl`/`wget` execution, no exfiltration of local data, no unexpected file operations outside the package build directory, and no installation of unrelated or attacker-controlled code. The `sed` in `prepare()` simply adjusts a path in the project's own service file from `/usr/local` to `/usr`. This is an ordinary, safe packaging file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package; no malicious behavior or injected code found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious behavior or injected code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,038
  Completion Tokens: 1,434
  Total Tokens: 13,472
  Total Cost: $0.001904
  Execution Time: 18.01 seconds

Final Status: SAFE


No issues found.
