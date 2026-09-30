---
package: authpass-bin
pkgver: 1.9.12_2178
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10436
completion_tokens: 2573
total_tokens: 13009
cost: 0.001380658692
execution_time: 49.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-21T07:35:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; SKIP checksums noted but no malicious behavior found.
  - file: authpass.sh
    status: safe
    summary: Standard wrapper script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
---

Materializing authpass-bin from local mirror...
Materialized authpass-bin
Analyzing authpass-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD was examined for code that executes at global/top-level scope during `makepkg --printsrcinfo`. Only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (pkgver, prepare, package) are present. No command substitutions, downloads, file operations, or dangerous commands (eval, base64, curl, wget) appear in the top-level scope. The `sha256sums` entries include two `SKIP` values, which is a common practice (especially for binary/VCS sources) and does not execute any code at this stage. All potentially dangerous code resides inside functions (`prepare`, `package`) which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>Sourcing PKGBUILD is safe; no top-level malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no top-level malicious code.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: authpass-1.9.12_2178.deb::https://authpass-data.codeux.design/data/artifacts/authpass-linux-latest.deb, pkgver.txt::https://authpass-data.codeux.design/data/artifacts/authpass-linux-latest.deb.txt
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, authpass.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for `authpass-bin`. It declares the package name, version, dependencies, and three sources: two artifacts downloaded over HTTPS from `authpass-data.codeux.design` (the project's own artifact host) and a local `authpass.sh` script with a pinned sha256 checksum.

The two artifact sources have `SKIP` checksums and use an unpinned `latest` URL. These are trust/hygiene concerns rather than evidence of malice: they are common for prebuilt binary packages and are not, by themselves, a supply-chain attack. No suspicious commands, obfuscation, unexpected network destinations, or file/system modification behavior is present in this metadata file. The `.deb` and version file are fetched from the application's declared upstream, which is expected.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; SKIP checksums noted but no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, authpass.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; SKIP checksums noted but no malicious behavior found.
LLM auditresponse for authpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launch wrapper script. It sets environment variables (PATH, LD_LIBRARY_PATH), changes to the application directory, and executes the binary with user-provided arguments. No suspicious network requests, obfuscation, or dangerous commands are present. The use of `@appname@` and `@runname@` placeholders is typical for AUR template scripts that get substituted at build time. No supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed authpass.sh. Status: SAFE -- Standard wrapper script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository package file for the binary distribution of Authpass, a password manager. It downloads a pre-built `.deb` package from `authpass-data.codeux.design`, a domain likely associated with the upstream project (the official GitHub is `authpass/authpass`). The `sha256sums` for the downloaded files are set to `SKIP`, which is a trust/hygiene choice but not inherently malicious. The `prepare()` and `package()` functions perform routine operations: extracting the `.deb`, applying `sed` substitutions to configuration files, and installing binaries, libraries, desktop files, and icons into the package directory. No suspicious commands (e.g., `curl|bash`, `eval`, `base64`, `exec`) or obfuscated code are present. The file does not attempt to exfiltrate data, install backdoors, or fetch and execute code from unexpected sources. While the use of SKIP checksums and a non-GitHub download URL may be considered imperfect packaging, they do not constitute evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,436
  Completion Tokens: 2,573
  Total Tokens: 13,009
  Total Cost: $0.001381
  Execution Time: 49.40 seconds

Final Status: SAFE


No issues found.
