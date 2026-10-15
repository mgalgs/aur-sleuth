---
package: opencode-v2-git
pkgver: 2.0.30.412b2b1d85
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11862
completion_tokens: 2537
total_tokens: 14399
cost: 0.001541176
execution_time: 37.49
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T23:04:33Z
file_verdicts:
  - file: shared-bun.patch
    status: safe
    summary: Benign build configuration patch; no malicious behavior or suspicious operations found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a git-based package; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious or injected behavior found.
---

Materializing opencode-v2-git from local mirror...
Materialized opencode-v2-git
Analyzing opencode-v2-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global (top-level) scope only contains variable assignments and function definitions. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other code execution at the top level that would execute when the file is sourced for `makepkg --printsrcinfo`. The functions `pkgver`, `prepare`, `build`, and `package` are defined but not invoked during this parsing step, so their contents are out of scope for this gate.

All variable definitions are standard metadata (package name, version, dependencies, sources, etc.). The `source` array uses a git+https URL referencing the official upstream repository, which is normal for a VCS package. The `sha256sums` entry for the git source is `SKIP`, which is expected for VCS packages and does not trigger any execution at parse time.

No obfuscated code, network requests, or data exfiltration would occur solely from sourcing this PKGBUILD to collect metadata.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing for metadata is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, shared-bun.patch...
LLM auditresponse for shared-bun.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch only modifies the upstream build configuration for the `opencode` CLI package. It changes `build.ts` to emit a plain Bun bundle instead of a standalone compiled executable: it sets `target: "bun"`, adds `outdir`/`naming` for output, removes the `compile` block and the `NativeArch.verify` call, and removes the `bytecode: true` option. All changes are consistent with the stated goal of producing a JS bundle to be run by the system Bun runtime rather than embedding a Bun runtime in a binary.

There is no evidence of malicious behavior: no network requests, no obfuscated code, no execution of fetched content, no tampering with files outside the package build, and no exfiltration of data. The patch does not introduce any commands that would alter the system or exfiltrate information. It is an ordinary, transparent packaging/build modification.
</details>
<evidence>
</evidence>
<summary>
Benign build configuration patch; no malicious behavior or suspicious operations found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed shared-bun.patch. Status: SAFE -- Benign build configuration patch; no malicious behavior or suspicious operations found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard AUR package metadata file for a `-git` package. It declares the upstream git repository, a `shared-bun.patch` source with a real SHA-256 checksum, and runtime dependencies (`bun`, `curl`, `glibc`, `icu`, `ripgrep`, `tar`). The `sha256sums = SKIP` for the git source is normal and required for VCS sources in Arch packaging. No build or install code is present in this file, so there are no commands to evaluate for malicious behavior.

The only point worth noting is that the package tracks the upstream git default branch rather than a pinned commit, which is typical for `-git` AUR packages. The patch file is checksum-pinned, and all declared dependencies and conflicts are consistent with a coding-agent package. There is no evidence of obfuscation, suspicious network behavior, data exfiltration, or injected malicious content.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for a git-based package; no security issues found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a git-based package; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR VCS packaging practices. It clones the package's declared upstream repository (`https://github.com/anomalyco/opencode`), applies a local patch with a fixed SHA-256 checksum, installs dependencies with `bun install --frozen-lockfile --ignore-scripts`, builds with the upstream build script, and installs the resulting bundle plus a launcher wrapper and shell completions into `$pkgdir`. The `sha256sums` entry of `SKIP` for the git source is expected and standard for `-git` packages; the unpinned git source is a reproducibility consideration, not evidence of malice.

The `git checkout -- packages/cli/script/build.ts` in `prepare()` restores that file from the already-cloned repo before applying the patch; it does not fetch unverified content. The `sed` command adjusts generated bundle asset paths to point at `/usr/lib/$pkgname`, which is routine packaging. Running the staged bundle during `package()` to generate completions executes the application's own build output, which is consistent with normal packaging workflows. There is no obfuscation, no unexpected network access, no execution of downloaded scripts via `curl|bash`, and no exfiltration or backdoor behavior.
</details>
<evidence></evidence>
<summary>
Standard AUR VCS PKGBUILD; no malicious or injected behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious or injected behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,862
  Completion Tokens: 2,537
  Total Tokens: 14,399
  Total Cost: $0.001541
  Execution Time: 37.49 seconds

Final Status: SAFE


No issues found.
