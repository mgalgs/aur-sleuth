---
package: hermes-agent-desktop-bin
pkgver: 0.22.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10045
completion_tokens: 1765
total_tokens: 11810
cost: 0.001235325
execution_time: 17.47
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:10:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore allowlisting PKGBUILD; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with pinned prebuilt source; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt-package wrapper; pinned checksum, no malicious code.
---

Materializing hermes-agent-desktop-bin from local mirror...
Materialized hermes-agent-desktop-bin
Analyzing hermes-agent-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only ordinary variable assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `depends`, `optdepends`, `provides`, `conflicts`, `options`, `_artifact`, `source`, `noextract`, `sha256sums`). There are no command substitutions, no `eval`, no encoded/obfuscated strings, no top-level network calls, and no global code that would run during `makepkg --printsrcinfo`. Sourcing the file is therefore inert.

The only executable code lives in `package()`, which is out of scope for this gate: it simply extracts the `./usr` payload from the downloaded artifact with `bsdtar -xf` into `"$pkgdir"` — standard behavior for a re-wrap/prebuilt-binary package. The `source` points at the maintainer's own GitHub release asset and carries a pinned `sha256sums` value (not `SKIP`), and `noextract` prevents makepkg from unpacking it prematurely. Nothing here downloads or executes untrusted code at parse time; the earlier-global concerns (skip checksum, unpinned source) do not apply.
</details>
<evidence>
</evidence>
<summary>Global scope is only variable assignments; no execution at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is only variable assignments; no execution at parse time.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR repository `.gitignore`. It ignores all files by default (`*`) and explicitly un-ignores only `.gitignore`, `PKGBUILD`, and `.SRCINFO`, which is the conventional allowlist pattern used by AUR maintainers to keep the git repo limited to packaging metadata.

There are no network requests, no command execution, no obfuscation, and no file or system modifications. This is purely a git ignore configuration and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore allowlisting PKGBUILD; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore allowlisting PKGBUILD; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is only AUR package metadata (.SRCINFO). It declares a prebuilt binary tarball fetched from a GitHub release associated with the package maintainer and pins it with a SHA-256 checksum. The declared depends/optdepends and install options are consistent with an Electron desktop application package.

There are no commands, scripts, network operations, obfuscated content, file-system modifications, or execution paths in this file. The use of a non-upstream release repository for a prebuilt binary is a trust/hygiene consideration rather than evidence of malicious behavior, especially since the checksum is pinned rather than SKIP.
</details>
<evidence>
</evidence>
<summary>Metadata-only AUR file with pinned prebuilt source; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with pinned prebuilt source; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward "prebuilt wrapper" package: it declares dependencies, a single `source` pointing at the maintainer's own GitHub release asset (`github.com/jabla/hermes-agent-desktop-bin/...`), a pinned SHA-256 checksum (not `SKIP`), `noextract`, and a one-line `package()` that runs `bsdtar -xf "${srcdir}/${_artifact}" -C "${pkgdir}" ./usr`. There is no shell evaluation, no encoded/obfuscated strings, no network activity at build time (the only URL is the declared source fetched by makepkg), no `chmod +x`/execution of downloaded content, no credential or file exfiltration, and no system modification outside `$pkgdir`.

Two hygiene points worth noting, neither malicious: (1) the downloadable artifact is a finished binary package produced by the maintainer's CI, not compiled from upstream NousResearch sources as the `url=` implied — so the wrapper package's trust is entirely derived from trusting that CI/build repo, and the payload itself is unauditable here; (2) the renaming trick (`_artifact=...prebuilt.tar.zst::<original .pkg.tar.zst URL>`) exists to prevent makepkg/AUR helpers from mistaking the downloaded package for the wrapper's own output — a documented, reasonable workaround. The checksum is pinned, so the exact bytes are fixed.

These are trust/reproducibility considerations common to all `-bin` packages, not signs of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard prebuilt-package wrapper; pinned checksum, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt-package wrapper; pinned checksum, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,045
  Completion Tokens: 1,765
  Total Tokens: 11,810
  Total Cost: $0.001235
  Execution Time: 17.47 seconds

Final Status: SAFE


No issues found.
