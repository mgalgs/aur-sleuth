---
package: mdcat
pkgver: 2.19.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15068
completion_tokens: 21593
total_tokens: 36661
cost: 0.005301114
execution_time: 102.44
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T23:14:46Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard cargo package with pinned source.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious code found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no executable code.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE compliance config file, completely safe.
---

Materializing mdcat from local mirror...
Materialized mdcat
Analyzing mdcat AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is safe to source for `makepkg --printsrcinfo`. The global/top-level scope consists entirely of standard variable assignments and function definitions. No commands are executed during sourcing that could perform network requests, decode obfuscated strings, or modify the system. The upstream URL (`BIRSAx2/mdcat` rather than the official `wezm/mdcat`) is suspicious and warrants investigation in the full PKGBUILD audit, but is only stored as a data string at this stage and is not acted upon until the `prepare()` or `build()` functions execute — both of which are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>Safe for printsrcinfo gate; no global execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for printsrcinfo gate; no global execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, .nvchecker.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard permissive software license file (similar to MIT License). It contains only legal text granting permission to use, copy, modify, and distribute the software, along with a disclaimer of warranties. There is no executable code, no network operations, no file system manipulation, no obfuscation, and no supply-chain attack indicators. The file is exactly what it purports to be: a license.
</details>
<evidence>
</evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a pinned source tarball from the project's GitHub releases (`https://github.com/BIRSAx2/mdcat/archive/mdcat-2.19.0.tar.gz`) and verifies it with a hardcoded SHA256 checksum. All subsequent steps are standard for a Rust package: `cargo fetch --locked`, `cargo build --frozen`, and `cargo test --frozen`. The `package()` function installs the binary, creates symlinks (`mdless`, `mdpick`), and runs the freshly built binary only to generate shell completion scripts for Bash, Zsh, and Fish — a common and expected practice. No network requests to unexpected hosts, no obfuscation, no execution of untrusted code outside the build environment, and no modification of system files beyond the intended install destination (`$pkgdir`). The file exhibits no signs of malicious or injected behavior and conforms to standard Arch packaging conventions.
</details>
<evidence></evidence>
<summary>Standard cargo package with pinned source.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, REUSE.toml...
[2/5] Reviewing .SRCINFO, .nvchecker.toml, REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard cargo package with pinned source.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file for `mdcat` contains standard, declarative package metadata without any executable code, obfuscation, or suspicious operations. It defines the package source as a pinned tarball (`sha256sums` is set to a specific hash, not `SKIP`) hosted on GitHub, which is a standard download destination. All declared dependencies (`curl`, `openssl`, `cargo`, etc.) are normal toolchain or library requirements for a Rust-based Markdown rendering tool. No commands, scripts, or instructions that could constitute a supply-chain attack are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO metadata; no malicious code found.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious code found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.nvchecker.toml` file is a standard configuration file for the `nvchecker` tool. It defines parameters (`source`, `git`, `prefix`, `exclude_regex`) used to query a Git repository for new upstream tags. The file contains no executable code, obfuscated strings, or commands like `eval`, `curl`, or `wget`. While the `git` URL points to a fork (`BIRSAx2/mdcat`) instead of the official `mdcat` upstream (`SuperSandro2000/mdcat`), which is a supply chain trust consideration, this redirection is a configuration property and not, by itself, evidence of an injected attack. The file conforms to standard AUR packaging practices for `nvchecker` configuration.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no executable code.</summary>
</security_assessment>

[4/5] Reviewing REUSE.toml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no executable code.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (`.reuse/dep5` equivalent defined by the REUSE specification). It lists files in the repository that do not carry their own copyright and license headers, and assigns them a blanket copyright (&quot;Arch Linux contributors&quot;) and license (&quot;0BSD&quot;).

The file is purely declarative (TOML format). It contains no executable code, no network requests, no file operations, and no system modifications. It serves a legitimate packaging hygiene purpose (license compliance) and poses no supply chain or security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE compliance config file, completely safe.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE compliance config file, completely safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,068
  Completion Tokens: 21,593
  Total Tokens: 36,661
  Total Cost: $0.005301
  Execution Time: 102.44 seconds

Final Status: SAFE


No issues found.
