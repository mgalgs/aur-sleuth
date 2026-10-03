---
package: eon-git
pkgver: r499.03b2da5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10719
completion_tokens: 1869
total_tokens: 12588
cost: 0.000404796
execution_time: 34.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T03:11:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A normal .gitignore for an AUR package repository.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, safe.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content or behavior found.
---

Materializing eon-git from local mirror...
Materialized eon-git
Analyzing eon-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only evaluates top-level variable assignments and function definitions. The top-level code contains only standard metadata assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and no command substitutions, external downloads, or execution of code outside function bodies. The potentially interesting operations (`git submodule update`, `cmake`, `make`) are inside `prepare()`/`build()`/`package()` and are not executed during this step. The `SKIP` checksums are irrelevant for this gate because no sources are fetched or verified when running `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD sourcing is safe; dangerous code is only in functions not executed here.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; dangerous code is only in functions not executed here.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration for an AUR package repository. It uses negation patterns to selectively include files relevant to packaging (PKGBUILD, .SRCINFO, install scripts, patches, config files, etc.) while ignoring build artifacts and VCS detritus. There are no commands, network operations, file modifications, or hidden behaviors. This is a routine configuration file with no security implications.
</details>
<evidence></evidence>
<summary>A normal .gitignore for an AUR package repository.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A normal .gitignore for an AUR package repository.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for an AUR VCS package. All sources are fetched from the upstream project's GitHub repositories (tom/eon, adsr/mlbuf, tomas/termbox), with SKIP checksums as required for git sources. The prepare() phase correctly initializes submodules from pre-fetched local sources, links against system luajit, and applies a minor patch to remove the Werror flag from termbox. Build() and package() use normal make and install commands. There are no suspicious network requests, obfuscated code, or unauthorized system modifications. The only slightly unusual step is `ar rcs luajit/src/libluajit.a` with no object files (creating an empty archive), but this is a benign build workaround.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git PKGBUILD, safe.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `eon-git` package. It declares the package name, version, dependencies, architecture, and VCS sources from the upstream project and its related dependencies. There is no build logic, shell code, or install script present in this file, so there is no opportunity for command execution, obfuscation, or data exfiltration.

The `sha256sums = SKIP` entries are expected and normal for VCS-based sources, since git checkouts do not have precomputed tarball checksums. All sources point to `github.com` repositories related to the package, which is consistent with the package's upstream origin. No suspicious URLs, unexpected hosts, encoded payloads, or dangerous operations are present.

This file contains only declarative packaging metadata and does not deviate from standard AUR practice. No security issues were found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file; no malicious content or behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content or behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,719
  Completion Tokens: 1,869
  Total Tokens: 12,588
  Total Cost: $0.000405
  Execution Time: 34.46 seconds

Final Status: SAFE


No issues found.
