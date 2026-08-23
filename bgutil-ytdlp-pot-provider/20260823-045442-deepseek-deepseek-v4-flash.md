---
package: bgutil-ytdlp-pot-provider
pkgver: 0.8.1
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 30674
completion_tokens: 3576
total_tokens: 34250
cost: 0.00200704756
execution_time: 42.39
files_reviewed: 7
files_skipped: 0
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-23T04:54:41Z
file_verdicts:
  - file: bgutil-ytdlp-pot-provider.install
    status: safe
    summary: Routine permission fix in post_upgrade – safe.
  - file: upstream-LICENSE-0.8.1
    status: safe
    summary: Plain GPLv3 license text; no code or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malicious behavior detected.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: src/yt_dlp_plugins/extractor/getpot_bgutil.py
    status: safe
    summary: Legitimate yt-dlp token provider module; no malicious code.
  - file: src/yt_dlp_plugins/extractor/getpot_bgutil_http.py
    status: safe
    summary: Safe, standard HTTP-based token provider.
  - file: src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py
    status: safe
    summary: Standard yt-dlp plugin invoking a trusted CLI tool; no malicious behavior found.
---

Cloning https://aur.archlinux.org/bgutil-ytdlp-pot-provider.git...
Cloned bgutil-ytdlp-pot-provider
Analyzing bgutil-ytdlp-pot-provider AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and a `package()` function which is **not executed** during `makepkg --nobuild --noprepare` or `--printsrcinfo`. There is no `pkgver()` function, no top-level command substitution, and no code that runs at sourcing time beyond setting variables. All source URLs point to the official GitHub releases of the package, using HTTPS. The optional `.install` file is only used during package installation, not during the gate commands. No obfuscated or encoded payloads, no unexpected network destinations, and no dangerous shell operations exist in the evaluated scope.
</details>
<summary>
Source fetching and PKGBUILD sourcing are safe; no malicious code at top level.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetching and PKGBUILD sourcing are safe; no malicious code at top level.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, bgutil-ytdlp-pot-provider.install...
[0/3] Reviewing PKGBUILD, bgutil-ytdlp-pot-provider.install, upstream-LICENSE-0.8.1...
LLM auditresponse for bgutil-ytdlp-pot-provider.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file contains a single `post_upgrade()` function that runs `chown 0:0` on two directories under `/usr/share/yt-dlp-plugins/bgutil-ytdlp-pot-provider/`. This is a routine permission fix, likely because the upstream release ZIP preserved incorrect UID/GID. There is no network access, obfuscation, or unexpected system modification. The operation is confined to the package's own installation paths and is standard for AUR maintainer scripts.
</details>
<summary>Routine permission fix in post_upgrade – safe.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, upstream-LICENSE-0.8.1...
+ Reviewed bgutil-ytdlp-pot-provider.install. Status: SAFE -- Routine permission fix in post_upgrade – safe.
LLM auditresponse for upstream-LICENSE-0.8.1:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a verbatim copy of the GNU General Public License, version 3. It contains no executable code, no network requests, no file operations, no obfuscation, and no instructions of any kind. This is an ordinary license file that would accompany any GPLv3-licensed project. There is no evidence of malicious behavior or supply-chain attack.
</details>
<summary>Plain GPLv3 license text; no code or suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed upstream-LICENSE-0.8.1. Status: SAFE -- Plain GPLv3 license text; no code or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary Rust application. All sources are downloaded from the project's own GitHub releases and checksums are pinned with b2sums. The `package()` function performs only expected install operations: copying binaries to `/usr/bin`, installing a shared library, extracting a plugin archive, and placing a license file. No dangerous commands (curl, eval, base64), obfuscated code, or unexpected network destinations are present. The checksums ensure integrity; there is no reliance on mutable refs or SKIPped hashes. The file contains no supply-chain attack indicators.
</details>
<summary>
Standard AUR PKGBUILD with pinned checksums; no malicious behavior detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (bgutil-ytdlp-pot-provider-rs-0.8.1.zip, bgutil-pot-0.8.1-x86_64, libbgutil_ytdlp_pot_provider-0.8.1-x86_64.so). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 4 additional files: LICENSE, src/yt_dlp_plugins/extractor/getpot_bgutil_http.py, src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py, src/yt_dlp_plugins/extractor/getpot_bgutil.py
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing LICENSE...
[0/4] Reviewing LICENSE, src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py...
[0/4] Reviewing LICENSE, src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py, src/yt_dlp_plugins/extractor/getpot_bgutil_http.py...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT No Attribution license text. It contains no executable code, no network requests, no file operations, no obfuscated strings, and no other potentially dangerous content. There are no security concerns.
</details>
<summary>
Standard license file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py, src/yt_dlp_plugins/extractor/getpot_bgutil_http.py...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/4] Reviewing src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py, src/yt_dlp_plugins/extractor/getpot_bgutil_http.py, src/yt_dlp_plugins/extractor/getpot_bgutil.py...
LLM auditresponse for getpot_bgutil.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `getpot_bgutil.py` is a Python module implementing a `PoTokenProvider` for yt-dlp. It defines constants for supported features, clients, and contexts, and provides methods for logging and raising exceptions. The `_get_attestation` method extracts challenge data from a webpage using regex and JSON parsing, which is standard for this type of provider. There are no suspicious network requests, obfuscated code, file operations, or system modifications. The code follows normal packaging practices and does not exhibit any malicious behavior. No evidence of a supply-chain attack was found.
</details>
<summary>Legitimate yt-dlp token provider module; no malicious code.</summary>
</security_assessment>

