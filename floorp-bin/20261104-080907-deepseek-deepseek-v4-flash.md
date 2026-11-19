---
package: floorp-bin
pkgver: 12.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19021
completion_tokens: 2293
total_tokens: 21314
cost: 0.002148237
execution_time: 26.22
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T08:09:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no threats.
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker config tracking the package's own GitHub upstream; safe."
  - file: .SRCINFO
    status: safe
    summary: Metadata only; pinned upstream GitHub artifacts, no malicious indicators.
  - file: floorp.png
    status: skipped
    summary: "Skipping binary file: floorp.png"
  - file: floorp.desktop
    status: safe
    summary: Standard Floorp browser desktop launcher; no malicious or dangerous behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard floorp-bin PKGBUILD; pinned GitHub upstream, no malicious behavior found.
---

Materializing floorp-bin from local mirror...
Materialized floorp-bin
Analyzing floorp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of standard metadata and variable assignments: maintainer comments, parameter defaults (`: ${_install_path:=usr/lib}`), pkgname/pkgver/pkgrel/pkgdesc, dependency arrays, `provides`/`conflicts`, `options`, `source`/`source_x86_64`/`source_aarch64` entries pointing at the project's own GitHub releases, and pinned `sha256sums` for all architectures (no SKIP checksums). There are no top-level command substitutions, no `eval`/`base64`/`curl`/`wget` invocations, no file operations, and no network activity that would execute during `makepkg --printsrcinfo`.

All executable logic resides inside `package()`, which is not run by `--printsrcinfo` and is therefore out of scope for this gate. That function performs ordinary packaging steps (copying the extracted browser bundle into `$pkgdir`, creating symlinks/icons with `magick`, installing a `.desktop` launcher and a small `exec` wrapper, and writing a `policies.json` to disable auto-updates). Nothing here indicates data exfiltration, obfuscation, or execution of untrusted code at parse time.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD scope is benign metadata; no code executes on sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign metadata; no code executes on sourcing.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR maintainer `.gitignore`. It ignores all files by default and then whitelists exactly `PKGBUILD`, `.SRCINFO`, and `.gitignore`, which is the conventional AUR git layout. There is no code, no network access, no file operations, no obfuscation, and nothing that executes. It contains no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore whitelisting packaging files; no threats.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no threats.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal `nvchecker` configuration used by the AUR maintainer to detect new upstream releases. It declares a single section `[floorp-bin]` with `source = "github"` pointing at `Floorp-Projects/Floorp`, the package's own upstream repository, plus `use_latest_release = true` and a `v` tag prefix.

There is no executable code, no network fetch to an unexpected host, no obfuscation, no file/system manipulation, and no data exfiltration. This is a standard maintainer helper config and is consistent with ordinary AUR packaging workflow. Nothing here deviates from expected practice.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config tracking the package's own GitHub upstream; safe.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, floorp.desktop...
[2/6] Reviewing .SRCINFO, PKGBUILD, floorp.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config tracking the package's own GitHub upstream; safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for `floorp-bin`. It declares routine package fields, dependencies, desktop/icon assets, and architecture-specific prebuilt tarballs fetched from the Floorp project's own GitHub releases.

The binary sources use pinned SHA-256 checksums, and the desktop/icon sources are also checksummed. There are no scripts, network callbacks, encoded payloads, file operations, or execution logic in this metadata file. No genuinely malicious or supply-chain-compromising behavior is present.
</details>
<evidence>
</evidence>
<summary>
Metadata only; pinned upstream GitHub artifacts, no malicious indicators.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, floorp.desktop, floorp.png...
[3/6] Reviewing PKGBUILD, floorp.desktop, floorp.png...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; pinned upstream GitHub artifacts, no malicious indicators.
[4/6] Reviewing PKGBUILD, floorp.desktop...
! Reviewed floorp.png. Status: SKIPPED -- Skipping binary file: floorp.png
LLM auditresponse for floorp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop `.desktop` launcher for the Floorp web browser. It contains only metadata keys (Name, GenericName, Comment, Exec, Icon, MimeType, Categories, Keywords, Actions) and localization strings. The `Exec=` lines invoke the package's own binary (`floorp`) with ordinary browser flags (`--new-window`, `--private-window`, `--ProfileManager`); there is no shell invocation, no `sh -c`, no `eval`, and no network access.

The document-scoped characters `&apos;` and `&amp;amp;` appear inside translated `Name[...]` values (escaping artifacts in translations), and `StartupWMClass=@WMCLASS@` is an unsubstituted template placeholder. Neither is executable or dangerous. No file operations, downloads, obfuscation, or system modifications are present. This is consistent with normal upstream/AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard Floorp browser desktop launcher; no malicious or dangerous behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed floorp.desktop. Status: SAFE -- Standard Floorp browser desktop launcher; no malicious or dangerous behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a conventional pattern for a prebuilt-binary browser package. The only network-fetched content comes from the project's own upstream GitHub releases (`$url` = `https://github.com/Floorp-Projects/Floorp`), with the two architecture tarballs pinned by full SHA-256 checksums rather than `SKIP`. The remaining sources are local files (`floorp.desktop`, `floorp.png`). There is no `eval`, no base64/hex-obfuscated payload, no unexpected download-and-execute step, and no access to data outside the package's own scope.

The `package()` function performs routine installation work: copying the extracted bundle into `$pkgdir/usr/lib/floorp`, creating a `floorp-bin` symlink, generating hicolor icons (with `magick` resizing for larger sizes), installing a desktop file, and writing a small `#!/usr/bin/env sh` launcher that simply `exec`s the bundled binary with `"$@"`. It also writes a `distribution/policies.json` that sets `DisableAppUpdate: true` — the standard, expected way to prevent a system-packaged Firefox-based browser from self-updating, and consistent with the package's stated purpose. Final `chmod -R u+rwX,go+rX,go-w` only normalizes permissions inside `$pkgdir`.

Minor hygiene notes only (no security impact): `depends` is declared inside `package()` instead of at the top level, and the wrapper script interpolates `_install_path`/`_pkgname` into the generated shell file — both are benign and do not involve untrusted input. No evidence of malicious or supply-chain-injected behavior.
</details>
<evidence>
</evidence>
<summary>Standard floorp-bin PKGBUILD; pinned GitHub upstream, no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard floorp-bin PKGBUILD; pinned GitHub upstream, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: floorp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,021
  Completion Tokens: 2,293
  Total Tokens: 21,314
  Total Cost: $0.002148
  Execution Time: 26.22 seconds

Final Status: SAFE


No issues found.


Audit Skips:

floorp.png: [SKIPPED] Skipping binary file: floorp.png
