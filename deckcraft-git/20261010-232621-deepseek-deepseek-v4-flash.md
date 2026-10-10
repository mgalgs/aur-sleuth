---
package: deckcraft-git
pkgver: 0.4.0.r16.gd556ff9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10388
completion_tokens: 4258
total_tokens: 14646
cost: 0.00576188
execution_time: 101.67
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T23:26:21Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard cargo git PKGBUILD with no malicious or suspicious behavior. Safe.
  - file: .nvchecker.toml
    status: safe
    summary: Minimal nvchecker config with manual source; no security risk found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR -git metadata; no malicious behavior detected.
---

Materializing deckcraft-git from local mirror...
Materialized deckcraft-git
Analyzing deckcraft-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Analyzing the PKGBUILD for dangers during `makepkg --printsrcinfo` (which only sources the global/top-level scope). The file contains only standard variable assignments (strings, arrays), parameter expansions, and function definitions. There are **no command substitutions** (`$()` or backticks) at the top level that would execute arbitrary commands during sourcing. The `source` array definition (`git+$_url.git`) is a static string built from a hardcoded variable pointing to the project's own GitHub repository, standard for AUR VCS packages. The `sha256sums` SKIP is normal and irrelevant to this step. The `pkgver()`, `prepare()`, `build()`, and `package()` functions contain build logic (git describe, cargo, install) but are explicitly **not run** by `--printsrcinfo` per its defined scope. No external network calls, file exfiltration, or code execution is triggered at parse time.
</details>
<evidence></evidence>
<summary>Sourcing the PKGBUILD has no dangerous side effects.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing the PKGBUILD has no dangerous side effects.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a `-git` Rust/cargo package. The `source` is the package's own upstream GitHub repository with a `SKIP` checksum, which is normal and required for VCS sources. `prepare()` runs `cargo fetch --locked`, `build()` runs `cargo build --frozen --release`, and `package()` installs the resulting binaries, desktop/mime files, icons, and licenses into `$pkgdir`. These are all expected operations with no injected or hidden behavior.

There are no suspicious network destinations: the only fetched source is the declared upstream repository, and `cargo fetch` retrieves crates from Rust's standard registry according to the project's locked dependency set. There is no `eval`, base64, obfuscation, curl-piped-to-shell, exfiltration, backdoor, or modification of files outside the package's own install paths. The unpinned git HEAD and `SKIP` checksum are worth noting as supply-chain/hygiene considerations, but they are not evidence of malice and do not make this package UNSAFE.
</details>
<evidence>
</evidence>
<summary>
Standard cargo git PKGBUILD with no malicious or suspicious behavior. Safe.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard cargo git PKGBUILD with no malicious or suspicious behavior. Safe.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal nvchecker configuration used by AUR maintainers to manage package version checking. It defines a single package entry, `deckcraft-git`, and sets its source to `manual`, meaning version updates are handled manually rather than by querying an external service.

There is no executable code, no network fetching, no file modification, no obfuscation, and no use of dangerous commands. The content is entirely benign and consistent with standard AUR packaging tooling.
</details>
<evidence>
</evidence>
<summary>
Minimal nvchecker config with manual source; no security risk found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Minimal nvchecker config with manual source; no security risk found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares metadata only: pkgbase, version, URL, dependencies, and a VCS source. There are no embedded commands, scripts, network fetches beyond the declared upstream source, or file operations. The source (`git+https://github.com/storytold/deckcraft.git`) points to the project's own upstream repository, and `sha256sums = SKIP` is required and normal for VCS sources. The `url` field (`getartcraft.com`) differs from the source host, but this is a common pattern where a project's website and code hosting differ, and nothing in the file attempts to fetch from the URL field.

All dependencies (cargo, git, alsa-lib, glibc, hicolor-icon-theme, libgcc) are conventional build/runtime libraries for a GUI Rust application. The description mentioning "vibe coded" is unusual wording but not a security concern. No signs of obfuscation, credential theft, data exfiltration, or execution of attacker-controlled content.
</details>
<evidence>
</evidence>
<summary>
Standard AUR -git metadata; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR -git metadata; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,388
  Completion Tokens: 4,258
  Total Tokens: 14,646
  Total Cost: $0.005762
  Execution Time: 101.67 seconds

Final Status: SAFE


No issues found.
