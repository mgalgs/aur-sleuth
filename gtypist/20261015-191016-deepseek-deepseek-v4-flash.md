---
package: gtypist
pkgver: 2.10.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16364
completion_tokens: 1942
total_tokens: 18306
cost: 0.001842568
execution_time: 21.71
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-15T19:10:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official GNU repo.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: keys/pgp/02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc
    status: skipped
    summary: "Skipping binary file: 02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc"
  - file: gtypist_ncurses_is_ncursesw.patch
    status: safe
    summary: Routine patch changing ncursesw to ncurses; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package; no security concerns found.
---

Materializing gtypist from local mirror...
Materialized gtypist
Analyzing gtypist AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD only at global scope. This PKGBUILD contains only variable assignments, arrays for metadata, source URLs, checksums, and function definitions (`prepare()`, `build()`, `package()`). None of those functions execute during `--printsrcinfo`. There are no top-level command substitutions, no curl/wget/eval/base64 usage, no network requests, and no file modifications that would occur at source time. The content is consistent with a standard AUR package definition.
</details>
<evidence>
</evidence>
<summary>
No top-level dangerous code; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; printsrcinfo is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://ftp.gnu.org/gnu/gtypist/gtypist-2.10.1.tar.xz.sig
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It ignores all files except the essential packaging files (PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, keys/, and patches). There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to automatically check for new releases of gtypist. It points to the official GNU Savannah git repository (`https://git.savannah.gnu.org/git/gtypist.git`), which is the legitimate upstream source for the gtypist package. The `include_regex`, `prefix`, `from_pattern`, and `to_pattern` fields are normal patterns for version detection from git tags. There is no executable code, no downloads from unexpected hosts, no obfuscation, and no system modifications. This file poses no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for official GNU repo.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, gtypist_ncurses_is_ncursesw.patch...
[2/6] Reviewing .SRCINFO, PKGBUILD, gtypist_ncurses_is_ncursesw.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official GNU repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file describing the gtypist package. It declares sources (GNU FTP, a signature file, and a local patch), dependencies, checksums (sha256sums including SKIP for the signature, which is normal), and a valid PGP key. There are no executable commands, no obfuscated content, no suspicious network destinations, and no deviation from typical packaging practices. The file is purely declarative and presents no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, gtypist_ncurses_is_ncursesw.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
[3/6] Reviewing PKGBUILD, gtypist_ncurses_is_ncursesw.patch, keys/pgp/02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc...
[4/6] Reviewing PKGBUILD, gtypist_ncurses_is_ncursesw.patch...
! Reviewed keys/pgp/02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc. Status: SKIPPED -- Skipping binary file: 02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc
LLM auditresponse for gtypist_ncurses_is_ncursesw.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies `configure.ac` and several source files in `gtypist` to replace references to `ncursesw` with `ncurses`. The changes are purely mechanical: header includes (`#include <ncursesw/ncurses.h>` → `#include <ncurses.h>`), library link flags (`-lncursesw` → `-lncurses`), and related error messages. There is no hidden code, no network access, no execution of untrusted content, and no deviation from standard build system patching. This is a routine AUR package patch to adapt the upstream source to link against the non-wide-character variant of ncurses on Arch Linux.
</details>
<evidence>
</evidence>
<summary>Routine patch changing ncursesw to ncurses; no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed gtypist_ncurses_is_ncursesw.patch. Status: SAFE -- Routine patch changing ncursesw to ncurses; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PKGBUILD for the gtypist package from the GNU project. All source files are fetched from the official GNU FTP server over HTTPS, with pinned checksums for the tarball and patch file. The PGP signature file is present with a <code>SKIP</code> checksum, which is normal for detached signature files. The build process applies a patch via <code>patch</code>, runs <code>autogen.sh</code>, and installs files with <code>make install</code> plus some manual documentation copies. There are no network requests beyond the declared sources, no obfuscated commands, no unexpected file operations, and no signs of exfiltration or backdoors. The package follows Arch packaging conventions and appears trustworthy.
</details>
<evidence></evidence>
<summary>Standard AUR package; no security concerns found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package; no security concerns found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,364
  Completion Tokens: 1,942
  Total Tokens: 18,306
  Total Cost: $0.001843
  Execution Time: 21.71 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc: [SKIPPED] Skipping binary file: 02AEC665007301C280C5C43A0FB807D2E7C7C96C.asc
