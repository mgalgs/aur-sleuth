---
package: stremio
pkgver: 4.4.183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12260
completion_tokens: 11955
total_tokens: 24215
cost: 0.003204879020
execution_time: 311.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T12:38:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Legitimate AUR metadata with official sources, no malicious indicators.
  - file: 010-stremio-do-not-download-server-js.patch
    status: safe
    summary: Patch removes a build-time wget download; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious behavior; standard AUR packaging practices.
---

Materializing stremio from local mirror...
Materialized stremio
Analyzing stremio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, arch, depends, source, etc.) and function definitions (prepare, build, package). No command substitutions, backticks, eval, or any executable code exists in the global scope. Since `makepkg --printsrcinfo` only sources the file (executing top-level statements) and does not run any of the defined functions, there is no malicious code that can execute during this step. The file follows standard AUR packaging conventions with no suspicious elements such as obfuscation or remote code execution in the global scope. All function content (prepare, build, package) is deferred and will be reviewed in the full PKGBUILD audit.
</details>
<evidence></evidence>
<summary>Global scope is safe; no code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; no code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, 010-stremio-do-not-download-server-js.patch...
[0/3] Reviewing .SRCINFO, 010-stremio-do-not-download-server-js.patch, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR package for Stremio. All sources point to the official upstream: the `stremio-shell` git repository from `github.com/Stremio`, supporting libraries from the same developer (Ivshti, itay-grudev), and binary blobs (`server.js`, `stremio.asar`) from the official download domain `dl.strem.io`. The git repositories correctly use `SKIP` checksums, which is expected for VCS sources. The tarballs have valid, pinned SHA256 checksums that match the expected files. A patch file is also checksummed. There is no obfuscated code, no unexpected network destinations, no `curl|bash` patterns, and no execution of arbitrary code. The file is a metadata manifest and does not contain any executable instructions. This is a legitimate packaging and does not exhibit signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate AUR metadata with official sources, no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing 010-stremio-do-not-download-server-js.patch, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate AUR metadata with official sources, no malicious indicators.
LLM auditresponse for 010-stremio-do-not-download-server-js.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the upstream `release.makefile` so that the default build target no longer downloads `server.js` from the URL stored in `server-url.txt` using `wget`. It also removes that generated file from the `clean` target. This is not malicious behavior; in fact, it removes a build-time network download of unknown content, which reduces supply-chain risk. The patch contains no obfuscated code, no post-install hooks, no credential access, and no execution of attacker-controlled content. It is consistent with an AUR packaging effort to prevent the upstream build process from fetching a runtime component dynamically.
</details>
<evidence>

</evidence>
<summary>
Patch removes a build-time wget download; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed 010-stremio-do-not-download-server-js.patch. Status: SAFE -- Patch removes a build-time wget download; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice. It fetches the upstream Stremio shell source from the project's own GitHub repository, depends on two git submodule repositories, and downloads the official prebuilt server.js and stremio.asar artifacts over HTTPS from dl.strem.io. Those artifacts also have sha256 checksums. The prepare() function rewires the submodules to local source clones and runs `git submodule update` with `protocol.file.allow=always`; this is not unusual for building local submodules and does not fetch or execute from an arbitrary remote.

There is no use of eval, base64, curl piping to a shell, hidden downloads, or commands that modify files outside `$pkgdir`. The build and install steps invoke the upstream makefile and use standard `install`/`ln`/`find` logic for binaries, desktop files, and icons. The unpinned git dependencies and SKIP checksums are normal VCS packaging choices and are a reproducibility consideration, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>No evidence of malicious behavior; standard AUR packaging practices.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious behavior; standard AUR packaging practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,260
  Completion Tokens: 11,955
  Total Tokens: 24,215
  Total Cost: $0.003205
  Execution Time: 311.76 seconds

Final Status: SAFE


No issues found.
