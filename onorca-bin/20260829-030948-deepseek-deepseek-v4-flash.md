---
package: onorca-bin
pkgver: 1.4.191
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11591
completion_tokens: 2565
total_tokens: 14156
cost: 0.00143265528
execution_time: 39.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 5
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T03:09:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; pinned checksums; expected Electron SUID sandbox setup.
---

Cloning https://aur.archlinux.org/onorca-bin.git...
Cloned onorca-bin
Analyzing onorca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from the project's own GitHub repository (`github.com/stablyai/orca`), which is expected and legitimate. The top-level code only defines variables and arrays; no dangerous commands like `eval`, `curl|bash`, or base64 decoding are present. The `pkgver()` function is not defined, so no code executes during `makepkg --printsrcinfo` beyond variable assignments. The `package()` function contains installation logic (e.g., `chmod 4755`, `ln -s`, `install`), but it is not executed during `--nobuild --noprepare`. Fetching and extracting the `.deb` archive is a standard source retrieval operation; no runtime execution occurs from the extracted files at this stage. All checksums are pinned and non-`SKIP`, so the sources are verifiable.

Note: The `chmod 4755` on `chrome-sandbox` is standard for Electron-based applications requiring setuid for sandboxing; this is upstream functionality, not an injected attack.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 3 file(s) in the AUR repository. The 5 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR package metadata. It declares the package `onorca-bin`, version 1.4.191, with sources from the project's official GitHub releases (`github.com/stablyai/orca`). Checksums are provided for all source files, so no untrusted or unpinned downloads. No bash code, no eval, no obfuscation, no unexpected network destinations. The file is purely declarative and contains no executable or suspicious content. This is a routine binary package description with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude build artifacts and generated files from version control. It contains only filename pattern entries (`LICENSE-*`, `*.deb`, `src/`, `pkg/`, `*.pkg.tar.*`), with no executable code, network requests, obfuscation, or any other malicious content. This is typical and benign for an AUR package repository.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-bin` package. It downloads the upstream Orca IDE `.deb` and `LICENSE` from the project's own GitHub releases over HTTPS, with pinned SHA-256 checksums for all three artifacts, then extracts the `.deb` into `$pkgdir` with `bsdtar`, installs a `/usr/bin/orca-ide` symlink, copies the license, and sets mode 4755 on the Electron `chrome-sandbox` helper. There is no eval/base64/curl-pipe-to-shell, no obfuscation, no network behavior beyond the declared sources, and no modification of files outside the package destination or the application's own sandbox helper.

The `chmod 4755 ... chrome-sandbox` is expected for Electron-based applications: the SUID sandbox helper is the standard mechanism for Chromium's setuid sandbox on hosts without unprivileged user namespaces, and upstream's postinst does the same. While any SUID binary is a privilege boundary, this is an upstream design choice, not an injected supply-chain indicator. All operations stay within normal `package()` behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; pinned checksums; expected Electron SUID sandbox setup.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; pinned checksums; expected Electron SUID sandbox setup.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,591
  Completion Tokens: 2,565
  Total Tokens: 14,156
  Total Cost: $0.001433
  Execution Time: 39.96 seconds

Final Status: SAFE


No issues found.
