---
package: ripdrag
pkgver: 0.4.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11594
completion_tokens: 1955
total_tokens: 13549
cost: 0.001373747424
execution_time: 51.85
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:27:30Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Innocent nvchecker configuration file.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package, no malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative package metadata with pinned upstream source and checksum; no malicious behavior found.
---

Materializing ripdrag from local mirror...
Materialized ripdrag
Analyzing ripdrag AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source array, etc.) with no command substitutions, function calls, or dynamic code execution. The `source` array points to the official GitHub release archive via HTTPS, and the checksums are explicitly pinned. No code outside of functions (prepare, build, check, package) would be executed by `makepkg --printsrcinfo`. Therefore, running this command presents no security risk.
</details>
<evidence>
</evidence>
<summary>Global scope safe; no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope safe; no dangerous code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file for Git that specifies which files and directories to ignore. It contains only wildcard patterns and explicit exceptions. There is no executable code, no network requests, no obfuscation, and no suspicious behavior. This file is harmless and serves a routine development purpose.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for tracking upstream releases of the ripdrag project. It declares a single section `[ripdrag]` that points to the official GitHub repository `nik012003/ripdrag`, uses `use_latest_release = true`, and sets a version prefix of `v`. There is no executable code, no network destinations outside the project's own GitHub, and no obfuscated or suspicious content. It is purely declarative and follows normal packaging practices for version automation.
</details>
<evidence></evidence>
<summary>Innocent nvchecker configuration file.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Innocent nvchecker configuration file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a Rust crate hosted on GitHub. The source is fetched from the project's own GitHub archive with a pinned version and a valid SHA-256 checksum. The build uses `cargo fetch` and `cargo build --release --frozen`, which ensures deterministic builds from the locked dependencies. The `check()` function runs the binary and cargo tests. The `package()` function installs the binary, README, and license into standard locations. There are no suspicious network requests, obfuscated code, or unexpected system modifications. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Rust AUR package, no malicious content found.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package, no malicious content found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard, minimal `.SRCINFO` metadata file for the ripdrag package. It contains only declarative package metadata: name, description, version, URL, architecture, license, dependencies, and a single source entry. There is no build logic, no shell code, no install scripts, and no executable content present in this file.

The source is fetched from the project's own upstream GitHub repository at a pinned version tag (`v0.4.13`), and the `sha256sums` field contains a concrete hash rather than `SKIP`, so the tarball integrity is verifiable. Dependencies (gtk4, glib2, gdk-pixbuf2, pango, cargo) are appropriate for a GTK-based drag-and-drop terminal utility. There is no evidence of exfiltration, obfuscated code, unexpected network access, or any behavior that deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard declarative package metadata with pinned upstream source and checksum; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative package metadata with pinned upstream source and checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,594
  Completion Tokens: 1,955
  Total Tokens: 13,549
  Total Cost: $0.001374
  Execution Time: 51.85 seconds

Final Status: SAFE


No issues found.
