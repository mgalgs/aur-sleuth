---
package: skwd-deck-bin
pkgbase: skwd-suite-bin
pkgver: 1.0.0_beta.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13895
completion_tokens: 3382
total_tokens: 17277
cost: 0.00179898572
execution_time: 72.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T15:32:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean AUR binary package with pinned checksums.
  - file: skwd-deck.install
    status: safe
    summary: Standard package removal cleanup for skwd-walld user service; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; checked HTTPS sources, pinned checksums, no malicious behavior.
---

skwd-deck-bin is built from skwd-suite-bin
Materializing skwd-deck-bin from local mirror...
Materialized skwd-deck-bin
Analyzing skwd-deck-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (pkgbase, pkgname, etc.) and function definitions (prepare, _install_prebuilt, package functions). No command substitutions, evals, or network calls are present at the top level that would execute during `makepkg --printsrcinfo`. The source URLs point to the upstream GitHub repository over HTTPS. All function bodies (including prepare and package) are not executed during this parsing step. Therefore, sourcing this file poses no immediate risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, skwd-deck.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package for the Skwd wallpaper suite. It downloads prebuilt `.pkg.tar.zst` archives from the project's official GitHub releases (`https://github.com/liixini/skwd-wall/releases/download/...`), with pinned SHA256 checksums for integrity verification. No checksums are skipped.  

The `prepare()` function extracts each archive using `bsdtar` (excluding metadata files like `.BUILDINFO`), and the `package_*` functions copy the contents into the package directory — all routine operations. There is no obfuscated code, no `curl|bash` or `eval`, no unexpected network requests, and no file operations outside the standard packaging workflow. The only potential hygiene concern is the use of a prebuilt binary (pinned but not source-built), which is inherent to `-bin` packages and not a supply-chain attack.  

The referenced install script (`skwd-deck.install`) is not included in this file, so it cannot be assessed here, but its mere existence is not suspicious. Overall, no evidence of malicious behavior was found in this PKGBUILD.
</details>
<evidence></evidence>
<summary>Clean AUR binary package with pinned checksums.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, skwd-deck.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR binary package with pinned checksums.
LLM auditresponse for skwd-deck.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package `.install` script used during removal of the package. It disables the user-level systemd service `skwd-walld.service`, stops the `skwd-walld` daemon, and performs cleanup actions such as `daemon-reload` and `reset-failed`. These operations are all scoped to the package's own application and are normal behavior for a package that installs a user service and background daemon.

The `_skwd_user_systemctl` helper iterates over active user runtime directories under `/run/user`, verifies ownership and that the user exists in the passwd database, then runs `systemctl --user` as that user using `runuser`. This is a legitimate way to manage per-user systemd services on behalf of all logged-in users during package removal. There are no network requests, downloads, encoded payloads, shell obfuscation, file exfiltration, or modifications to unrelated system files. The `pkill` commands target only the exact `skwd-walld` process name and include a bounded wait before a forceful kill, which is consistent with normal daemon cleanup during uninstall.
</details>
<evidence></evidence>
<summary>Standard package removal cleanup for skwd-walld user service; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed skwd-deck.install. Status: SAFE -- Standard package removal cleanup for skwd-walld user service; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata document for a split package suite. It contains only declarative packaging fields: `pkgdesc`, `url`, `depends`, `provides`, `conflicts`, `source` entries, and `sha256sums`. There is no executable code, no shell scripts, no post-install logic (the referenced `skwd-deck.install` is not part of this file), and no encoded or obfuscated content.

All sources are fetched over HTTPS from the project's own GitHub releases page (`https://github.com/liixini/skwd-wall/releases/...`), which matches the declared `url`. Every source has a pinned SHA-256 checksum, which is a good supply-chain hygiene practice rather than a red flag. The repeated `depends`/`provides`/`conflicts` entries and versioned `provides` lines are ordinary package metadata patterns used to support dependency resolution across multiple versions of the suite. No data is exfiltrated, no unrelated hosts are contacted, and no unchecked or mutable build-time content is fetched. The file is consistent with normal, careful AUR packaging and contains no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata-only AUR file; checked HTTPS sources, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; checked HTTPS sources, pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,895
  Completion Tokens: 3,382
  Total Tokens: 17,277
  Total Cost: $0.001799
  Execution Time: 72.41 seconds

Final Status: SAFE


No issues found.
