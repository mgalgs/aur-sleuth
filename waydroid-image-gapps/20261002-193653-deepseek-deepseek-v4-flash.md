---
package: waydroid-image-gapps
pkgver: 20.0_20260927
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14769
completion_tokens: 1979
total_tokens: 16748
cost: 0.000524356
execution_time: 52.43
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T19:36:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and checksums.
  - file: .gitignore
    status: safe
    summary: Routine gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream sources; no malicious content.
  - file: get-latest-images-urls.sh
    status: safe
    summary: Benign maintainer helper script; fetches upstream RSS and lists image URLs.
---

Materializing waydroid-image-gapps from local mirror...
Materialized waydroid-image-gapps
Analyzing waydroid-image-gapps AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s top-level scope only assigns variables and computes `_latest` from a fixed array using `printf`, `sort`, and `tail`. No network requests, command substitution from external input, decoding, or execution of downloaded content occurs while sourcing the file for `makepkg --printsrcinfo`. The `package()` function is not run during this step, and in any case only installs image files into the package directory. The source URLs point to the project&apos;s expected SourceForge paths and the checksums are present. There is no evidence of malicious or obfuscated code in the parsed top-level scope.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD scope is safe; only variable assignments and metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only variable assignments and metadata.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a prebuilt Android image package. It downloads system and vendor ZIPs from SourceForge (the project's declared upstream), verifies them with explicit SHA-256 checksums (not SKIP), and installs only `.img` files into a dedicated directory. There are no suspicious network requests, obfuscated code, dangerous commands (`eval`, `curl|bash`, `base64`), or unexpected file operations. The version strings are pinned, so no mutable branch is tracked. The prebuilt binary nature is expected for this type of package and does not constitute a supply-chain attack on its own.</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and checksums.</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, get-latest-images-urls.sh...
[1/4] Reviewing .gitignore, .SRCINFO, get-latest-images-urls.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and checksums.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files except the listed ones (`.gitignore`, `.SRCINFO`, `PKGBUILD`). There is no executable or script content, no network operations, no obfuscation, and no commands of any kind. It is a plain text configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Routine gitignore file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, get-latest-images-urls.sh...
+ Reviewed .gitignore. Status: SAFE -- Routine gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package providing Waydroid GApps Android images. It declares per-architecture sources pointing to the official Waydroid project distribution on SourceForge, with pinned sha256 checksums for every source URL. There are no build scripts, no commands, no hooks, and no dynamic behavior in this file. The URLs are plain HTTPS and relate directly to the package's stated purpose (Waydroid system/vendor images). Pinned checksums across all architectures are good supply-chain hygiene. No obfuscation, exfiltration, downloads from unexpected hosts, or instruction execution is present. The file follows normal AUR metadata conventions.
</details>
<evidence></evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream sources; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing get-latest-images-urls.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream sources; no malicious content.
LLM auditresponse for get-latest-images-urls.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a maintainer helper script that queries the Waydroid project's own SourceForge RSS feed and extracts download URLs for the latest system and vendor images. It uses curl only to fetch an RSS XML listing, then parses it with grep, sed, sort, and head to print the newest artifacts. It does not download or execute the images themselves, and it sends no local data anywhere.

The network destination (sourceforge.net/projects/waydroid) is the package's legitimate upstream host, and the operations are consistent with ordinary packaging/release tooling. There is no obfuscation, no encoded payloads, no unexpected file modification, and no execution of fetched content. The only minor note is that it writes a temporary file-list.rss in the current directory, with cleanup commented out; this is a hygiene consideration, not a security threat.
</details>
<evidence></evidence>
<summary>
Benign maintainer helper script; fetches upstream RSS and lists image URLs.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed get-latest-images-urls.sh. Status: SAFE -- Benign maintainer helper script; fetches upstream RSS and lists image URLs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,769
  Completion Tokens: 1,979
  Total Tokens: 16,748
  Total Cost: $0.000524
  Execution Time: 52.43 seconds

Final Status: SAFE


No issues found.
