---
package: firefox-esr-i18n-gl
pkgbase: firefox-esr
pkgver: 153.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57880
completion_tokens: 4188
total_tokens: 62068
cost: 0.006029296
execution_time: 265.68
files_reviewed: 3
files_skipped: 2
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-19T03:28:43Z
file_verdicts:
  - file: 0001-Install-under-remoting-name.patch
    status: skipped
    summary: "Skipping binary file: 0001-Install-under-remoting-name.patch"
  - file: firefox-esr.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: identity-icons-brand.svg
    status: skipped
    summary: "Skipping binary file: identity-icons-brand.svg"
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious code.
---

firefox-esr-i18n-gl is built from firefox-esr
Materializing firefox-esr-i18n-gl from local mirror...
Materialized firefox-esr-i18n-gl
Analyzing firefox-esr-i18n-gl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD only sources the top-level scope. The top-level code consists of standard metadata variables, a `source` array pointing to official Mozilla archives, and a loop that generates per-language package entries.

The `eval` in the loop is the only top-level dynamic construct. It builds function definitions for each `firefox-esr-i18n-*` package using hard-coded values from the `_languages` array. The evaluated string only defines functions that call `_package_i18n`; no commands inside those function bodies execute during sourcing, and the input strings contain no injected shell metacharacters. There are no top-level network requests, downloads, command substitutions, obfuscated payloads, or data-exfiltration attempts.

The `SKIP` checksums and the behavior of `prepare()`/`build()`/`package()` are out of scope for this narrow gate and may be reviewed separately. Nothing in the sourced top-level scope poses an execution risk for `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; only static metadata and benign function definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; only static metadata and benign function definitions execute.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.mozilla.org/pub/firefox/releases/153.5.0esr/source/firefox-153.5.0esr.source.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch, PKGBUILD...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch, PKGBUILD, firefox-esr.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop...
! Reviewed 0001-Install-under-remoting-name.patch. Status: SKIPPED -- Skipping binary file: 0001-Install-under-remoting-name.patch
LLM auditresponse for firefox-esr.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Firefox ESR web browser package. It contains only localized metadata (Name, GenericName, Comment, Keywords) and two desktop actions (`new-window` and `new-private-window`), each with a localized name and an `Exec` line pointing to the legitimate binary at `/usr/lib/firefox-esr/firefox-esr`. No executable code, network requests, obfuscated content, or unexpected operations are present. The file conforms to the freedesktop.org Desktop Entry specification and is exactly what would be expected for packaging Firefox ESR.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop, identity-icons-brand.svg...
[2/5] Reviewing .SRCINFO, PKGBUILD, identity-icons-brand.svg...
+ Reviewed firefox-esr.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
[3/5] Reviewing .SRCINFO, PKGBUILD...
! Reviewed identity-icons-brand.svg. Status: SKIPPED -- Skipping binary file: identity-icons-brand.svg
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (`.SRCINFO`) that describes split packages for a Firefox ESR build. It contains no executable code - only declarative fields such as package version, dependencies, PGP key, source URLs, checksums, and lists of locale `.xpi` files. All source URLs point to `archive.mozilla.org`, the official Mozilla release server. Checksums use `SKIP` only for the detached signature file, which is normal. No network requests, obfuscation, or dangerous commands are present. The file is a standard AUR package description and contains no supply-chain attack elements.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard and well-established packaging practices for Firefox ESR. The source tarball, language packs, and patches are all fetched from Mozilla&#x27;s official archive (archive.mozilla.org) with PGP signature verification and explicit SHA‑512 checksums. There is no code obfuscation, no network operations to unexpected hosts, no untrusted code execution (e.g. curl|bash, eval of user input), and no exfiltration or backdoor mechanisms. The use of `eval` is limited to dynamically generating package functions from a hardcoded list of language codes, which is a common AUR pattern and does not introduce untrusted input. The build and packaging functions perform routine tasks (applying patches, configuring with mozconfig, running Mozilla&#x27;s build system, installing files to the package directory). There is no suspicious manipulation of data outside the application&#x27;s own scope. The file is safe.
</details>
<evidence></evidence>
<summary>No evidence of malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-Install-under-remoting-name.patch, identity-icons-brand.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,880
  Completion Tokens: 4,188
  Total Tokens: 62,068
  Total Cost: $0.006029
  Execution Time: 265.68 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-Install-under-remoting-name.patch: [SKIPPED] Skipping binary file: 0001-Install-under-remoting-name.patch

identity-icons-brand.svg: [SKIPPED] Skipping binary file: identity-icons-brand.svg
