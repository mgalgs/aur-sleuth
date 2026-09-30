---
package: fthr-clips-git
pkgver: 1.1.0alpha0.r3.g64a7b0b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 26510
completion_tokens: 17857
total_tokens: 44367
cost: 0.00277021248
execution_time: 407.19
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T11:07:37Z
file_verdicts:
  - file: collect-uploader-licenses.py
    status: safe
    summary: Safe license collection helper with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: fthr-clips
    status: safe
    summary: "Safe launcher script: sets a Qt platform fallback and runs the application normally."
  - file: liblzma-0BSD.txt
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO; all URLs legitimate, checksums pinned, no executable or malicious content.
  - file: prepare-ffmpeg.py
    status: safe
    summary: Benign integrity-checking FFmpeg staging script with no malicious behavior found.
---

Materializing fthr-clips-git from local mirror...
Materialized fthr-clips-git
Analyzing fthr-clips-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only its global/top-level scope. That scope contains only plain variable/array assignments (`pkgname`, `pkgver`, `_ffmpeg`, `depends`, `source`, `sha256sums`, etc.) and function definitions for `pkgver()`, `prepare()`, `build()`, `check()`, and `package()`. None of the top-level assignments contain command substitution, `eval`, `curl`/`wget`, base64 decoding, or any other executable side effect.

All potentially interesting commands (git, cmake, python, install, patchelf, sed) appear strictly inside the function bodies that are not invoked by `--printsrcinfo`. The `source` array references the project&apos;s own GitHub repository (VCS branch), BtbN FFmpeg builds, and PyPI-hosted wheels; none of those artifacts are downloaded, checksummed, or executed during this step. A SKIP checksum is normal for VCS sources and does not affect safety of this command. The full build/package functions remain out of scope for this narrow gate and will be audited later.
</details>
<evidence>
</evidence>
<summary>Top-level scope only assigns variables and defines functions; no code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only assigns variables and defines functions; no code executes during --printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, collect-uploader-licenses.py...
LLM auditresponse for collect-uploader-licenses.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a packaging helper that collects license evidence for the runtime dependencies of a PyInstaller-frozen application. It queries `pacman` for installed package metadata, reads standard `/usr/share/licenses/` files, and copies them to a staging directory. The only unusual operation is a verification step for the `xz` package (liblzma): it checks that the installed header `/usr/include/lzma.h` contains specific SPDX and license notice strings. This is a deliberate supply-chain defense (likely inspired by the 2024 xz backdoor incident) and not a malicious action. There are no network requests, no obfuscated code, no execution of untrusted content, and no exfiltration of sensitive data. All system commands (`pacman`) are standard for AUR packages, and the script operates entirely on local files controlled by the package manager.
</details>
<evidence></evidence>
<summary>Safe license collection helper with no malicious behavior.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed collect-uploader-licenses.py. Status: SAFE -- Safe license collection helper with no malicious behavior.
[1/6] Reviewing .SRCINFO, PKGBUILD, fthr-clips...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a VCS-based package. All network sources come from the project&#39;s own GitHub repository or well-known third-party distributors (BtbN/FFmpeg-Builds, Python Package Index), and every non-VCS source provides a pinned SHA-256 checksum. The build and package functions only execute local scripts shipped with the PKGBUILD or upstream build tools (cmake, PyInstaller). There are no obfuscated commands, no remote code execution (no curl|bash, no wget to unexpected hosts), and no exfiltration of data. The use of a prebuilt FFmpeg binary from a third party is a supply-chain risk but is mitigated by checksum pinning; it does not constitute malicious behavior. The unpinned VCS branch (`#branch=linux`) is normal for `-git` packages.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, fthr-clips...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/6] Reviewing .SRCINFO, fthr-clips, liblzma-0BSD.txt...
LLM auditresponse for fthr-clips:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple launcher wrapper for the `fthr-clips` application. It checks environment variables related to Wayland and KDE and conditionally exports `QT_QPA_PLATFORM=xcb` to work around a windowing compatibility issue on KWin. This is a legitimate runtime configuration workaround and does not involve any network access, obfuscation, file tampering, or execution of untrusted content.

