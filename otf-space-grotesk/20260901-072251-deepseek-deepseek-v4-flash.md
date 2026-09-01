---
package: otf-space-grotesk
pkgbase: 38c3-styles
pkgver: 2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16536
completion_tokens: 1409
total_tokens: 17945
cost: 0.00156612568
execution_time: 87.48
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3771
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T07:22:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate font package from official source.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no code or malicious content.
---

otf-space-grotesk is built from 38c3-styles
Cloning https://aur.archlinux.org/38c3-styles.git...
Cloned otf-space-grotesk
Analyzing otf-space-grotesk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no code in its global scope or `pkgver()` function (absent) that executes commands, makes network requests, or exfiltrates data. All variable assignments are static. The `source` array contains two HTTPS downloads from the official CCC domain (`events.ccc.de`), which is the package's own upstream. There are no eval, base64, curl, wget, exec, or other dangerous patterns. The SKIP checksum for one source is not a concern for this narrow gate (source fetching only). Functions like `prepare()`, `build()`, and `package()` are not executed during `--nobuild --noprepare` or `--printsr cinfo`. Therefore, the commands are safe to run.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; sources from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; sources from official upstream.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: 38c3-styles-website.html::https://events.ccc.de/congress/2024/infos/styleguide.html
Reviewing the 2 file(s) in the AUR repository. The 3771 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward packaging of fonts and style assets for the 38th Chaos Communication Congress. All sources are from the official events.ccc.de domain, which is the legitimate upstream for this package. The only source with a SKIP checksum is a website URL, which is a mutable resource where a checksum would be impractical — this is a standard practice for such sources and not a security concern. The `prepare()` and `build()` functions only perform file copying and conversion of HTML to text/markdown using standard tools (`html2text`, `html2markdown`). There are no network requests, no execution of externally fetched code, no obfuscated commands, and no system modifications outside of installing fonts and documentation into the package directory. The package functions are all conventional font installation patterns. No signs of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate font package from official source.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font package from official source.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It defines multiple split packages (fonts and style assets) for the 38th Chaos Communication Congress. The content is purely declarative: package names, descriptions, licenses, dependencies, source URLs, and checksums. No executable code, scripts, or suspicious instructions are present. The one `sha256sums = SKIP` for the website source (`38c3-styles-website.html`) is a common practice for non‑tarball sources or where checksums are not applicable; it is not a sign of malice. All source URLs point to the official events.ccc.de domain, which is the legitimate upstream for this congress style guide. No obfuscation, network exfiltration, or dangerous commands exist in this file.
</details>
<evidence></evidence>
<summary>Metadata only, no code or malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no code or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,536
  Completion Tokens: 1,409
  Total Tokens: 17,945
  Total Cost: $0.001566
  Execution Time: 87.48 seconds

Final Status: SAFE


No issues found.
