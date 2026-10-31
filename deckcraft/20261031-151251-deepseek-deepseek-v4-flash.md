---
package: deckcraft
pkgver: 0.13.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10277
completion_tokens: 5425
total_tokens: 15702
cost: 0.001922557
execution_time: 35.58
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T15:12:51Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config pointing to upstream git repo.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for a Rust application.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with pinned source and checksum.
---

Materializing deckcraft from local mirror...
Materialized deckcraft
Analyzing deckcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs standard variable assignments and function definitions at the global scope. No top-level command substitutions, backticks, `eval`, or function invocations are present that would be executed when the file is sourced by `makepkg --printsrcinfo`.

The functions `_srcenv`, `prepare`, `build`, and `package` are defined but are never called during this step. The commands inside them (`cargo fetch`, `cargo build`, `install`) will execute later during the full build but are explicitly out of scope for this initial gate. The package uses an upstream Rust build system (`cargo`) and standard installation paths, consistent with the project's stated purpose as a straightforward application build. No obfuscation, encoded payloads, or unexpected network destinations are triggered at parse time.
</details>
<evidence></evidence>
<summary>No code execution at global scope; standard package definitions only.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No code execution at global scope; standard package definitions only.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an nvchecker configuration specifying that the upstream source for the `deckcraft` package is a git repository at `https://github.com/storytold/deckcraft.git`, with version tags prefixed by `v`. This is a standard, benign package version-checking configuration. It does not contain any executed code, network requests beyond the declared upstream repository, or any other suspicious behavior. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard nvchecker config pointing to upstream git repo.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to upstream git repo.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust-based application. The source is a pinned tarball from the project's own GitHub releases with a hardcoded SHA-256 checksum, ensuring integrity. The build uses `cargo fetch --locked` and `cargo build --frozen`, which respect the lockfile and prevent unexpected dependency changes. The install steps copy only the application's own files into the package directory. There is no obfuscated code, no eval/inline execution, no network requests outside the declared upstream source, and no exfiltration or backdoor mechanisms. The file is clean.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD for a Rust application.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for a Rust application.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest that describes the package version, dependencies, license, and upstream source. It does not contain any executable code, scripts, or instructions.

The `source` field points to a tagged release tarball on GitHub (`v0.13.1`), and a specific SHA-256 checksum is provided to verify the integrity of that tarball. This represents a pinned, verifiable source, which follows security best practices for packaging.

No obfuscated strings, suspicious network destinations beyond the project's own release archive, or deviation from standard AUR declarative conventions are present. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Declarative metadata file with pinned source and checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with pinned source and checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,277
  Completion Tokens: 5,425
  Total Tokens: 15,702
  Total Cost: $0.001923
  Execution Time: 35.58 seconds

Final Status: SAFE


No issues found.