The final line executes the application using the system Python interpreter and the explicit path `/usr/lib/fthr-clips/FTHR_UI/main.py`. The quoted `"$@"` correctly forwards user arguments without command injection. There are no suspicious commands, encoded payloads, external downloads, or modifications to system files. The script is consistent with standard AUR packaging and application launcher practices.
</details>
<evidence></evidence>
<summary>Safe launcher script: sets a Qt platform fallback and runs the application normally.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, fthr-clips, liblzma-0BSD.txt, prepare-ffmpeg.py...
[3/6] Reviewing .SRCINFO, liblzma-0BSD.txt, prepare-ffmpeg.py...
+ Reviewed fthr-clips. Status: SAFE -- Safe launcher script: sets a Qt platform fallback and runs the application normally.
LLM auditresponse for liblzma-0BSD.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license file (0BSD license) for the liblzma library. It contains no executable code, no obfuscated strings, no network requests, and no system commands. It is a standard open source license document that poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, prepare-ffmpeg.py...
+ Reviewed liblzma-0BSD.txt. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` file describing the `fthr-clips-git` AUR package. It contains only metadata: dependency declarations, source URLs, and SHA-256 checksums. There is no executable code, no obfuscated content, no `eval`, `curl`, `wget`, or base64 usage, and no shell commands at all.

The listed sources are the package's own upstream Git repository (FTHR-Community/FTHR-Clips on GitHub, `#branch=linux`, with `sha256sums = SKIP`, which is normal for VCS sources), an FFmpeg shared-library build from the well-known BtbN/FFmpeg-Builds project, and three Python wheels from `files.pythonhosted.org` (the official PyPI CDN). All non-git sources have pinned SHA-256 hashes that match the URL paths, which is good supply-chain hygiene. The `noextract` flags simply tell makepkg not to unpack the binary tarball and wheels so they can be consumed directly by the build scripts.

The remote helper scripts referenced in the source array (`prepare-ffmpeg.py`, `fthr-clips`, `collect-uploader-licenses.py`) are not present in this metadata-only file, so they cannot be audited here; they should be reviewed in the PKGBUILD context before a build. The future-dated FFmpeg autobuild URL is worth a sanity check, but a future date is not malicious by itself. Nothing in this `.SRCINFO` indicates exfiltration, backdoors, downloaded-and-executed code, or tampering with system files.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO; all URLs legitimate, checksums pinned, no executable or malicious content.</summary>
</security_assessment>

[5/6] Reviewing prepare-ffmpeg.py...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO; all URLs legitimate, checksums pinned, no executable or malicious content.
LLM auditresponse for prepare-ffmpeg.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script stages a pinned FFmpeg archive for the FTHR capture build. It contains no network calls, no eval/exec of generated code, and no encoded or obfuscated payloads. It reads a local `tools/ffmpeg_manifest_linux.json`, verifies the SHA-256 of the makepkg archive, extracts only top-level paths in `bin`, `include`, `lib`, `LICENSE.txt`, uses Python tarfile's `filter='data'` protections, rejects setuid/setgid members, and then verifies every shipped `lib` file against a manifest digest. Rewriting the `prefix=` line in pkg-config files under the staged `lib` directory is consistent with normal packaging metadata relocation.

The only code executed outside the staged tree is `_ensure_linux_ffmpeg_aliases` imported from `tools/fetch_third_party.py`. That is a local helper module checked into the same package source, not an unexpected or remote host, and the call is plausibly a routine alias/symlink-creation step for the bundled FFmpeg. A few hardening notes can be mentioned without changing the decision: the script relies on the local JSON manifest and local helper code being trustworthy, and it trusts that the archive's other extracted files (for example under `include/` or `bin/`) only contain normal FFmpeg content. These are ordinary package-source trust assumptions, not supply-chain indicators.
</details>
<evidence></evidence>
<summary>
Benign integrity-checking FFmpeg staging script with no malicious behavior found.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed prepare-ffmpeg.py. Status: SAFE -- Benign integrity-checking FFmpeg staging script with no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,510
  Completion Tokens: 17,857
  Total Tokens: 44,367
  Total Cost: $0.002770
  Execution Time: 407.19 seconds

Final Status: SAFE


No issues found.
