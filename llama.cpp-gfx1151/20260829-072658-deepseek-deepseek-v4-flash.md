---
package: llama.cpp-gfx1151
pkgver: b10680
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11928
completion_tokens: 2895
total_tokens: 14823
cost: 0.00149823408
execution_time: 43.87
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3508
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T07:26:58Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: SRCINFO metadata only; pinned checksums; no malicious behavior evident.
---

Cloning https://aur.archlinux.org/llama.cpp-gfx1151.git...
Cloned llama.cpp-gfx1151
Analyzing llama.cpp-gfx1151 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope and `pkgver()` function (which is absent) do not contain any dangerous commands. The `source` array fetches a tarball from the official upstream repository (github.com/ggml-org/llama.cpp) and two files from the maintainer's own GitHub repository (Orion-zhen/aur-packages) via raw.githubusercontent.com. These are standard network fetches that are part of the package's intended source retrieval. There are no command substitutions, dangerous functions, or code that would execute malicious payloads during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed with the `--nobuild --noprepare` flags. No issues are present that would make these two commands unsafe.
</details>
<evidence></evidence>
<summary>Fetching and sourcing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Fetching and sourcing this PKGBUILD is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10680/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 3508 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a GPU-optimized fork of llama.cpp. The source array fetches the official upstream tarball (pinned by tag, checksummed) and two auxiliary files (systemd service + config) from the maintainer's own GitHub repository, both with valid SHA-256 checksums. The `prepare()` and `build()` functions perform routine operations: creating a symlink, setting up a dummy `.git` directory to work around a Tailwind CSS issue, running `npm ci`/`npm run build` on the upstream UI, and invoking `cmake` with ROCm/Vulkan flags. The `package()` function installs binaries, licenses, and configuration files into the expected directories. There are no obfuscated commands, no unexpected network requests, no data exfiltration, and no backdoors. The commented-out patch and CI-variant logic are benign. The use of `source /etc/profile` to load environment variables is unconventional but harmless in this context. All sources are integrity-checked, making this a safe package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR `.SRCINFO` metadata file, not an executable script or PKGBUILD build logic. It only declares package metadata, dependencies, sources, and checksums. The primary source is the official upstream `llama.cpp` repository tarball from `github.com/ggml-org/llama.cpp`, which is normal for this package.

The two additional sources are systemd service/config assets fetched from a maintainer's GitHub repository (`Orion-zhen/aur-packages`). While pulling assets from a personal repository is slightly unusual and worth noting as a supply-chain hygiene consideration, all three source entries are pinned by specific `sha256sums`, so the downloaded content is checked after fetching. There is no evidence of obfuscated code, network exfiltration, backdoors, build-time `git pull`/`reset --hard`, or execution of attacker-controlled scripts. The mutable `refs/heads/main` URL weakens reproducibility, but the pinned checksum mitigates the practical risk and this alone is not malicious.
</details>
<evidence></evidence>
<summary>SRCINFO metadata only; pinned checksums; no malicious behavior evident.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- SRCINFO metadata only; pinned checksums; no malicious behavior evident.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,928
  Completion Tokens: 2,895
  Total Tokens: 14,823
  Total Cost: $0.001498
  Execution Time: 43.87 seconds

Final Status: SAFE


No issues found.
