---
package: neoarch
pkgver: 3.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10242
completion_tokens: 10998
total_tokens: 21240
cost: 0.002856480228
execution_time: 427.03
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-22T07:08:00Z
file_verdicts:
  - file: neoarch.install
    status: safe
    summary: Standard post-installation Flatpak remote addition.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: copies files, fixes desktop path; hygiene notes only, no malware."
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only ordinary variable assignments (pkgname, pkgver, pkgdesc, arch, url, license, depends, provides, conflicts, install, source, sha256sums). No command substitution, backtick execution, eval, base64 decoding, network fetch, or file-writing occurs while the file is sourced by `makepkg --printsrcinfo`. The source URL points to the project's own GitHub archive over HTTPS, and the SKIP checksum is not a concern for this step since no sources are downloaded or verified during `--printsrcinfo`.

The `package()` function body contains installation and file-manipulation logic (copying to `$pkgdir`, sed edits, symlinks, desktop entry installs), but a function definition is not executed when the PKGBUILD is sourced, and `makepkg --printsrcinfo` does not run `package()`. That logic is out of scope for this narrow gate and is deferred to the full audit. Sourcing this file to print SRCINFO metadata is safe.
</details>
<evidence></evidence>
<summary>Global scope is plain variable assignments; no code executes during --printsrcinfo. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is plain variable assignments; no code executes during --printsrcinfo. Safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.3.1.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, neoarch.install...
[0/3] Reviewing .SRCINFO, neoarch.install, PKGBUILD...
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `neoarch.install` is a standard Arch Linux package install script that runs after installation. It checks if the `flatpak` command is available, and if so, adds the official Flathub remote repository to the user's Flatpak configuration using `flatpak remote-add`. This is a common and expected post-installation step for packages that utilize Flatpak applications. The URL `https://flathub.org/repo/flathub.flatpakrepo` is the official Flathub source, and the `--if-not-exists` flag prevents duplication. The `|| true` ensures the script does not fail if the command fails (e.g., if the remote already exists). There is no malicious behavior, obfuscation, or unexpected operations. The script only performs a routine configuration task.
</details>
<evidence></evidence>
<summary>Standard post-installation Flatpak remote addition.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed neoarch.install. Status: SAFE -- Standard post-installation Flatpak remote addition.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard AUR package metadata for the `neoarch` package. It declares a source tarball from the project's own GitHub repository (tagged release v3.3.1) and lists common dependencies. The `sha256sums` field is set to `SKIP`, which is a trust/hygiene choice rather than evidence of malice. There is no obfuscated code, suspicious network requests, or unexpected system operations within this file. The file itself is purely declarative and contains no executable content. Therefore, it is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging of a Python/PyQt6 GUI application. Its `source` is the project&apos;s own GitHub release tarball fetched over HTTPS (`$url/archive/refs/tags/v$pkgver.tar.gz`, where `$url` is the upstream repository), and `package()` only copies files into `$pkgdir`, sets executable bits, creates symlinks in `/usr/bin`, fixes hardcoded paths in the copied `.desktop` file (replacing the developer&apos;s local path `/home/test/New Folder/Aurora` and the icon reference), and installs the icon and license. These are routine packaging operations. There is no `eval`, no encoded/obfuscated payload, no `curl|bash`, no network activity at build/install time, no writes outside `$pkgdir`, and no tampering with unrelated system files.

Two hygiene notes are worth mentioning, but are not evidence of malice on their own: (1) `sha256sums=('SKIP')` on a fixed release tarball means the download is not integrity-verified (a trust-on-HTTPS, unpinned source that could be silently retagged), and (2) an `install=neoarch.install` hook is referenced whose contents are outside the scope of this audit and should be reviewed separately since pacman runs it with root privileges. The `depends` entries (python-pyqt6, python-requests, python-keyring, qt6-svg, flatpak, nodejs, npm) are plausible for the stated purpose of a package-manager GUI, and the `aurora_home.py`/`aurora.desktop` references indicate a fork/renamed upstream — a naming choice, not injected code.
</details>
<evidence></evidence>
<summary>Benign PKGBUILD: copies files, fixes desktop path; hygiene notes only, no malware.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: copies files, fixes desktop path; hygiene notes only, no malware.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,242
  Completion Tokens: 10,998
  Total Tokens: 21,240
  Total Cost: $0.002856
  Execution Time: 427.03 seconds

Final Status: SAFE


No issues found.
