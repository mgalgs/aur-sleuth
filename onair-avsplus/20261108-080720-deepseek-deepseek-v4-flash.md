---
package: onair-avsplus
pkgver: 7.1.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12913
completion_tokens: 2196
total_tokens: 15109
cost: 0.001574755
execution_time: 40.59
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T08:07:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned sources and checksums; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate FFmpeg build with AVS+ patch; no supply-chain attack indicators.
  - file: split_cavs_patch.py
    status: safe
    summary: Safe; standard patch-processing helper script.
---

Materializing onair-avsplus from local mirror...
Materialized onair-avsplus
Analyzing onair-avsplus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope (the only part executed by `makepkg --printsrcinfo`) contains only variable assignments and function definitions. All values are plain strings or arrays — there are no command substitutions (`$(...)` or backticks), no `eval`, no calls to external programs, and no other executable constructs. The `source()` array entries are simple URL strings, and the `sha256sums` are literal hashes. Since no code outside of the `prepare()`, `build()`, and `package()` functions can execute during `--printsrcinfo`, there is no risk of malicious behavior at this step.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, split_cavs_patch.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares a pinned ffmpeg 7.1.2 source from the official ffmpeg.org release server, a pinned patch and license from a GitHub repository at a specific commit, and a local helper script `split_cavs_patch.py`. All sources have pinned SHA-256 checksums, which is good supply-chain hygiene.

There are no suspicious network requests, no obfuscated commands, no unexpected file operations, and no behavior that deviates from normal packaging practice. The GitHub raw sources are explicitly pinned to commit `eb94ceb887b47b6ecfbda9da43273dd65246df1e`, and the ffmpeg source is the official upstream release tarball. Nothing in this metadata indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned sources and checksums; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, split_cavs_patch.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned sources and checksums; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All source URLs point to expected, official locations (ffmpeg.org for the FFmpeg tarball, GitHub raw content for the AVS+ patch and license from the maliwen2015/ffmpeg_cavs_dra repository). Checksums are provided for every source file, none are set to `SKIP`. The build process uses FFmpeg's standard `./configure` and `make`. The `package()` function copies only the required shared libraries (`libavcodec`, `libavutil`, `libswresample`) into `/usr/lib/onair`, which is consistent with the described purpose of providing an add-on for OnAir to dlopen. There are no unexpected network requests, no obfuscated commands, no attempts to execute untrusted code from unusual sources.
</details>
<evidence>
</evidence>
<summary>Legitimate FFmpeg build with AVS+ patch; no supply-chain attack indicators.</summary>
</security_assessment>

[2/3] Reviewing split_cavs_patch.py...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate FFmpeg build with AVS+ patch; no supply-chain attack indicators.
LLM auditresponse for split_cavs_patch.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward helper for splitting and normalizing a malformed FFmpeg patch file. It reads a patch from an argument, splits it into sections, writes two clean patch files to a designated output directory, and extracts a single new-source-file addition (libavcodec/libcavs.c) directly into the FFmpeg source tree provided as an argument. There are no network requests, no encoded/obfuscated commands, no dynamic code execution, and no operations outside the explicitly supplied paths. The script only performs the file operations necessary for its stated purpose (normalizing line endings, splitting the patch, writing results). This is standard packaging/preparation logic and presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Safe; standard patch-processing helper script.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed split_cavs_patch.py. Status: SAFE -- Safe; standard patch-processing helper script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,913
  Completion Tokens: 2,196
  Total Tokens: 15,109
  Total Cost: $0.001575
  Execution Time: 40.59 seconds

Final Status: SAFE


No issues found.
