---
package: nstream
pkgver: 1.43.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10444
completion_tokens: 2801
total_tokens: 13245
cost: 0.000449288
execution_time: 58.66
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T19:05:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with pinned checksum; no security issues.
  - file: nstream.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR PKGBUILD: pinned upstream checksum, normal Python build, no malicious behavior found."
---

Materializing nstream from local mirror...
Materialized nstream
Analyzing nstream AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments at the top level (package metadata, source URL, checksums). No command substitutions, backticks, eval, or other executable constructs appear outside of function bodies. The functions `build()`, `check()`, and `package()` are defined but are **not** executed by `makepkg --printsrcinfo` — that command merely sources the file, which only runs top-level statements. Therefore, no malicious code can execute during this parsing step. The source URL and checksum are simple string assignments and pose no runtime threat.
</details>
<evidence></evidence>
<summary>No top‑level code execution; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top‑level code execution; only variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, nstream.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the nstream package. The source is a tarball fetched from the project's official GitHub releases page, with a valid SHA256 checksum provided. No suspicious URLs, encoded data, or unusual dependencies are present. The optdepends are legitimate optional dependencies for streaming and GPU acceleration. There is no evidence of any malicious or dangerous behavior in this file.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with pinned checksum; no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, nstream.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with pinned checksum; no security issues.
LLM auditresponse for nstream.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `nstream.install` is a standard Arch Linux package install script containing only informational output for the user. The `post_install()` function prints a message guiding the user on how to create a configuration directory, copy an example config file, set permissions, and retrieve an API token from the service's official website. The `post_upgrade()` function is empty (no-op). There are no network requests, no execution of downloaded code, no obfuscation, no dangerous commands, and no modification of system files beyond the package's own configuration. The file is completely benign and consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed nstream.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The single source is the project's own upstream GitHub release tarball (`https://github.com/gianlucamazza/nstream/archive/refs/tags/v1.43.0.tar.gz`), fetched over HTTPS with a pinned sha256 checksum. There is no obfuscation, no base64/eval/curl-download patterns, and no unexpected network destinations — the URL matches the package's declared `url`.

The `build()`, `check()`, and `package()` functions use ordinary Python packaging tooling (`python -m build`, `pytest`, `python -m installer`) and only write into `$pkgdir` via `install`. Nothing touches system files outside the package destination. The package's torrent-streaming purpose (Stremio-like client with debrid/P2P playback via mpv) and its optdepends (torrserver-bin, catt, chafa, libva-utils) are upstream application functionality, not evidence of an injected supply-chain attack. The referenced `nstream.install` file is not part of the provided content and cannot be reviewed here, but referencing a `.install` file is itself a standard AUR mechanism.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD: pinned upstream checksum, normal Python build, no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD: pinned upstream checksum, normal Python build, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,444
  Completion Tokens: 2,801
  Total Tokens: 13,245
  Total Cost: $0.000449
  Execution Time: 58.66 seconds

Final Status: SAFE


No issues found.
