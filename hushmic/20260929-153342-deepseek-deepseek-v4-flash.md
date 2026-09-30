---
package: hushmic
pkgver: 0.10.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10006
completion_tokens: 2731
total_tokens: 12737
cost: 0.0011802084
execution_time: 44.41
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:33:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum and upstream HTTPS source; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
---

Materializing hushmic from local mirror...
Materialized hushmic
Analyzing hushmic AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and function definitions (prepare, build, package) in its global scope. There are no command substitutions, backtick executions, or dangerous commands (e.g., curl, wget, eval) that would execute when the file is sourced. The `makedepends` array includes `curl`, but that is a static string, not an executed command. Sourcing this file to run `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard, well-formed AUR package metadata file for `hushmic`, a real-time microphone noise suppression tool. The source tarball is fetched over HTTPS from the project's own upstream GitHub repository at a tagged release (`v0.10.1`), and the `sha256sums` entry is pinned to an actual hash rather than set to `SKIP` — both are good hygiene practices.

The declared dependencies (`pipewire`, `pipewire-pulse`, `wireplumber`, `onnxruntime`, `rust`, `cargo`, `python`) are all consistent with the package's stated purpose of running a neural-network-based (DPDFNet/ONNX) virtual microphone on PipeWire. The presence of `curl` in `makedepends` is worth a passing note — it is often used to fetch ML model weights during the build — but that is a build-time behavior to verify in the PKGBUILD, not evidence of malice in this file.

No obfuscation, encoded commands, suspicious network destinations, exfiltration, backdoors, or unexpected file operations are present. This is ordinary packaging metadata and presents no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksum and upstream HTTPS source; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum and upstream HTTPS source; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust project. The source is pinned with a SHA-256 checksum. The `prepare()` function runs `cargo fetch` and executes `./scripts/setup-assets.sh`, which is part of the pinned upstream tarball and is expected to download and verify model files as part of the normal build process. No obfuscated code, unexpected network requests, exfiltration, backdoors, or dangerous commands like `eval`, `curl|bash`, or `base64` are present. The `curl` dependency in `makedepends` is for Cargo fetching, not directly used in the PKGBUILD. The build uses `--frozen` to prevent network access after fetching. The packaging commands are all standard `install` calls. There is no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,006
  Completion Tokens: 2,731
  Total Tokens: 12,737
  Total Cost: $0.001180
  Execution Time: 44.41 seconds

Final Status: SAFE


No issues found.