[2/4] Reviewing src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py, src/yt_dlp_plugins/extractor/getpot_bgutil_http.py...
+ Reviewed src/yt_dlp_plugins/extractor/getpot_bgutil.py. Status: SAFE -- Legitimate yt-dlp token provider module; no malicious code.
LLM auditresponse for getpot_bgutil_http.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard yt-dlp plugin that implements a PoToken provider via HTTP. It communicates only with a local HTTP server (default `http://127.0.0.1:4416`), as expected for the package&#39;s purpose. The code uses standard Python networking and JSON handling; there are no obfuscated commands, no execution of downloaded code, no exfiltration of system data, and no unexpected file operations. The base URL can be configured, but that is a normal feature of such plugins and does not constitute a supply-chain attack in the AUR package itself. No malicious behavior detected.
</details>
<summary>Safe, standard HTTP-based token provider.</summary>
</security_assessment>

[3/4] Reviewing src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py...
+ Reviewed src/yt_dlp_plugins/extractor/getpot_bgutil_http.py. Status: SAFE -- Safe, standard HTTP-based token provider.
LLM auditresponse for getpot_bgutil_cli.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plugin module for yt-dlp that invokes an external Rust CLI tool (`bgutil-pot`) to generate YouTube PO tokens. It follows standard yt-dlp plugin patterns: registering a provider, using configuration arguments, and calling the external executable via `Popen.run`. The arguments passed to the executable are derived from the yt-dlp internal request object, not directly from untrusted user input. The code uses `os.path.expandvars` on a user-provided path, but this is expected for CLI configuration and does not introduce command injection. There is no obfuscation, no suspicious network requests, no download of untrusted content, and no modification of system files outside the package's scope. The fallback search for the executable in PATH is normal for a CLI dependency. All operations are consistent with the stated purpose of the package.
</details>
<summary>
Standard yt-dlp plugin invoking a trusted CLI tool; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/yt_dlp_plugins/extractor/getpot_bgutil_cli.py. Status: SAFE -- Standard yt-dlp plugin invoking a trusted CLI tool; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,674
  Completion Tokens: 3,576
  Total Tokens: 34,250
  Total Cost: $0.002007
  Execution Time: 42.39 seconds

Final Status: SAFE


No issues found.
