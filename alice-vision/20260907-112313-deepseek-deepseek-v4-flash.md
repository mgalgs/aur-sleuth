---
package: alice-vision
pkgver: 3.3.7
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17040
completion_tokens: 3379
total_tokens: 20419
cost: 0.002108645588
execution_time: 196.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T11:23:13Z
file_verdicts:
  - file: alicevision.sh
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: fix-default-ocio-path.patch
    status: safe
    summary: Harmless path change for OCIO config.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
---

Materializing alice-vision from local mirror...
Materialized alice-vision
Analyzing alice-vision AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of the PKGBUILD. All variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `build()`, `package()`) are standard and do not execute any commands during sourcing. No top-level command substitutions, `eval`, `base64`, `curl`, `wget`, or other potentially dangerous operations are present. Therefore, sourcing this PKGBUILD is safe for metadata printing.
</details>
<evidence></evidence>
<summary>No execution risk during metadata parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No execution risk during metadata parsing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, alicevision.sh...
LLM auditresponse for alicevision.sh:
<security_assessment>
<decision>SAFE

LLM audit error for alicevision.sh: Audit error: could not parse a decision from the model response.

[0/4] Reviewing .SRCINFO, PKGBUILD, alicevision.sh, fix-default-ocio-path.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, fix-default-ocio-path.patch...
? Reviewed alicevision.sh. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch package build file for the alice-vision photogrammetry framework. It fetches source code from the official GitHub repository via git tags and a branch (MeshSDFilter), applies several patches for system library compatibility, and builds using cmake/make. There is no evidence of obfuscated code, unexpected network requests, data exfiltration, or execution of attacker-controlled payloads. All modifications (sed/patch commands) are standard packaging adjustments to work with Arch Linux's library versions.

One minor note: the first source entry (`git+https://... #tag=v${pkgver}`) has a real SHA-256 checksum rather than `SKIP`, which is unconventional for VCS sources. This is a packaging error (the checksum likely applies to a tarball format, not the git clone) but does not indicate malice. The MeshSDFilter source tracks a branch (`av_develop`) with `SKIP` checksum, which is acceptable for VCS sources. The included shell script `alicevision.sh` is installed to `/etc/profile.d/` and has a verified checksum; its contents were not reviewed but it follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, fix-default-ocio-path.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for fix-default-ocio-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the default OpenColorIO configuration path from a relative path based on the source file location to an absolute system path (`/usr/share/aliceVision/config.ocio`). This is a standard packaging change to ensure the application finds its configuration file in the expected system location after installation. There is no evidence of malicious behavior such as data exfiltration, code execution, obfuscation, or any other suspicious activity. The change is consistent with legitimate package integration.
</details>
<evidence></evidence>
<summary>Harmless path change for OCIO config.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed fix-default-ocio-path.patch. Status: SAFE -- Harmless path change for OCIO config.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file used by AUR helpers to describe the package. It contains no executable code, commands, or obfuscated content. All sources point to the official AliceVision GitHub repositories (AliceVision and MeshSDFilter) under the alicevision organization. The use of a branch (`av_develop`) for MeshSDFilter is an unpinned VCS source, which is a standard practice for AUR packages (especially when tracking a development branch) and does not constitute malicious behavior. All checksums are either valid SHA-256 sums or `SKIP` (expected for VCS sources). No suspicious network destinations, encoded payloads, or backdoor vectors are present. The file simply declares dependencies, sources, and metadata for building the alice-vision package.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: alicevision.sh)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,040
  Completion Tokens: 3,379
  Total Tokens: 20,419
  Total Cost: $0.002109
  Execution Time: 196.72 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

alicevision.sh: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
