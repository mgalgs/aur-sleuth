---
package: ttf-ms-win11-auto-zh_tw
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36180
completion_tokens: 2727
total_tokens: 38907
cost: 0.00331073568
execution_time: 62.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T11:22:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, SAFE.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction PKGBUILD, no malicious code.
---

ttf-ms-win11-auto-zh_tw is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-zh_tw
Analyzing ttf-ms-win11-auto-zh_tw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables, arrays, and functions. The top-level scope contains a command substitution in the `sha256sums` assignment: `sha256sums=($(awk "BEGIN{for(c=0;c<${_totalSource};c++) printf \"SKIP\n\"}"))`. This runs `awk` to generate an array of "SKIP" strings. `awk` is a standard utility and performs no network access, file exfiltration, or code execution beyond printing "SKIP". No `eval`, `curl`, `wget`, or other dangerous commands appear in global or `pkgver()` scope (no `pkgver()` is defined). The `source` array includes an HTTPS URL for the ISO and many `file://` entries, but the `DLAGENTS` array overrides HTTP/HTTPS and file agents with `/usr/bin/true`, preventing actual downloads during source retrieval. The `prepare()`, `build()` (not defined), and `package()` functions are not executed with `--nobuild --noprepare`, so their content (which includes downloads and file operations) is out of scope for this gate. No malicious code executes during parsing or source fetching.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package dealing with TrueType fonts. It lists typical build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backup files (`*~`), and font‑related files (`*.ttf`, `*.ttc`, `*.fon`, `license.rtf`, `desktop.ini`). No commands, network requests, or encoded data are present. The content is inert and follows normal packaging conventions. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
.SRCINFO is a metadata file for the AUR package `ttf-ms-win11-auto`. It contains no executable code or commands. All sources are listed from the official Microsoft download domain (`software-static.download.prss.microsoft.com`) and local font files (`file://...`). All sha256sums are set to `SKIP`, which is a permissible practice per AUR guidelines and not indicative of malicious intent. There is no obfuscation, no unexpected network requests, no data exfiltration, no backdoors, and no deviation from standard packaging metadata. Therefore, the file is safe.
</details>
<evidence></evidence>
<summary>Metadata file, no executable code, SAFE.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, SAFE.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads Windows 11 fonts from Microsoft's official evaluation ISO hosted at `software-static.download.prss.microsoft.com`, a legitimate Microsoft domain. The extraction process uses `httpdirfs`, `udisksctl`, and `7z` in expected ways. No obfuscated code, base64 decoding, eval, or unexpected network connections to unknown hosts are present. The only deviation from standard packaging is that `sha256sums` are set to `SKIP` while the maintainer implements a separate integrity check in `prepare()` using an internal `_sha256sums` array. This is an unconventional but non-malicious practice common in AUR packages with custom download methods. There is no evidence of data exfiltration, backdoors, or any behavior outside the stated purpose of extracting Microsoft fonts.
</details>
<evidence></evidence>
<summary>Legitimate font extraction PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,180
  Completion Tokens: 2,727
  Total Tokens: 38,907
  Total Cost: $0.003311
  Execution Time: 62.33 seconds

Final Status: SAFE


No issues found.
