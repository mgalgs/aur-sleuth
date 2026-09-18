---
package: eden-nightly-bin
pkgver: 1789678126.0ce29be608
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10830
completion_tokens: 2537
total_tokens: 13367
cost: 0.00079265536
execution_time: 52.47
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:24:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no signs of malice.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious or suspicious content.
---

Materializing eden-nightly-bin from local mirror...
Materialized eden-nightly-bin
Analyzing eden-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope. In this file, the top-level content consists exclusively of ordinary variable assignments (`_tagstamp`, `_buildcommit`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions. There are no top-level command substitutions, external downloads, `eval`, `curl`, `wget`, base64 decoding, or other executable side effects that would run during sourcing.

The `prepare()`, `build()`, `package()`, and `post_*` functions contain actions such as extracting and installing the AppImage, but those functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate. The pinned `sha256sums` value is present, though even a `SKIP` checksum would not make this command unsafe because no sources are downloaded during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only safe variable definitions and function declarations; no execution risk.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only safe variable definitions and function declarations; no execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for a nightly binary release of the Eden Nintendo Switch emulator. It downloads a pre-compiled, checksum-verified AppImage from the project's official nightly server (`nightly.eden-emu.dev`). The `prepare()` function extracts the AppImage (standard for AppImage packaging), `build()` adjusts desktop file metadata, and `package()` installs the binary, icons, desktop file, and MIME definitions. The `post_install`/`post_upgrade`/`post_remove` hooks run only routine database updates (`update-mime-database`, `update-desktop-database`). There is no obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no execution of untrusted content beyond the designated upstream source with a pinned checksum. The file conforms to normal packaging practices and contains no evidence of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It specifies a single source URL (`https://nightly.eden-emu.dev/...`) from the project's own domain and includes a SHA-256 checksum for integrity verification. There are no suspicious commands, obfuscated code, or unexpected operations. The package does not contain any build scripts or code that could execute malicious actions. The use of an unpinned URL (nightly) is expected for a nightly binary package, but the checksum mitigates supply-chain risks by verifying the downloaded artifact. No evidence of malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no signs of malice.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no signs of malice.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories. The pattern `*` ignores all files by default, and the subsequent `!` lines explicitly un-ignore the files that must be tracked in the AUR repository: `.gitignore`, `CHANGELOG`, `PKGBUILD`, `.SRCINFO`, and `README.md`. This is the conventional way AUR packages are structured, since the PKGBUILD and .SRCINFO are mandatory tracked files. There is no executable code, no network activity, no file manipulation beyond git's normal ignore behavior, and no obfuscation. Nothing in this file deviates from standard packaging practices or poses a security risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no malicious or suspicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious or suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,830
  Completion Tokens: 2,537
  Total Tokens: 13,367
  Total Cost: $0.000793
  Execution Time: 52.47 seconds

Final Status: SAFE


No issues found.
