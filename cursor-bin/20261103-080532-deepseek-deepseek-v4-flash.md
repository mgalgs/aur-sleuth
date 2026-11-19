---
package: cursor-bin
pkgver: 3.28.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13133
completion_tokens: 2451
total_tokens: 15584
cost: 0.001641185
execution_time: 19.21
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T08:05:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Plain .gitignore listing build artifacts; no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file with pinned checksums and expected upstream sources; no malicious behavior.
  - file: rg.sh
    status: safe
    summary: Benign ripgrep wrapper rewriting one flag; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard binary-repack PKGBUILD; upstream sources pinned, no malicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD’s global scope contains only standard metadata, dependency, source-array, checksum, and option assignments. There are no top-level command substitutions, network fetches, eval/base64 decoding, or file operations that would execute while `makepkg --printsrcinfo` sources the file.

The `package()` function contains normal packaging commands, but it is not executed by `makepkg --printsrcinfo`, so it is out of scope for this gate. The source URLs point to the package’s expected upstream and Arch packaging sources; no code from them is downloaded or executed during this step.
</details>
<evidence>
</evidence>
<summary>No malicious top-level execution; metadata parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level execution; metadata parsing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for the `cursor-bin` AUR package. It contains only a list of paths to ignore in version control: the upstream AppImage, the built package tarball, makepkg's `pkg/` staging directory contents (BUILDINFO, MTREE, PKGINFO, installed files), and the `src/` icon extracted during build.

There is no code, no network access, no commands, and no obfuscation. Every entry corresponds to an expected build artifact of a binary AppImage-repackaging package. Nothing here deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Plain .gitignore listing build artifacts; no executable or suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Plain .gitignore listing build artifacts; no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only package metadata and source definitions. All sources are either the package's own official Cursor download host or Arch Linux's official GitLab packaging repository, plus the local `rg.sh` helper. Every source has a pinned SHA-512 checksum; there are no `SKIP` checksums, obfuscated commands, network exfiltration, or executable logic in this file. The `noextract` option for the upstream `.deb` is normal packaging practice for repackaging a prebuilt binary.
</details>
<evidence>
</evidence>
<summary>Metadata-only file with pinned checksums and expected upstream sources; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file with pinned checksums and expected upstream sources; no malicious behavior.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a tiny shell wrapper that simply replaces the custom flag `--cursor-ignore` with ripgrep's `--ignore-file` in the argument list and then `exec`s the system `/usr/bin/rg`. It performs no network access, no downloads, no file operations outside of invoking ripgrep, and contains no obfuscation, eval, base64, or encoded blobs. The only unusual construction is the bash parameter substitution `${@/--cursor-ignore/--ignore-file}`, which is a straightforward argument-rewriting convenience for Cursor's bundled search integration. This is consistent with ordinary packaging/helper-script behavior and shows no evidence of injected malicious code. Note only that the wrapper depends on the system-installed ripgrep rather than shipping its own, which is a benign packaging choice.
</details>
<evidence>
</evidence>
<summary>Benign ripgrep wrapper rewriting one flag; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Benign ripgrep wrapper rewriting one flag; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds `cursor-bin` by downloading the official Debian package from `downloads.cursor.com` (the project's own upstream, pinned to a specific commit hash in the URL) and extracting it into `$pkgdir`. The remaining sources are the Arch packaging helper scripts `code.sh`/`code.mjs` from `gitlab.archlinux.org/archlinux/packaging/packages/code` and a local `rg.sh`, all covered by pinned sha512 hashes (the `SKIP` placeholder for the deb is immediately overwritten by an explicit `sha512sums[0]=...`).

The `package()` function performs ordinary packaging operations: extracting the deb with `bsdtar | tar`, moving zsh completions, symlinking system `node`/`xdg-open`, `sed`-rewriting the Electron shebang and launch script, and installing files into `$pkgdir`. There are no network exfiltration calls, no `eval`/`base64`-decoded blobs, no unexpected download-and-execute, and no writes outside the package staging directory. The `sed` substitutions targeting `code-oss`/`code.mjs` are the standard adaptation of the upstream code-oss wrapper for this Electron repackage.

The only items worth noting are hygiene/verification limitations rather than malice: `rg.sh` is a local source helper whose contents are not visible in this file, and it is installed as the `@vscode/ripgrep` binary shim (the same pattern used to point the app at the system `ripgrep`); its contents should be reviewed separately. None of this constitutes evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard binary-repack PKGBUILD; upstream sources pinned, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary-repack PKGBUILD; upstream sources pinned, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,133
  Completion Tokens: 2,451
  Total Tokens: 15,584
  Total Cost: $0.001641
  Execution Time: 19.21 seconds

Final Status: SAFE


No issues found.
