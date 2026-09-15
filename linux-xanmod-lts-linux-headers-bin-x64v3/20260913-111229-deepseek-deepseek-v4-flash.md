---
package: linux-xanmod-lts-linux-headers-bin-x64v3
pkgbase: linux-xanmod-lts-linux-bin-x64v3
pkgver: 6.18.51
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11578
completion_tokens: 21821
total_tokens: 33399
cost: 0.002705780
execution_time: 481.38
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T11:12:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard pinned Xanmod kernel headers package.
---

linux-xanmod-lts-linux-headers-bin-x64v3 is built from linux-xanmod-lts-linux-bin-x64v3
Materializing linux-xanmod-lts-linux-headers-bin-x64v3 from local mirror...
Materialized linux-xanmod-lts-linux-headers-bin-x64v3
Analyzing linux-xanmod-lts-linux-headers-bin-x64v3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>  
<decision>SAFE</decision>  
<details>  
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global/top-level scope. The only significant top-level activity visible in this file is a command substitution that fetches the xanmod project's own SourceForge RSS feed:

`_xml_data=$(curl -L -s "https://sourceforge.net/projects/xanmod/rss?path=/releases/lts")`

followed by local `xmllint --xpath` parsing of that data to derive the artifact URLs used in the `source` array. This is a standard AUR pattern for resolving latest prebuilt-release URLs. The fetched XML is parsed as text, never piped into a shell or otherwise executed, and the request goes to the package's own upstream host (SourceForge hosts the xanmod releases). No local data is exfiltrated and no executable payload is downloaded during source-time execution.

The two `eval` statements near the end merely define the split-package functions (`package_${pkgname[0]}() { _package "$@"; ... }`) using static `pkgname` values and escaped `"$@"`; they do not evaluate network-derived or attacker-controlled code. All other global-scope statements are ordinary variable/array assignments. The actual extraction, installation, and checksum handling live in `prepare()`, `_package()`, and `_package-headers()`, which do not run during `--printsrcinfo` and are reserved for the later full audit. Minor hygiene note: resolving URLs at source time via an unpinned HTTPS fetch reduces reproducibility, but that is a trust/hygiene concern, not malicious behavior.  
</details>  
<evidence></evidence>  
<summary>SAFE — sourcing this PKGBUILD for makepkg --printsrcinfo only performs a metadata fetch from the upstream SourceForge RSS host and local xmllint parsing; no untrusted code is executed and no data is exfiltrated.</summary>  
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE — sourcing this PKGBUILD for makepkg --printsrcinfo only performs a metadata fetch from the upstream SourceForge RSS host and local xmllint parsing; no untrusted code is executed and no data is exfiltrated.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR package that provides prebuilt Linux kernel and headers with Xanmod patches. The file declares source URLs pointing to SourceForge (the project's official upstream), provides SHA-256 checksums, lists PGP keys for verification, and defines two split packages. There are no executable commands, no suspicious network requests, no obfuscated code, and no deviations from normal AUR packaging practices. The checksums are pinned (not `SKIP`), which is good practice. The file does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
  <decision>SAFE</decision>
  <details>
    This PKGBUILD follows the standard AUR pattern for a prebuilt Xanmod kernel and headers package. It uses curl to query the project's own SourceForge RSS feed to resolve the .deb download URLs, then downloads those .debs through the source array with pinned sha256 checksums. The network activity is limited to the upstream project's hosting and no local data is transmitted.
    The eval statements only generate split-package function names from static pkgname values, not from external or attacker-controlled input. The remaining operations install kernel, modules, headers, docs, and version metadata into $pkgdir, which is normal packaging behavior. No obfuscation, backdoors, exfiltration, or execution of fetched content beyond standard packaging operations was found.
  </details>
  <evidence></evidence>
  <summary>No malicious behavior found; standard pinned Xanmod kernel headers package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard pinned Xanmod kernel headers package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,578
  Completion Tokens: 21,821
  Total Tokens: 33,399
  Total Cost: $0.002706
  Execution Time: 481.38 seconds

Final Status: SAFE


No issues found.
