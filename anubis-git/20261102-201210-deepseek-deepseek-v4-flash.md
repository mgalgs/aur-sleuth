---
package: anubis-git
pkgver: r102.g878b371
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7659
completion_tokens: 1189
total_tokens: 8848
cost: 0.000913367
execution_time: 19.2
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:12:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; tracks upstream GitHub repo, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD; no malicious behavior found.
---

Materializing anubis-git from local mirror...
Materialized anubis-git
Analyzing anubis-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only ordinary variable assignments: `_pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`/`makedepends`, `provides`/`conflicts`, and the `source` array pointing at the project's own upstream (`git+https://github.com/TecharoHQ/anubis`). There are no command substitutions, `eval`s, encoded blobs, network fetches, or file writes at global scope, so sourcing the file for `makepkg --printsrcinfo` executes nothing beyond simple assignments.

The `pkgver()`, `build()`, and `package()` functions are not run by `--printsrcinfo` and are therefore out of scope for this gate. They appear to be conventional Go/npm build steps invoking the upstream build system and installing into `$pkgdir`. `md5sums=("SKIP")` is normal for a VCS source and is not grounds to fail here (no sources are downloaded or verified at this step); it is simply an unpinned-source hygiene note for the full audit.
</details>
<evidence>
</evidence>
<summary>Only variable assignments at top level; no execution on parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable assignments at top level; no execution on parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard-generated `.SRCINFO` file for the `anubis-git` VCS package. It contains only routine packaging metadata derived from the PKGBUILD: package description, version (`r102.g878b371`), URL, architectures, license, makedepends (Go, git, esbuild, nodejs, npm, zstd, brotli, gzip, nodejs-postcss), provides/conflicts, and the single source `git+https://github.com/TecharoHQ/anubis`, which is the package's declared upstream repository.

No code is executed here, and there are no network calls, file operations, obfuscated blobs, or embedded commands. The `md5sums = SKIP` entry is the expected and required treatment for a VCS (git) source and is not evidence of malice. The only AUR convention worth noting is that the source tracks the upstream default branch rather than a pinned commit, which is ordinary for a `-git` package but means build content is not reproducible/verified from this file alone. Nothing in this metadata deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata; tracks upstream GitHub repo, no malicious content.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; tracks upstream GitHub repo, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows a standard VCS package pattern: it clones the declared upstream repository from `https://github.com/TecharoHQ/anubis`, derives `pkgver` from git, and builds with the upstream Makefile, npm, and Go toolchain. Checksums are set to `SKIP`, which is expected for a `-git` VCS source and is not evidence of malicious behavior.

The `npm install postcss postcss-cli` call fetches build dependencies from the npm registry at build time. This is a reproducibility and supply-chain hygiene consideration, but it is not an injected malicious action, and no obfuscation, exfiltration, unexpected remote download/execution, or tampering with unrelated system files was found. Installation targets only `$pkgdir` paths for the application binary and its systemd unit.
</details>
<evidence>
</evidence>
<summary>Standard VCS PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,659
  Completion Tokens: 1,189
  Total Tokens: 8,848
  Total Cost: $0.000913
  Execution Time: 19.20 seconds

Final Status: SAFE


No issues found.
