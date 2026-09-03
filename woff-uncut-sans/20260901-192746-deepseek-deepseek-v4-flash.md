---
package: woff-uncut-sans
pkgbase: 38c3-styles
pkgver: 2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16615
completion_tokens: 1714
total_tokens: 18329
cost: 0.00146754846
execution_time: 79.64
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3771
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T19:27:46Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font/styling package; no threats.
  - file: .SRCINFO
    status: safe
    summary: Purely descriptive AUR metadata; no code, commands, or malicious behavior found.
---

woff-uncut-sans is built from 38c3-styles
Cloning https://aur.archlinux.org/38c3-styles.git...
Cloned woff-uncut-sans
Analyzing woff-uncut-sans AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions (prepare, build, package_*). No executable code runs in the global scope or pkgver() (pkgver is a static number). The `source` array fetches from the project's own upstream (`events.ccc.de`) and a companion `.html` file from the same domain. Although one source has `sha256sums='SKIP'`, that is explicitly allowed for this gate — it will be recorded during the full audit. No dangerous commands (curl|bash, eval, base64, etc.) are present anywhere in the file. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to fetch sources.
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
The PKGBUILD performs standard packaging operations for fonts and style assets from the official 38th Chaos Communication Congress website. Sources are fetched from `events.ccc.de`, a legitimate upstream. All commands are typical for font installation (`install`, `cp`, `ln`), documentation generation (`html2text`, `html2markdown`), and file copying. There are no obfuscated or encoded commands, no suspicious network requests beyond the declared sources, no execution of untrusted downloaded code, and no manipulation of system files outside the package's own directories. The SKIP checksum on the website source is a common practice for live pages and does not indicate malice. The package behaves exactly as expected for its purpose.
</details>
<evidence></evidence>
<summary>Standard font/styling package; no threats.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font/styling package; no threats.
LLM auditresponse for .SRCINFO:
<security_association>
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only package metadata: package descriptions, dependencies, licenses, and upstream source URLs pointing to the official Chaos Communication Congress style guide website (events.ccc.de). All fetch locations are the project's own declared upstream. The only non-executable metadata is present: no shell commands, no external code, no obfuscation, and no suspicious file operations.

The `sha256sums` value is pinned for the ZIP archive and `SKIP` for the HTML page, which is acceptable practice; a SKIP checksum alone is not a security concern. This file does not perform any action—it is purely descriptive metadata consumed by AUR helpers/makepkg metadata tooling. No evidence of malicious behavior or supply-chain red flags.
</details>
<evidence>
</evidence>
<summary>
Purely descriptive AUR metadata; no code, commands, or malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Purely descriptive AUR metadata; no code, commands, or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,615
  Completion Tokens: 1,714
  Total Tokens: 18,329
  Total Cost: $0.001468
  Execution Time: 79.64 seconds

Final Status: SAFE


No issues found.
