---
package: ftty-bin
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10266
completion_tokens: 1560
total_tokens: 11826
cost: 0.0009182796
execution_time: 41.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T23:09:00Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official GitHub releases.
  - file: upstream.sh
    status: safe
    summary: Routine AUR updater script fetching from official GitHub, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file with no executable code.
---

Materializing ftty-bin from local mirror...
Materialized ftty-bin
Analyzing ftty-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines standard packaging metadata at the top level: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source_x86_64`, and `sha256sums_x86_64`. No command substitutions, no `eval`, no `curl`, `wget`, or other executable logic run during sourcing. The `package()` function is not executed by `makepkg --printsrcinfo`, so its contents are out of scope for this specific gate. The source URL points to the project&apos;s own GitHub releases and has a pinned checksum, which is normal packaging practice. There is nothing here that would execute malicious code when sourcing the PKGBUILD.
</details>
<evidence></evidence>
<summary>No top-level malicious code; sourcing package metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing package metadata is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, upstream.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. The source is downloaded from the official GitHub releases page of the project, with a valid SHA256 checksum provided (not SKIP). The `package()` function only installs the prebuilt binary, README, and LICENSE files into standard locations under `$pkgdir`. There are no obfuscated commands, unexpected network requests, or signs of malicious behavior. The package is fully transparent and consistent with the stated purpose of providing a precompiled terminal emulator.
</details>
<evidence>
</evidence>
<summary>Standard binary package from official GitHub releases.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, upstream.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official GitHub releases.
LLM auditresponse for upstream.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR package update helper for the `ftty-bin` package. It queries the official GitHub API for the latest release of xifan2333/ftty, downloads the corresponding prebuilt binary tarball from the project's own GitHub releases page into a temporary directory, computes its SHA256 checksum, and then updates the PKGBUILD fields (pkgver, pkgrel, source_x86_64, and sha256sums) using sed.

The script does not execute the downloaded binary, does not exfiltrate data, does not use obfuscated code, and only modifies the PKGBUILD that the maintainer is working on. All network destinations are the project's own GitHub repository and releases, which is expected upstream behavior for updating a -bin package. The temporary directory is removed after checksum calculation. There is no evidence of supply-chain injection or malicious activity.
</details>
<evidence>
</evidence>
<summary>
Routine AUR updater script fetching from official GitHub, no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed upstream.sh. Status: SAFE -- Routine AUR updater script fetching from official GitHub, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository package. It declares the package name, version, dependencies, and a single pre-compiled binary tarball sourced from the project&#x27;s official GitHub releases page. The SHA-256 checksum is provided and non-empty. There is no executable content, no network requests beyond declaring the upstream source URL, and no signs of obfuscation or malicious behavior.
</details>
<evidence></evidence>
<summary>Clean metadata file with no executable code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file with no executable code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,266
  Completion Tokens: 1,560
  Total Tokens: 11,826
  Total Cost: $0.000918
  Execution Time: 41.78 seconds

Final Status: SAFE


No issues found.
