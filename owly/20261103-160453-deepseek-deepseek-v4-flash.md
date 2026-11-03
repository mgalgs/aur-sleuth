---
package: owly
pkgver: 0.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11642
completion_tokens: 2670
total_tokens: 14312
cost: 0.001545362
execution_time: 21.87
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T16:04:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only; pinned upstream source and normal dependencies. No malicious behavior found.
  - file: owly.install
    status: safe
    summary: Standard package install hooks; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard cargo-based PKGBUILD; pinned checksum, upstream source, no malicious behavior
---

Materializing owly from local mirror...
Materialized owly
Analyzing owly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top level. Everything at that scope here is standard metadata and function definitions: `pkgname`, `pkgver`, `pkgrel`, `arch`, `depends`, `source`, `sha256sums`, etc. The source is fetched from the project's own upstream GitHub repository (`https://github.com/t4t5/owly`) and is pinned with a real sha256 checksum, not SKIP. There are no top-level command substitutions, no `eval`/`base64` decoding, and no network or file operations executed during sourcing.

The only executable-looking blocks are the definitions of `_tree`, `_unpack`, `_target`, `_cargo_env`, `prepare`, `build`, `check`, and `package`. These are merely defined, not invoked, by `--printsrcinfo`, so their `tar`, `cargo fetch`, `cargo build`, and `packaging/install.sh` calls cannot run at this step. `_cargo_env` uses only `rustc`/`sed` locally, and `_unpack` extracts the declared tarball into `srcdir` — both routine build helpers inside functions. No behavior in the sourced portion is malicious or dangerous for this command.
</details>
<evidence>
</evidence>
<summary>Top-level scope is plain metadata and function definitions; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is plain metadata and function definitions; no malicious execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, owly.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is only AUR package metadata (`.SRCINFO`), not executable code. It declares the expected upstream source at `https://github.com/t4t5/owly/archive/refs/tags/v0.4.2.tar.gz`, pinned with a SHA-256 checksum rather than `SKIP`. The dependencies, optional dependencies, and `noextract` directive are consistent with a networking/radio application and do not themselves indicate malicious behavior.

No suspicious network endpoints, obfuscated content, file operations, or dangerous commands are present. The referenced `owly.install` script would need separate review, but there is no evidence of a supply-chain attack in this `.SRCINFO`.
</details>
<evidence>
</evidence>
<summary>
Metadata only; pinned upstream source and normal dependencies. No malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, owly.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; pinned upstream source and normal dependencies. No malicious behavior found.
LLM auditresponse for owly.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch package install script. Its actions are limited to reloading NetworkManager configuration, printing a post-install message, and stopping or restarting the package's own `owlyd.service` based on the service state. These operations are consistent with applying the package's NetworkManager configuration and managing its own radio daemon.

There is no evidence of downloading or executing remote code, decoding obfuscated payloads, exfiltrating local data, modifying unrelated system files, or using dangerous constructs such as `eval` or `curl` piping into a shell. The service-control and NetworkManager reload behavior is normal for this package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard package install hooks; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed owly.install. Status: SAFE -- Standard package install hooks; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the `owly` package from its own upstream GitHub release tarball (`https://github.com/t4t5/owly/archive/refs/tags/v0.4.2.tar.gz`), with a pinned, real SHA-256 checksum (`64057d67296bd089fc711bcf3c7de79018586aeb3014cd4e061472ac70c6e1ff`, not `SKIP`). All network activity is directed at the project's own upstream. Build steps are standard Rust/cargo packaging: `cargo fetch --locked` in `prepare()` and `cargo build --frozen`/`cargo test --frozen` in `build()`/`check()`. The `--frozen`/`--locked` flags pin dependencies to the committed lockfile and prevent fetching unexpected code at build time, which is good hygiene.

The custom `noextract` + `_unpack()` is unusual but benign: the tarball is simply extracted with `--strip-components=1` into a controlled directory under `$srcdir`, and `prepare()` verifies `pkgver` against `Cargo.toml`. `package()` invokes the upstream `packaging/install.sh` contained in the checksummed tarball with `DESTDIR`/`TARGET` set — this is the project's own install script, not an injected payload, and is normal packaging practice.

There is no obfuscated code, no `eval`/`base64` decoding, no `curl|bash`, no exfiltration of local data, no tampering with unrelated system files, and no fetching or executing code from an unexpected host. Nothing here deviates from ordinary AUR packaging behavior.
</details>
<evidence></evidence>
<summary>Standard cargo-based PKGBUILD; pinned checksum, upstream source, no malicious behavior</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard cargo-based PKGBUILD; pinned checksum, upstream source, no malicious behavior
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,642
  Completion Tokens: 2,670
  Total Tokens: 14,312
  Total Cost: $0.001545
  Execution Time: 21.87 seconds

Final Status: SAFE


No issues found.
