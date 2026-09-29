---
package: awatcher-bundle
pkgbase: awatcher
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8901
completion_tokens: 2896
total_tokens: 11797
cost: 0.0011210759
execution_time: 51.33
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T19:22:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD uses pinned sources and standard Rust/npm builds; no malicious behavior found.
---

awatcher-bundle is built from awatcher
Materializing awatcher-bundle from local mirror...
Materialized awatcher-bundle
Analyzing awatcher-bundle AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (pkgbase, pkgname, source, sha256sums, etc.). There are no command substitutions, function calls, or dangerous operations (eval, curl, wget) that would execute during `makepkg --printsrcinfo`. The `git clone` and other potentially risky commands are located inside `prepare()` and `build()` functions, which are not invoked by `--printsrcinfo`. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch User Repository metadata file. It defines the package name, version, architecture, dependencies, and a source tarball from the project's own GitHub releases page. The source SHA-256 checksum is provided (not skipped), ensuring integrity. No executable code, network requests, obfuscation, or unexpected operations are present. The content is entirely consistent with normal AUR packaging practices and contains no security threats.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practice. The primary source is a pinned GitHub release tarball with a fixed sha256 checksum. In prepare(), it additionally clones the official ActivityWatch aw-webui repository and checks out a specific commit (291da6f2c5e7a6b896f23a4eec5ffed9874321ba), then updates submodules to the commits recorded in that checkout; this is ordinary upstream dependency fetching, not execution of an unknown remote. The build runs cargo with --frozen/--locked and npm ci against the project's lockfile, then invokes vue-demi's postinstall script to make the upstream web UI build work. There is no obfuscation, no data exfiltration, no unexpected remote host, no curl-pipe-bash, and no tampering with files outside the package build/install scope.

Minor hygiene notes, not security threats: cloning aw-webui inside prepare() instead of listing it in the source array avoids an explicit checksum for the clone, and npm ci can run dependency install scripts; however, the checkout is pinned and the npm behavior is part of the upstream build. Nothing here meets the bar for malicious supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD uses pinned sources and standard Rust/npm builds; no malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD uses pinned sources and standard Rust/npm builds; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,901
  Completion Tokens: 2,896
  Total Tokens: 11,797
  Total Cost: $0.001121
  Execution Time: 51.33 seconds

Final Status: SAFE


No issues found.
