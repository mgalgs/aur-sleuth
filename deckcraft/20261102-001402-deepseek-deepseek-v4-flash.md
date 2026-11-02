---
package: deckcraft
pkgver: 0.14.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10297
completion_tokens: 4990
total_tokens: 15287
cost: 0.001845207
execution_time: 39.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T00:14:01Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe version checker configuration
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a Rust project. No security issues found.
---

Materializing deckcraft from local mirror...
Materialized deckcraft
Analyzing deckcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content is limited to standard variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.), an array definition, and function declarations (`_srcenv`, `prepare`, `build`, `package`). None of these functions are invoked at load time, and no command substitutions, network fetches, downloads, or code-execution side effects occur in the global scope.

The functions containing build-time operations are not executed by `makepkg --printsrcinfo`, so their content is out of scope for this narrow gate. No genuinely malicious behavior is present in the code that would run during this step.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; only definitions and functions, printsrcinfo safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only definitions and functions, printsrcinfo safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file that instructs the tool to check for new versions of the deckcraft package by querying the upstream git repository at `https://github.com/storytold/deckcraft.git`. The file defines the source type, repository URL, and version prefix. No code execution, network requests outside the package’s own upstream, obfuscation, or dangerous operations are present. It follows normal packaging practices for version tracking. No security issues detected.
</details>
<evidence></evidence>
<summary>Safe version checker configuration</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe version checker configuration
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file automatically generated from a PKGBUILD by tools like `makepkg` or `mksrcinfo`. It functions purely as a metadata index for the AUR and does not contain any executable code or scripts.

The file declares a pinned upstream source tarball from the project's own GitHub repository (`storytold/deckcraft`), along with a SHA-256 checksum that must match at build time, which follows secure packaging practices. The dependencies listed are standard system libraries (`glibc`, `alsa-lib`, `hicolor-icon-theme`, `libgcc`) and a standard build tool (`cargo`), consistent with a normal Rust application. The project URL points to the application's expected homepage (`getartcraft.com`).

There is no evidence of obfuscation, dangerous commands, network exfiltration, unexpected file operations, or any other behavior that would indicate a supply-chain attack or malicious intent. This file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust project. The source is downloaded from the project's official GitHub releases page (`github.com/storytold/deckcraft`) with a valid pinned checksum. The build process fetches dependencies using `cargo fetch --locked` and compiles with `cargo build --frozen --release`, strictly adhering to the locked dependency versions and the declared source.

Installation commands only target the standard `$pkgdir` prefix. There is no network activity outside of the declared source and standard Rust tooling, no obfuscation, no `eval`, `base64`, or `curl|bash` patterns, and no unexpected system modifications. This is a clean, well-structured PKGBUILD with no evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a Rust project. No security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a Rust project. No security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,297
  Completion Tokens: 4,990
  Total Tokens: 15,287
  Total Cost: $0.001845
  Execution Time: 39.77 seconds

Final Status: SAFE


No issues found.
