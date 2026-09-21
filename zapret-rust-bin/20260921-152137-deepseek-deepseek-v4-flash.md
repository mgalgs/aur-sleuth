---
package: zapret-rust-bin
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9613
completion_tokens: 3227
total_tokens: 12840
cost: 0.00089075448
execution_time: 93.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:21:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no malicious content found.
  - file: zapret-rust.install
    status: safe
    summary: Safe post-removal cleanup script.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt-bin PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing zapret-rust-bin from local mirror...
Materialized zapret-rust-bin
Analyzing zapret-rust-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a package() function definition at the top level. No inline commands, command substitutions, or function calls execute during sourcing. The `makepkg --printsrcinfo` command will only parse these definitions without triggering any malicious behavior.</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe for metadata parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for metadata parsing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, zapret-rust.install...
[0/3] Reviewing .SRCINFO, zapret-rust.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an AUR package. It contains no executable code, no network requests, no obfuscated strings, and no system-modification commands. The only notable elements are a prebuilt binary source with a pinned SHA-256 checksum (518409cc...), standard dependencies (glibc, nftables, polkit), and a reference to an install script (`zapret-rust.install`). While the install script should be independently audited, the `.SRCINFO` itself does not exhibit any supply-chain attack indicators. The upstream URL points to a legitimate GitHub repository, and the checksum allows integrity verification. No suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Metadata only; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing zapret-rust.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no malicious content found.
LLM auditresponse for zapret-rust.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-removal script for an Arch Linux package. It removes the package's own data directory `/var/lib/zapret-rust` after the package is uninstalled. This is a common and expected cleanup operation, not a security threat. No suspicious commands, network requests, or obfuscation are present.
</details>
<evidence></evidence>
<summary>Safe post-removal cleanup script.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed zapret-rust.install. Status: SAFE -- Safe post-removal cleanup script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR prebuilt-binary packaging practice. It downloads a single binary from the package&apos;s declared upstream GitHub releases URL over HTTPS, and the sha256 checksum is pinned to a concrete value (not SKIP), so the downloaded artifact is verified against a known hash before installation. No curl|bash, no base64, no eval, no obfuscated or encoded content, and no unexpected network destinations appear anywhere in the file.

The package() function performs ordinary install operations: placing the binary under /usr/lib, creating a persistent data directory under /var/lib, and generating a transparent wrapper script in /usr/bin that execs the installed binary with --cache-dir and forwards arguments safely via &quot;$@&quot;. The dependencies (glibc, gcc-libs, nftables, polkit) are plausible for a DPI-bypass tool that manages firewall rules. An external install script (zapret-rust.install) is referenced, but its absence from this audit is a limitation, not evidence of malice; nothing in the PKGBUILD itself performs dangerous or suspicious operations.
</details>
<evidence></evidence>
<summary>Standard prebuilt-bin PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt-bin PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,613
  Completion Tokens: 3,227
  Total Tokens: 12,840
  Total Cost: $0.000891
  Execution Time: 93.00 seconds

Final Status: SAFE


No issues found.
