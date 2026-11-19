---
package: mtgpu-s30-userland
pkgver: 3.1.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22339
completion_tokens: 4898
total_tokens: 27237
cost: 0.002924285
execution_time: 57.12
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T16:11:14Z
file_verdicts:
  - file: 50_mtt_mesa.json
    status: safe
    summary: Standard static Mesa ICD config file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and expected upstream sources; no security issues found.
  - file: 10-mtt-s30.conf
    status: safe
    summary: Plain config file, no security issues.
  - file: mtgpu-s30-userland.install
    status: safe
    summary: Benign install script printing informational message only; no security concerns.
  - file: 70-mtgpu.rules
    status: safe
    summary: Standard udev rule for GPU access, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR graphics driver PKGBUILD with pinned checksums and expected sources.
  - file: repair-mtgpu-dri.py
    status: safe
    summary: Benign binary patching script, no malicious behavior.
---

Materializing mtgpu-s30-userland from local mirror...
Materialized mtgpu-s30-userland
Analyzing mtgpu-s30-userland AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its top-level scope. No command substitutions, backticks, `eval`, or any other constructs that execute code during sourcing. The `source` array is defined with static strings, the `sha256sums` are plain hex strings, and there are no calls to external commands (curl, wget, base64, etc.) outside of function bodies. Therefore sourcing this PKGBUILD with `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>Safe: no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level execution.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, 10-mtt-s30.conf...
[0/7] Reviewing .SRCINFO, 10-mtt-s30.conf, 50_mtt_mesa.json...
LLM auditresponse for 50_mtt_mesa.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Mesa EGL ICD configuration JSON file. It specifies the library path for the MThreads variant of the Mesa EGL driver. No executable code, network requests, or suspicious operations are present. The content is entirely static and follows normal packaging practices for GPU userland drivers.
</details>
<evidence></evidence>
<summary>Standard static Mesa ICD config file, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, 10-mtt-s30.conf, 50_mtt_mesa.json, 70-mtgpu.rules...
[1/7] Reviewing .SRCINFO, 10-mtt-s30.conf, 70-mtgpu.rules...
+ Reviewed 50_mtt_mesa.json. Status: SAFE -- Standard static Mesa ICD config file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a binary driver package for the Moore Threads MTT S30 GPU, with sources hosted on the package maintainer's own GitHub releases page. All seven source entries have pinned SHA-256 checksums, including the prebuilt `.deb`, the two `.so` files, the Python helper script, and the configuration files. No checksum is set to `SKIP`, and no source is fetched from an unexpected or unrelated host.

The file contains no executable logic, no network requests, no obfuscated strings, and no build or install commands. The `noextract` option and `!strip`/`!debug` options are normal packaging choices for a vendor-provided binary driver. The configuration files (`.conf`, `.rules`, `.json`) are consistent with supporting the driver's stated purpose. There is no evidence of injected malicious behavior or deviation from ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and expected upstream sources; no security issues found.</summary>
</security_assessment>

[2/7] Reviewing 10-mtt-s30.conf, 70-mtgpu.rules...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and expected upstream sources; no security issues found.
[2/7] Reviewing 10-mtt-s30.conf, 70-mtgpu.rules, PKGBUILD...
LLM auditresponse for 10-mtt-s30.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple configuration snippet that sets environment variables for the Moore Threads GPU driver. It contains no executable code, no network requests, no obfuscation, and no file manipulation. The variables `GBM_BACKEND`, `KWIN_DRM_DEVICES`, and `KWIN_DISABLE_UDMABUF_IMPORT` are standard hints for the KWin compositor to use a specific GPU backend and device. This is typical for proprietary graphics driver packages and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Plain config file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing 70-mtgpu.rules, PKGBUILD...
+ Reviewed 10-mtt-s30.conf. Status: SAFE -- Plain config file, no security issues.
[3/7] Reviewing 70-mtgpu.rules, PKGBUILD, mtgpu-s30-userland.install...
LLM auditresponse for mtgpu-s30-userland.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script only prints a user-facing message during post_install and post_upgrade. It performs no network requests, no file modifications, no command execution beyond `cat`, and contains no obfuscated or encoded content. The message simply describes where configuration files, udev rules, and documentation can be found.

The script is consistent with standard AUR `.install` helper scripts. There is no evidence of injected malicious code, data exfiltration, backdoors, or unexpected system manipulation.
</details>
<evidence>
</evidence>
<summary>
Benign install script printing informational message only; no security concerns.</summary>
</security_assessment>

[3/7] Reviewing 70-mtgpu.rules, PKGBUILD, mtgpu-s30-userland.install, repair-mtgpu-dri.py...
[4/7] Reviewing 70-mtgpu.rules, PKGBUILD, repair-mtgpu-dri.py...
+ Reviewed mtgpu-s30-userland.install. Status: SAFE -- Benign install script printing informational message only; no security concerns.
LLM auditresponse for 70-mtgpu.rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard udev rules file that grants world read-write access to GPU device nodes matching the `musa*` pattern (Moore Threads MTT S30 GPU). The rule also adds the `uaccess` tag, which is typical for allowing user-space access. There is no malicious content: no network requests, no code execution, no obfuscation, and no unexpected system modifications. This file follows normal packaging practices for hardware access.
</details>
<evidence></evidence>
<summary>Standard udev rule for GPU access, no malicious content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, repair-mtgpu-dri.py...
+ Reviewed 70-mtgpu.rules. Status: SAFE -- Standard udev rule for GPU access, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a graphics driver package. All sources are pinned with explicit sha256sums, providing verification integrity. All remote downloads originate from the package's own GitHub repository (`cont1nu1ty/mtt-s30-arch`), which is the project's declared upstream source. There are no unexpected network requests, obfuscated code, or backdoors.

The `prepare()` function extracts a .deb archive and runs a Python repair script (`repair-mtgpu-dri.py`) on a DRI shared library. While binary patching at build time is unusual, the repair script is itself a local file in the package source with a pinned checksum, and the .deb it patches is also pinned. The stated purpose (fixing a WaylandSwapChain double-free) is a legitimate compatibility fix for an upstream binary driver — this is within the maintainer's scope and not evidence of supply-chain injection.

The configuration files placed in `$pkgdir` (udev rules, sysctl limits, environment.d, modprobe.d) are standard for GPU driver packages that need device permissions and kernel module settings. There is no data exfiltration, no execution of content from unrelated hosts, and no manipulation of files outside the package's own installation scope.
</details>
<evidence></evidence>
<summary>Standard AUR graphics driver PKGBUILD with pinned checksums and expected sources.</summary>
</security_assessment>

[6/7] Reviewing repair-mtgpu-dri.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR graphics driver PKGBUILD with pinned checksums and expected sources.
LLM auditresponse for repair-mtgpu-dri.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `repair-mtgpu-dri.py` is a straightforward bug-fix helper that patches a specific double-free bug in a shipped binary (`mtgpu_dri.so`). It only reads the target file, validates its SHA256 hash against a hardcoded original, applies two NOP-like patches at fixed offsets, verifies the result against a known repaired hash, and writes the patched data back. There are no network requests, no execution of fetched code, no obfuscation, no data exfiltration, and no operations outside the intended file. The script is transparent and limited in scope—exactly what one would expect for an in-place binary repair tool shipped with a package. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Benign binary patching script, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed repair-mtgpu-dri.py. Status: SAFE -- Benign binary patching script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,339
  Completion Tokens: 4,898
  Total Tokens: 27,237
  Total Cost: $0.002924
  Execution Time: 57.12 seconds

Final Status: SAFE


No issues found.
