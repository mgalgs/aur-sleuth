---
package: hyprlume
pkgver: 0.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9614
completion_tokens: 1663
total_tokens: 11277
cost: 0.00116460
execution_time: 26.63
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T12:22:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package, no malicious behavior found.
---

Materializing hyprlume from local mirror...
Cloning https://aur.archlinux.org/hyprlume.git...
Cloned hyprlume
Analyzing hyprlume AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this file, the top-level scope consists exclusively of standard variable assignments (`pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha256sums`, `noextract`, etc.). There are no top-level command substitutions, no calls to `curl`/`wget`/`eval`/`base64`, no external network requests, and no obfuscated content. Nothing dangerous executes merely by sourcing this file.

The `prepare()`, `build()`, `check()`, and `package()` functions contain only routine Rust/cargo build and `install` operations, and they do not run during `--printsrcinfo` anyway. The source URLs point to the package's own upstream repository and the official sherpa-onnx GitHub releases; the sherpa-onnx tarballs have pinned sha256 checksums. The `SKIP` checksum on the git source is a reproducible-builds hygiene note for the full audit, but it is explicitly not grounds to fail this gate, and no source is downloaded at this step.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only static variable assignments; no code executes dangerously during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only static variable assignments; no code executes dangerously during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file describing the package `hyprlume`. It contains no executable code, only package metadata fields (pkgver, dependencies, sources, checksums). The git source uses `sha256sums = SKIP`, which is normal for VCS sources and not a security concern. The binary tarballs from `github.com/k2-fsa/sherpa-onnx` are pinned with specific version tags and have valid `sha256sums`. All URLs point to the package's own upstream repository or a known dependency release host (GitHub). No suspicious network requests, obfuscation, file operations, or deviation from standard packaging practices are present. The dependencies are typical for a Hyprland-related application (quickshell, qt6, Hyprland, PipeWire, etc.). No evidence of malicious or unsafe behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust application (hyprlume) with an external native dependency (sherpa-onnx). The primary source is pinned to a specific git tag, and the architecture-specific sherpa-onnx archives are downloaded from official GitHub releases with valid SHA-256 checksums. All build steps (`cargo fetch`, `cargo build`, `cargo test`, `install`) are ordinary and expected. No obfuscated code, unexpected network requests, dangerous commands, or data exfiltration is present. The SKIP checksum for the git source is normal for VCS sources and is not a security concern.
</details>
<evidence></evidence>
<summary>Standard Rust AUR package, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,614
  Completion Tokens: 1,663
  Total Tokens: 11,277
  Total Cost: $0.001165
  Execution Time: 26.63 seconds

Final Status: SAFE


No issues found.
