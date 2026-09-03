---
package: ttf-space-mono
pkgbase: 38c3-styles
pkgver: 2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16530
completion_tokens: 1646
total_tokens: 18176
cost: 0.00160399624
execution_time: 127.56
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3771
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T11:28:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging; no malicious code found.
---

ttf-space-mono is built from 38c3-styles
Cloning https://aur.archlinux.org/38c3-styles.git...
Cloned ttf-space-mono
Analyzing ttf-space-mono AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of variable assignments and static arrays. No command substitutions, function calls (such as `pkgver()`), or other executable code runs when the file is sourced. The `source` array fetches two files from the project's official upstream domain (`events.ccc.de`): a `.zip` archive and an HTML page from the styleguide URL. The second source uses `SKIP` for its checksum, which is acceptable for this gate — we are fetching sources for auditing, and `--nobuild`/`--noprepare` prevent any further execution. No suspicious commands (`curl`, `wget`, `eval`, `base64`, etc.) appear anywhere in the file, and all `prepare()`, `build()`, and `package_*()` functions are out of scope because they are never invoked by `makepkg --nobuild --nodeps --noprepare`. There is no evidence of data exfiltration, obfuscated code, or supply-chain injection.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: 38c3-styles-website.html::https://events.ccc.de/congress/2024/infos/styleguide.html
Reviewing the 2 file(s) in the AUR repository. The 3771 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for an AUR package. It defines source URLs (both pointing to the official CCC congress styleguide), checksums (one SHA256, one SKIP), and package splits with dependencies. There are no executable scripts, no obfuscated or encoded strings, no network requests beyond the package&#x27;s own declared upstream, and no commands that could exfiltrate data or execute untrusted code. The SKIP checksum on the website source is a standard practice for mutable content and does not indicate malice. The file poses no supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds a set of font and style asset packages for the 38th Chaos Communication Congress. All operations are standard: downloading a zip archive from the official CCC website (with a pinned checksum), downloading the style guide webpage (checksum SKIP, which is permissible), converting the HTML to text/markdown for documentation, and installing fonts, licenses, and assets into the appropriate directories. There are no external network connections at build time beyond the declared sources, no obfuscated commands, no execution of untrusted code, and no modifications to system files outside the package&#39;s own install paths. The use of `html2text` and `html2markdown` is a normal part of packaging the documentation. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard packaging; no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,530
  Completion Tokens: 1,646
  Total Tokens: 18,176
  Total Cost: $0.001604
  Execution Time: 127.56 seconds

Final Status: SAFE


No issues found.
