---
package: penguin-burner
pkgver: 0.7.9
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 8540
completion_tokens: 1118
total_tokens: 9658
cost: 0.00087199392
execution_time: 32.48
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 550
upstream_named_files: 1
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T03:27:11Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
---

Cloning https://aur.archlinux.org/penguin-burner.git...
Cloned penguin-burner
Analyzing penguin-burner AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and source URLs in its global scope. No top-level command substitutions, function calls, or code that executes during sourcing. The `source` array contains a single GitHub tarball with a SKIP checksum, which is permissible and will be handled by `makepkg` during source fetching. Neither `pkgver()` (absent) nor any other code runs during the two specified commands. The `build()` and `package()` functions contain the actual operations but are not executed due to `--nobuild` and `--noprepare`. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.</details>
<evidence></evidence>
<summary>No dangerous code executes at source-fetch or parse stage.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes at source-fetch or parse stage.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: penguin-burner-0.7.9.tar.gz::https://github.com/jpietek/PenguinBurner/archive/refs/tags/v0.7.9.tar.gz
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/PenguinBurner-0.7.9/burnerd/Cargo.toml); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 550 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python/Rust project. It downloads the upstream source from the official GitHub repository, builds a Python wheel with `python -m build` and a Rust daemon with `cargo build`. The `sha256sums` entry is `SKIP`, which is standard for VCS/pinned-release sources and is not a security issue per the guidelines. The environment variables `PENGUIN_BURNER_REQUIRE_NATIVE_LAYER` and `PENGUIN_BURNER_REQUIRE_NVAPI_SHIM` are used to control build features, and the conditional PATH adjustments and linker fallback are pragmatic workarounds for toolchain availability on certain distributions. No obfuscated code, network requests to unexpected hosts, or suspicious file operations are present. The script only interacts with the package's own build artifacts and installs them to expected locations.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely metadata describing the AUR package. It declares the package name, version, upstream URL, dependencies, and a single source tarball from the project&#x27;s own GitHub repository. The checksum is set to `SKIP`, which is not inherently malicious—it is a common practice, especially for VCS sources, and is flagged as a hygiene concern rather than evidence of malice. No network fetches, obfuscated code, dangerous commands, or unexpected file operations are present. The file conforms to standard AUR packaging format and contains no injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,540
  Completion Tokens: 1,118
  Total Tokens: 9,658
  Total Cost: $0.000872
  Execution Time: 32.48 seconds

Final Status: SAFE


No issues found.
