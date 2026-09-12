---
package: wayrdp
pkgver: 0.1.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17155
completion_tokens: 3062
total_tokens: 20217
cost: 0.00152849914
execution_time: 32.03
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T19:14:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: wayrdp.service
    status: safe
    summary: Standard systemd user service unit; no malicious content found.
  - file: upstream.patch
    status: safe
    summary: Patch contains only legitimate upstream improvements and build fixes.
---

Materializing wayrdp from local mirror...
Materialized wayrdp
Analyzing wayrdp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources this PKGBUILD only at global scope. The top-level content consists of metadata variables, dependency arrays, a pinned commit in `_commit`, a normal `source` array pointing to the upstream GitHub archive plus local packaging files, checksums, and a small conditional that adjusts `BUILDDIR` when the current build directory equals the packaging checkout. No top-level command substitution, network access, decoding or obfuscation, or file exfiltration exists.

The `prepare`, `build`, and `package` functions contain packaging operations, but they are not executed during `--printsrcinfo`; they will be covered by the full audit. Nothing in the global scope would download or execute an untrusted payload when this command is run.
</details>
<evidence>

</evidence>
<summary>
No malicious top-level code; sourcing for printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing for printsrcinfo is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, upstream.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file. It describes the wayrdp package (a native RDP server for wlroots-based Wayland compositors). The sources are pinned to a specific commit of the upstream GitHub repository, with valid sha256 checksums for all three source files. No executable code, obfuscation, suspicious network requests, or system modifications are present. All dependencies and build steps listed are conventional for this type of application. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, upstream.patch, wayrdp.service...
[1/4] Reviewing PKGBUILD, upstream.patch, wayrdp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. Sources are pinned to a specific commit with valid checksums. The build process is straightforward: apply a patch, run make, then install binaries and ancillary files. There is no obfuscated code, no unexpected network requests (only the upstream tarball), and no execution of untrusted content. The conditional BUILDDIR assignment is a routine workaround to avoid conflicts when building inside the source tree and does not introduce any security risk. The file contains no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing upstream.patch, wayrdp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for wayrdp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd user service unit for the `wayrdp` application. It defines a simple service that runs the `wayrdp` executable, with restart on failure and dependency on the graphical session target. There are no suspicious commands, network requests, obfuscation, or any deviation from normal packaging practices. The only executable specified is `wayrdp` (the package's own binary). The service file is benign and follows typical user service patterns for AUR packages.
</details>
<evidence>
</evidence>
<summary>Standard systemd user service unit; no malicious content found.</summary>
</security_assessment>

[3/4] Reviewing upstream.patch...
+ Reviewed wayrdp.service. Status: SAFE -- Standard systemd user service unit; no malicious content found.
LLM auditresponse for upstream.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file contains only functional improvements and documentation updates for the wayrdp package. The Makefile changes respect standard build flags (CFLAGS, CPPFLAGS, LDFLAGS) without introducing any unsafe commands. The code changes in `src/wayland.c` handle dynamic output removal and capture session restarts using standard Wayland protocol objects — there are no network requests, obfuscated code, file exfiltration, or execution of external programs. All modifications serve the application's stated purpose (RDP server for Wayland) and show no signs of a supply-chain attack.
</details>
<evidence/>
<summary>Patch contains only legitimate upstream improvements and build fixes.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed upstream.patch. Status: SAFE -- Patch contains only legitimate upstream improvements and build fixes.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,155
  Completion Tokens: 3,062
  Total Tokens: 20,217
  Total Cost: $0.001528
  Execution Time: 32.03 seconds

Final Status: SAFE


No issues found.
