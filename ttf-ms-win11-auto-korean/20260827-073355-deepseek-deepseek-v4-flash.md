---
package: ttf-ms-win11-auto-korean
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36172
completion_tokens: 2056
total_tokens: 38228
cost: 0.00320338368
execution_time: 139.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T07:33:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction PKGBUILD with no malicious code.
---

ttf-ms-win11-auto-korean is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-korean
Analyzing ttf-ms-win11-auto-korean AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s top-level scope performs only variable assignments and a benign command substitution (`awk`) that writes &quot;SKIP&quot; lines to build the `sha256sums` array. No `pkgver()` function is defined. The `source` array includes an HTTPS URL pointing to a Microsoft evaluation ISO and many `file://` URIs for font files, but the `DLAGENTS` array overrides HTTP and HTTPS handlers with `/usr/bin/true`, so `makepkg` will not actually fetch any remote content during source retrieval. (Local `file://` copies may fail if the font files are absent, but that is a build error, not a security concern.) No code in the global scope or in implicit `pkgver()` performs network requests, executes downloaded payloads, or exfiltrates data. The potentially sensitive operations (mounting, extraction, integrity checks) reside inside `prepare()`, `build()`, and `package()`, which are **not** executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, running the specified commands is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during source fetching or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetching or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard exclusion patterns for an AUR package build environment (e.g., `src`, `pkg`, `*.pkg.tar*`, editor backup files, and font files). There is no executable code, network requests, obfuscation, or any suspicious behavior. The file only tells Git which files to ignore during version control. No security issues present.
</details>
<evidence>
</evidence>
<summary>Standard gitignore with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines package metadata, dependencies, sources, and checksums. The source includes a URL to the official Microsoft Windows 11 evaluation ISO (`software-static.download.prss.microsoft.com`) and a list of `file://` sources for individual font files. All checksums are set to `SKIP`. There are no executable commands, no network requests beyond the declared upstream source, no obfuscated code, and no suspicious operations. The file is purely declarative and follows normal AUR packaging practices for extracting fonts from the Windows ISO.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a legitimate AUR package that downloads Microsoft Windows 11 TrueType fonts from Microsoft's official evaluation ISO URL. The code uses standard tools (httpdirfs, udisksctl, 7z, curl) to extract fonts directly from the ISO. There is no obfuscated code, no suspicious network requests to unexpected hosts, no execution of downloaded scripts, and no data exfiltration. The file integrity check uses hardcoded SHA256 sums. All operations serve the stated purpose of extracting fonts. The sha256sums array is set to all SKIP via an awk command, which is normal for this type of unconventional download, but the integrity check is performed manually in `prepare()` using the embedded `_sha256sums` array. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate font extraction PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,172
  Completion Tokens: 2,056
  Total Tokens: 38,228
  Total Cost: $0.003203
  Execution Time: 139.81 seconds

Final Status: SAFE


No issues found.
