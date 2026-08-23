---
package: opencode-bin
result: safe
model: qwen/qwen3-235b-a22b-2507
provider: openrouter
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 0ff814222b2d127c2a84d40ab849d18cb7df0356
tokens: 3,513
cost: $0.000325
date: 2026-06-15T23:58:39Z
---

Cloning https://aur.archlinux.org/opencode-bin.git to /tmp/aur-sleuth/aur-sleuth-ydq16r4d...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-ydq16r4d
Analyzing opencode-bin AUR package (working in /tmp/aur-sleuth/aur-sleuth-ydq16r4d) with qwen/qwen3-235b-a22b-2507 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard metadata and source arrays for downloading pre-built binaries from the official GitHub release page. The `source` arrays (for both aarch64 and x86_64) only contain straightforward download URLs pointing to signed releases, with no use of `::` protocol tricks or variable manipulation that could trigger command injection. Variables like `pkgver`, `_subver`, and `source_*` are statically defined or empty, with no function calls or command substitutions that would be evaluated during `makepkg --nobuild` or `makepkg --printsrcinfo`.

The `package()` function is inert during `--nobuild` and `--printsrcinfo` operations and is not relevant to the current safety evaluation. No hooks, arrays, or functions (such as `prepare`, `build`, or `pkgver`) contain executable code or suspicious constructs. The use of standard arrays and lack of `eval`-like patterns makes this file safe for the specified commands.

All sources are directly downloadable via HTTPS with pinned SHA-256 checksums, and there are no obfuscated strings, dynamic code executions, or external script inclusions. Thus, running `makepkg --nobuild` or `makepkg --printsrcinfo` with this PKGBUILD does not execute arbitrary code or introduce remote code execution risks.
</details>
<summary>
No executable code in source retrieval phase; safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code in source retrieval phase; safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file follows standard Arch Linux packaging practices and contains no obvious security issues. The source URLs point to official GitHub releases under the `anomalyco/opencode` repository, which is consistent with the project's stated homepage. The `sha256sums` for both architectures are provided and match fixed, verifiable hashes, reducing the risk of supply chain tampering. The package installs a single binary to `/usr/bin/opencode` with appropriate permissions, and the `options` array disables debug and stripping, which is acceptable for a binary-only distribution.

There are no signs of obfuscated commands, unauthorized network calls, or suspicious operations such as `eval`, `base64`, or `curl` within the PKGBUILD. The dependencies are minimal and reasonable (e.g., `ripgrep`). The maintainer fields are minimal but not uncommon for AUR packages, and no executable pre/post-install scripts are included. Overall, the file appears to be a legitimate and safe binary package definition.
</details>
<summary>
Standard PKGBUILD with verified sources and no red flags.
</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified sources and no red flags.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: opencode-bin_1.17.7_x86_64.tar.gz, .SRCINFO, src/opencode
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz, src/opencode...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz, src/opencode, .SRCINFO...
[1/3] Reviewing src/opencode, .SRCINFO...
! Reviewed opencode-bin_1.17.7_x86_64.tar.gz. Status: SKIPPED -- Skipping binary file: opencode-bin_1.17.7_x86_64.tar.gz
[2/3] Reviewing .SRCINFO...
! Reviewed src/opencode. Status: SKIPPED -- Skipping binary file: opencode
LLM auditresponse for .SRCINFO:
&lt;security_assessment&gt;
&lt;decision&gt;SAFE&lt;/decision&gt;
&lt;details&gt;
The provided `.SRCINFO` file is a metadata file used by Arch Linux's AUR packaging system and does not contain executable code. It declares standard package information such as package name, version, architecture, source URLs, and checksums. All sources point to official GitHub releases under the legitimate `anomalyco/opencode` repository, using HTTPS with verifiable `sha256sums`. The `options` field disables stripping and debugging, which is unusual but not inherently malicious—potentially for debugging or deployment consistency.

There are no network operations, file manipulations, or shell commands defined in this file. The `depends`, `provides`, and `conflicts` fields declare standard package dependencies and naming conflicts, which follow typical AUR conventions. No obfuscated URLs, suspicious scripts, or unexpected behaviors are present in the metadata. The binary nature of the package (`opencode-bin`) implies it distributes a precompiled executable, but this file only specifies integrity checks via `sha256sums`, which are correctly formatted and specific to each architecture.

Overall, the file adheres to standard packaging practices and contains no signs of tampering or malicious intent. Users should still be aware that `opencode-bin` is a binary package, so the actual executable code cannot be audited from this metadata alone. However, based on the integrity and trustworthiness of the source URLs and checksums, the packaging metadata appears safe.
&lt;/details&gt;
&lt;summary&gt;
Metadata-only; no malicious content found.&lt;/summary&gt;
&lt;/security_assessment&gt;

[3/3] Reviewing ...
! Reviewed .SRCINFO. Status: SKIPPED -- Audit error: not well-formed (invalid token): line 1, column 0
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 3 files: opencode-bin_1.17.7_x86_64.tar.gz, opencode, .SRCINFO)

API Usage Summary
  Models: qwen/qwen3-235b-a22b-2507
  Prompt Tokens: 2,611
  Completion Tokens: 902
  Total Tokens: 3,513
  Total Cost: $0.000325
  Execution Time: 43.04 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-opencode-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/aur-sleuth-ydq16r4d/opencode-bin_1.17.7_x86_64.tar.gz: [SKIPPED] Skipping binary file: opencode-bin_1.17.7_x86_64.tar.gz

/tmp/aur-sleuth/aur-sleuth-ydq16r4d/src/opencode: [SKIPPED] Skipping binary file: opencode

/tmp/aur-sleuth/aur-sleuth-ydq16r4d/.SRCINFO: [SKIPPED] Audit error: not well-formed (invalid token): line 1, column 0
