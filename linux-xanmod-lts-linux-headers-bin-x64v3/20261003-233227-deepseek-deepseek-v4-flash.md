---
package: linux-xanmod-lts-linux-headers-bin-x64v3
pkgbase: linux-xanmod-lts-linux-bin-x64v3
pkgver: 6.18.55
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11737
completion_tokens: 3763
total_tokens: 15500
cost: 0.000539364
execution_time: 47.3
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T23:32:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, integrity verified, no malicious payload.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and no malicious behavior.
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
The top-level scope of the PKGBUILD defines variables and performs command substitutions that fetch an RSS feed from the official Xanmod project on SourceForge (`curl -L -s "https://sourceforge.net/projects/xanmod/rss?path=/releases/lts"`). This is the package's own upstream and is a standard pattern for dynamically resolving the latest binary download URLs. The fetched XML is parsed with `xmllint` to extract URLs; no code is executed from the remote data. The remaining top-level statements are ordinary variable assignments, source array definitions, and safe `eval` calls to rename package functions. There are no base64-encoded or obfuscated commands, no network exfiltration, and no execution of untrusted payloads at sourcing time. Therefore running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>Top-level code purely fetches upstream RSS data; no malice.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code purely fetches upstream RSS data; no malice.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches binary .deb packages from the official Xanmod project on SourceForge. The download URLs are resolved dynamically via a curated RSS feed, but integrity is enforced through pinned SHA-256 checksums. The prepare() and package functions perform standard extraction and installation of kernel modules, headers, and boot images into package directories. There is no obfuscated code, no exfiltration of local data, no execution of fetched code outside normal build steps, and no connection to unexpected remote hosts. The use of `eval` to create split-package functions follows standard Arch packaging patterns. While the dynamic resolution of an unpinned upstream URL is a hygiene concern, it does not constitute genuine malicious behavior, especially given the pinned checksums.
</details>
<evidence></evidence>
<summary>Standard packaging, integrity verified, no malicious payload.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, integrity verified, no malicious payload.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a prebuilt Linux kernel and headers package from the XanMod project. It declares two upstream SourceForge `.deb` downloads, pins both with SHA-256 checksums, and lists two PGP signing keys. There are no build or install functions in this file, no commands, no network operations beyond declaring sources, and no obfuscated or encoded content.

The use of `noextract` and `makedepends = curl` are consistent with packaging prebuilt Debian packages for repackaging in Arch. SourceForge is the declared upstream download host for the XanMod project. No exfiltration, backdoors, suspicious execution, or unexpected file operations are present. The pinned checksums and PGP keys are positive trust signals.

The file is safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and no malicious behavior.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,737
  Completion Tokens: 3,763
  Total Tokens: 15,500
  Total Cost: $0.000539
  Execution Time: 47.30 seconds

Final Status: SAFE


No issues found.
