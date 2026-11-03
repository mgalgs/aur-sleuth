---
package: openfoam-org
pkgbase: openfoam
pkgver: 14.20261008+a4867fc
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15351
completion_tokens: 2338
total_tokens: 17689
cost: 0.001822457
execution_time: 18.24
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T12:15:24Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain ISC-style license text; no code or suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; upstream pinned source; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard OpenFOAM PKGBUILD; pinned upstream git source, no malicious behavior.
  - file: openfoam.install
    status: safe
    summary: Informational install hooks that only echo user notices; no malicious behavior.
---

openfoam-org is built from openfoam
Materializing openfoam-org from local mirror...
Materialized openfoam-org
Analyzing openfoam-org AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes the top-level variable assignments and array definitions. These are standard metadata definitions, parameter expansions on `pkgver`, and a `source` array pointing to the upstream OpenFOAM GitHub repository pinned to a commit. No top-level command substitution, network fetch, decoding, `eval`, or data exfiltration occurs.

The `prepare()`, `build()`, and `package()` functions contain build and packaging commands, including sourcing the upstream `etc/bashrc`, but function bodies are not executed during `--printsrcinfo`. The checksum values are not relevant to this narrow gate. No malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>Top-level code only defines normal package metadata; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only defines normal package metadata; no malicious execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text permissive software license (ISC-style), containing only a copyright notice, a grant of permission, a warranty disclaimer, and a liability limitation. It contains no executable code, no shell commands, no network operations, no file system modifications, and no obfuscated or encoded content.

There is nothing here that deviates from standard packaging or licensing practice; the file is inert text and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Plain ISC-style license text; no code or suspicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE, openfoam.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, openfoam.install...
+ Reviewed LICENSE. Status: SAFE -- Plain ISC-style license text; no code or suspicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` generated from a PKGBUILD. It defines package metadata, dependencies, an install script, and a single upstream source: `git+https://github.com/OpenFOAM/OpenFOAM-14.git#commit=a4867fc`, pinned to a specific commit on the project's official GitHub repository. This is consistent with normal packaging practice for a source-built package.

No suspicious network requests, encoded commands, file exfiltration, privilege escalation, or unrelated executable content are present. The checksums correspond to the declared sources, and there is no evidence of injected malicious behavior in this metadata file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; upstream pinned source; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, openfoam.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; upstream pinned source; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a large scientific package. The sole upstream source is fetched via `git+https://github.com/OpenFOAM/OpenFOAM-${_pkgver}.git` pinned to a specific commit (`#commit=${_commit}`), and both sources (the git checkout and the local `openfoam.install`) have real SHA-256 checksums rather than `SKIP`. The build uses the upstream OpenFOAM workflow (`wmakeLnIncludeAll`, `./Allwmake`) after sourcing the upstream `etc/bashrc`, and installation copies the built tree into `/opt/OpenFOAM` plus a `profile.d` file — routine `install`/`cp` operations scoped to `$pkgdir`.

The `prepare()` function only performs local, packaging-related edits: rewriting `WM_PROJECT_VERSION` and `FOAM_INST_DIR`, writing an `etc/prefs.sh` selecting system libraries (scotch/metis/parmetis/zoltan), and adjusting an `-isystem`-to-`-I` conversion in an upstream Makefile for dependency tracking. There are no network fetches other than the declared upstream git clone, no `curl`/`wget`/`eval`/base64-obfuscated payloads, no exfiltration, no tampering outside the package's own build directory, and no build-time `git pull`/`git fetch` of mutable refs. This is consistent with legitimate OpenFOAM packaging; nothing malicious or out of scope is present.

Minor hygiene notes (not threats): `source etc/bashrc || true` runs upstream build-environment code, which is expected for this package, and `options=(!strip !buildflags)` is an upstream-build requirement.
</details>
<evidence>
</evidence>
<summary>
Standard OpenFOAM PKGBUILD; pinned upstream git source, no malicious behavior.
</summary>
</security_assessment>

[3/4] Reviewing openfoam.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard OpenFOAM PKGBUILD; pinned upstream git source, no malicious behavior.
LLM auditresponse for openfoam.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`openfoam.install`) containing only the `post_install` and `post_upgrade` hooks. Both functions simply print informational `echo` messages to the user about where OpenFOAM installs, how to source its environment, and that the ThirdParty bundle is not included. `post_upgrade` merely delegates to `post_install`.

There are no network requests, no `eval`/`base64`/`curl`/`wget`, no file operations, no environment exfiltration, and no system modifications beyond printing text. The variable `${1%%.*}` extracts the major version from the passed package version for display only. This is exactly the routine, expected content of a package install message hook and shows no evidence of malicious injection.
</details>
<evidence>
</evidence>
<summary>
Informational install hooks that only echo user notices; no malicious behavior.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed openfoam.install. Status: SAFE -- Informational install hooks that only echo user notices; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,351
  Completion Tokens: 2,338
  Total Tokens: 17,689
  Total Cost: $0.001822
  Execution Time: 18.24 seconds

Final Status: SAFE


No issues found.
