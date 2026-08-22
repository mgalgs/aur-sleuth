---
package: floorp-bin
pkgver: 12.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 14103
completion_tokens: 2669
total_tokens: 16772
cost: 0.00146701786
execution_time: 53.76
files_reviewed: 2
files_skipped: 1
files_unauditable: 32
unpinned_sources: 0
date: 2026-08-22T03:34:43Z
file_verdicts:
  - file: floorp.png
    status: skipped
    summary: "Skipping binary file: floorp.png"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: floorp.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
---

Cloning https://aur.archlinux.org/floorp-bin.git...
Cloned floorp-bin
Analyzing floorp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and source arrays in its global scope, with no command substitutions, external network requests, or code execution outside the standard packaging definitions. The `pkgver()` function is absent, so no code runs during sourcing. The sources are fetched from the official GitHub releases URL, which is the package's own upstream. No malicious content is present that would execute during the source fetching or parsing steps. The `package()` function (which contains the installation logic) is not executed by the requested commands due to `--nobuild` and `--noprepare` flags. Everything is consistent with normal AUR packaging practices.
</details>
<summary>All global scope code is benign; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- All global scope code is benign; no execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, floorp.png...
[1/2] Reviewing PKGBUILD...
! Reviewed floorp.png. Status: SKIPPED -- Skipping binary file: floorp.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the Floorp browser tarball from the official GitHub releases URL with pinned version and checksums. Installation operations (copying files, creating symlinks, generating icons via ImageMagick, writing a launcher script and policies JSON) are all routine and expected. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of untrusted content at build time. The `chmod` and `install` commands are used safely within `$pkgdir`. All sources are verified by pinned SHA256 checksums. No signs of a supply-chain attack are present.
</details>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 32 compiled/archived file(s) cannot be audited as text and were not reviewed (floorp-12.17.0-linux-x86_64.tar.xz, src/floorp/liblgpllibs.so, src/floorp/libgkcodecs.so and 29 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
floorp.desktop
Decided to review 1 additional files: floorp.desktop
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing floorp.desktop...
LLM auditresponse for floorp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `floorp.desktop` is a standard Freedesktop.org `.desktop` entry for the Floorp web browser. It contains only metadata such as application name, descriptions, translations, MIME types, categories, and desktop actions (new window, private window, profile manager). There are no script snippets, network requests, file operations, encoded or obfuscated commands, or any other form of executable logic. The file is purely declarative and does not introduce any security risk in the context of an AUR package audit.
</details>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed floorp.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: floorp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,103
  Completion Tokens: 2,669
  Total Tokens: 16,772
  Total Cost: $0.001467
  Execution Time: 53.76 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9l7snk9p/floorp.png: [SKIPPED] Skipping binary file: floorp.png
