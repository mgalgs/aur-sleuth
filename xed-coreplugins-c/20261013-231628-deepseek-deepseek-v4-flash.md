---
package: xed-coreplugins-c
pkgver: 0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10114
completion_tokens: 1774
total_tokens: 11888
cost: 0.001243242
execution_time: 22.84
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:16:28Z
file_verdicts:
  - file: changes.diff
    status: safe
    summary: Benign plugin module renames; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; VCS upstream, no suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; builds upstream git source with meson, no malicious behavior found.
---

Materializing xed-coreplugins-c from local mirror...
Materialized xed-coreplugins-c
Analyzing xed-coreplugins-c AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level content consists solely of standard metadata assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, and `sha256sums`). There are no top-level command substitutions, function calls, eval-style constructs, network requests, or file-modifying operations that would execute during sourcing.

The `prepare()`, `build()`, and `package()` functions contain the project's actual build and install steps, but those functions are not executed by `makepkg --printsrcinfo`, so they are outside the scope of this narrow gate. The `SKIP` checksum for the git source is a reproducibility/hygiene consideration, not a risk at this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables; no malicious code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, changes.diff...
LLM auditresponse for changes.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This diff only changes the `Module=` values in four `.plugin` files, renaming the loaded plugin modules to their C implementations (`bracketcompletion-c`, `joinlines-c`, `open-uri-context-menu-c`, `textsize-c`). There are no network operations, no command execution, no encoded or obfuscated content, no file-system modifications outside packaging, and no changes to build or install logic. The edits are consistent with a routine package/upstream update that switches these plugins to alternate implementations.
</details>
<evidence>
</evidence>
<summary>
Benign plugin module renames; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed changes.diff. Status: SAFE -- Benign plugin module renames; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file only declares package metadata: name, description, version, dependencies, and sources. The VCS source points to the project's own upstream repository on Codeberg (`git+https://codeberg.org/ItsZariep/xed-coreplugins-c#branch=main`), which is normal for an AUR VCS package. The `sha256sums = SKIP` entry corresponds to the VCS source and is standard practice; the additional `changes.diff` source has a real SHA-256 checksum, which is good hygiene.

There is no suspicious network destination, no encoded or obfuscated content, no dangerous command execution, and no behavior outside routine packaging metadata. The branch-based VCS source is unpinned, which is a reproducibility/hygiene note common to VCS packages, but it is not evidence of malice. No genuinely malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata; VCS upstream, no suspicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; VCS upstream, no suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git`-style source package. It clones the project's own upstream repository from Codeberg, applies a patched diff that is pinned with a SHA-256 checksum, builds with meson/ninja, and installs the resulting plugin files into `$pkgdir`. The `sha256sums=(&apos;SKIP&apos; ...)` entry is normal and expected for a git branch source.

The `package()` function renames built `.so` and `.plugin` files by inserting `-c` before their extension. This is consistent with the package description about providing C-rewritten versions of existing plugins and does not modify anything outside the package staging directory. There are no suspicious network calls, encoded commands, eval usage, or file operations outside the package build/install scope.

The use of a mutable `main` branch rather than a pinned commit is a reproducibility/hygiene consideration, but it is not malicious. No genuinely dangerous or supply-chain-related behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; builds upstream git source with meson, no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; builds upstream git source with meson, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,114
  Completion Tokens: 1,774
  Total Tokens: 11,888
  Total Cost: $0.001243
  Execution Time: 22.84 seconds

Final Status: SAFE


No issues found.
