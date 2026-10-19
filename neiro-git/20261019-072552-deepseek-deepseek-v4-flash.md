---
package: neiro-git
pkgver: r17.b0c951b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17060
completion_tokens: 2927
total_tokens: 19987
cost: 0.002085174
execution_time: 32.3
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T07:25:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: License file contains only standard ISC legal text; no security concerns.
  - file: neiro.install
    status: safe
    summary: Static install script; only echoes user instructions. No malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO metadata only; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR PKGBUILD; no malicious or suspicious behavior detected.
  - file: neiro.service
    status: safe
    summary: Benign systemd service unit; no malicious behavior detected.
---

Materializing neiro-git from local mirror...
Materialized neiro-git
Analyzing neiro-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this file, the top-level scope consists solely of standard variable definitions: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, `sha256sums`, and `install`. There are no top-level command substitutions, no network downloads, no `eval`, `base64`, `curl`, `wget`, or any other commands that would execute during sourcing.

Potentially interesting code exists only inside `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` functions, which are not invoked by `makepkg --printsrcinfo`. Those functions will be covered in the full PKGBUILD audit. The `SKIP` checksum on the git source is expected for VCS packages and is not relevant to this step, since no sources are downloaded or verified here.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard; no malicious code executes during printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .gitignore...
[0/6] Reviewing .gitignore, .SRCINFO...
[0/6] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except the explicitly whitelisted packaging files: `.SRCINFO`, `LICENSE`, `PKGBUILD`, `neiro.install`, and `neiro.service`. This is normal and expected AUR maintenance practice to prevent stray files from being committed to the repository. There is no obfuscation, no network activity, no file manipulation, and no execution of any kind. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no malicious behavior found.
</summary>
</security_assessment>

[0/6] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no malicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license. It contains only copyright and permission text, with no executable code, network operations, file manipulation, or any other behavior that could introduce a supply-chain risk. There is nothing here that deviates from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>License file contains only standard ISC legal text; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, neiro.install...
[2/6] Reviewing .SRCINFO, PKGBUILD, neiro.install...
+ Reviewed LICENSE. Status: SAFE -- License file contains only standard ISC legal text; no security concerns.
LLM auditresponse for neiro.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`) containing only a `post_install()` function that prints informational messages to the user. There are no commands that download, execute, modify system files, exfiltrate data, or perform any privileged operations. The messages simply instruct the user how to import Dolby speaker tuning and enable a user systemd service, which is normal packaging guidance for this application.

No suspicious network requests, obfuscated code, dangerous shell commands, or unexpected file operations are present. The script only uses `echo` for output, and it is consistent with routine AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Static install script; only echoes user instructions. No malicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, neiro.install, neiro.service...
[3/6] Reviewing .SRCINFO, PKGBUILD, neiro.service...
+ Reviewed neiro.install. Status: SAFE -- Static install script; only echoes user instructions. No malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is purely declarative metadata for the AUR package neiro-git. It contains no code, no network operations, and no executable content. The package is a PipeWire laptop speaker enhancement tool whose upstream is gitlab.com/wolf-yuan/neiro; fetching the package's own declared upstream via git+https is standard AUR practice, and the SKIP checksum on the VCS source is required for git sources. The neiro.service file has a pinned sha256sum, which is good hygiene.

The file references neiro.install, whose contents are not present here, so the install script itself cannot be audited from this file alone. No evidence of obfuscation, data exfiltration, or unexpected downloads exists in this file. The only notes are that the git source is unpinned (normal for -git packages) and the package's described purpose involves importing vendor Dolby DAX3 tuning data from laptop driver downloads, which is an upstream functionality choice rather than a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Declarative .SRCINFO metadata only; no malicious content found.
</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, neiro.service...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO metadata only; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust/git-based package. It clones the project's declared upstream repository from `gitlab.com/wolf-yuan/neiro`, uses `cargo fetch`, `cargo build`, and `cargo test` in the normal build/check phases, then installs the compiled binary, a systemd user service, and documentation into `$pkgdir`. There is no obfuscated code, no unexpected network endpoint, no `curl|bash`, no eval, and no suspicious file operations.

The `sha256sums` entry of `SKIP` for the VCS source is normal and expected for `-git` packages. The `cargo fetch` step downloads Rust crate dependencies from the standard crates.io registry, which is ordinary Rust packaging behavior and not a supply-chain red flag. No evidence of injected malicious code or behavior outside the package's stated purpose was found.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR PKGBUILD; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[5/6] Reviewing neiro.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR PKGBUILD; no malicious or suspicious behavior detected.
LLM auditresponse for neiro.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd user service unit for launching the `neiro` daemon after PipeWire and WirePlumber. It declares dependencies, starts `/usr/bin/neiro daemon`, and restarts on failure. There are no network operations, no encoded or obfuscated commands, no file manipulation outside the application's scope, and no execution of downloaded content. The unit only uses a fixed system binary path and standard systemd directives.
</details>
<evidence>
</evidence>
<summary>
Benign systemd service unit; no malicious behavior detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed neiro.service. Status: SAFE -- Benign systemd service unit; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,060
  Completion Tokens: 2,927
  Total Tokens: 19,987
  Total Cost: $0.002085
  Execution Time: 32.30 seconds

Final Status: SAFE


No issues found.
