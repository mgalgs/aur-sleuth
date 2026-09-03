---
package: vesktop-bin
pkgver: 1.6.7
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 15360
completion_tokens: 3606
total_tokens: 18966
cost: 0.00175700448
execution_time: 324.6
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 4
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T23:08:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: vesktop.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: vesktop.sh
    status: safe
    summary: Standard Electron launch wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code.
---

Cloning https://aur.archlinux.org/vesktop-bin.git...
Cloned vesktop-bin
Analyzing vesktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs top-level variable assignments and source array definitions. No command substitutions, dangerous inline operations (like curl|bash, eval, or network exfiltration) exist in the global scope. There is no `pkgver()` function. All source URLs (including the raw.githubusercontent.com SVG) point to the official Vencord/Vesktop repository, which is the package’s legitimate upstream. The `sha256sums` are provided (not SKIP), and the `noextract` on the tarball prevents any accidental extraction during the source‑fetch step. The `prepare()`, `build()`, and `package()` functions are not executed because of the `--nobuild --noprepare` flags. No risk of malicious code execution during source fetching or `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level execution or unexpected sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution or unexpected sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 4 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It contains patterns to exclude build artifacts and temporary files from version control, such as `/pkg/`, `/src/`, `*.tar.*`, and `icon.svg`. There is no executable code, no network requests, no obfuscation, and no indication of malicious behavior. The file is benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .gitignore, .SRCINFO, PKGBUILD, vesktop.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, vesktop.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for vesktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Vesktop application. It defines the application name, icon, categories, and the executable path (`/usr/bin/vesktop`). No embedded scripts, network requests, or obfuscated content are present. The file adheres to the Freedesktop Desktop Entry Specification and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vesktop.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[2/5] Reviewing .SRCINFO, PKGBUILD, vesktop.sh...
LLM auditresponse for vesktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launch wrapper for an Electron-based application. It reads user-defined flags from configuration files in `$XDG_CONFIG_HOME` (or `~/.config`), which is a common practice for Electron apps. Flags are concatenated and passed to the application binary located at `/opt/@appname@/@appname@`. There is no network access, no download or execution of external code, no obfuscation, no file system manipulation outside the application's scope, and no suspicious commands. The script follows expected packaging practices for AUR packages that provide prebuilt binaries.
</details>
<evidence>
</evidence>
<summary>Standard Electron launch wrapper, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vesktop.sh. Status: SAFE -- Standard Electron launch wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for `vesktop-bin`, a prebuilt binary distribution of the Vesktop (Vencord Desktop) application. The source tarball and icon are fetched from the official GitHub releases repository (`github.com/Vencord/Vesktop`), which is the project's own upstream. The binary tarball checksums are pinned, providing integrity verification. The icon source points to an unpinned branch (`refs/heads/main`), which is a hygiene concern but not malicious; this is a common practice in AUR packaging and does not introduce a supply-chain risk because the icon is a non-executable SVG file. The `prepare()` and `package()` functions perform standard text substitution and installation steps. There are no dangerous commands (curl|bash, eval, base64, wget to unexpected hosts), no obfuscated code, no attempts to exfiltrate data, no unexpected system modifications, and no backdoor or reverse shell. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata descriptor. It declares package metadata, dependencies, and source URLs with checksums. All source URLs point to the official Vesktop GitHub repository or to raw.githubusercontent.com for a static SVG icon. No obfuscation, encoded commands, or suspicious network destinations are present. Checksums are provided for the binary tarball (though the identical checksums for x86_64 and aarch64 appear to be a typo, this is not a security concern). There are no scripts, no executable instructions, and no evidence of exfiltration, backdoors, or other malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,360
  Completion Tokens: 3,606
  Total Tokens: 18,966
  Total Cost: $0.001757
  Execution Time: 324.60 seconds

Final Status: SAFE


No issues found.
