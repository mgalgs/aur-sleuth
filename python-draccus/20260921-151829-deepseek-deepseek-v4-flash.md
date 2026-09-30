---
package: python-draccus
pkgver: 0.11.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12845
completion_tokens: 4081
total_tokens: 16926
cost: 0.00116462808
execution_time: 108.08
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:18:28Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: python314-argparse-types.patch
    status: safe
    summary: Benign Python 3.14 compatibility patch; no security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Python PKGBUILD using pinned upstream sources; no malicious behavior found.
---

Materializing python-draccus from local mirror...
Materialized python-draccus
Analyzing python-draccus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines metadata variables and function definitions at the top level. `makepkg --printsrcinfo` sources the PKGBUILD but does not execute `prepare()`, `build()`, `check()`, or `package()`, so the shell commands inside those functions are out of scope for this gate. The `source` array references a normal GitHub tarball URL and does not perform any download, command substitution, or evaluation at parse time. No obfuscated code, top-level network requests, or data-exfiltration attempts were found in the executed scope.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe for --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing LICENSE...
[0/4] Reviewing LICENSE, .SRCINFO...
[0/4] Reviewing LICENSE, .SRCINFO, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license file attributed to "Arch Linux Contributors". It contains only license text granting permission to use, copy, modify, and distribute the software, along with a disclaimer of liability. There are no executable instructions, network requests, obfuscated code, or any other security-relevant content. This is a normal license file commonly found in software packages.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing LICENSE, .SRCINFO, PKGBUILD, python314-argparse-types.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, python314-argparse-types.patch...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for python314-argparse-types.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch to the Draccus Python library. It updates `field_wrapper.py` so that when running on Python 3.14, a non-callable type annotation such as `typing.Union` is replaced with `str` before argparse validates the `type` option. This is a legitimate compatibility fix consistent with the library&apos;s stated behavior of converting CLI values to strings before decoding them.

There is no evidence of malicious behavior. The patch contains no network access, downloads, code execution, obfuscation, credential access, or file system modification outside the package&apos;s own source tree. It is a minimal and transparent change to support a newer Python version.
</details>
<evidence>
</evidence>
<summary>
Benign Python 3.14 compatibility patch; no security concerns found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed python314-argparse-types.patch. Status: SAFE -- Benign Python 3.14 compatibility patch; no security concerns found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `python-draccus` Arch User Repository (AUR) package. It contains only metadata fields (package name, description, version, dependencies, source URLs, checksums) and no executable code. The sources point to the official GitHub repository (`github.com/dlwh/draccus`) with pinned commit tags, and all checksums (`sha256sums`) are provided and non-skipped. There is no obfuscation, no network requests to unexpected hosts, and no dangerous commands. This file is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux Python packaging practices. The source is a tagged upstream tarball from the project&apos;s own GitHub repository with pinned SHA-256 checksums, and a patched file also has a pinned checksum. There are no unpinned VCS sources, no downloads or execution from unexpected hosts, and no use of obfuscated, encoded, or dynamically evaluated commands.

The build, check, and package functions perform ordinary operations: building a wheel with `python -m build`, running the project&apos;s test suite with `pytest`, installing the wheel with `python -m installer`, and installing the license. The `rm -rf` commands are limited to build artifacts, scratch test directories under `$srcdir`, and packaged `examples`/`tests` directories inside the installation payload. No data is exfiltrated, no system files outside the package scope are modified, and no backdoors or reverse shells are present.
</details>
<evidence>
</evidence>
<summary>
Standard Python PKGBUILD using pinned upstream sources; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Python PKGBUILD using pinned upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,845
  Completion Tokens: 4,081
  Total Tokens: 16,926
  Total Cost: $0.001165
  Execution Time: 108.08 seconds

Final Status: SAFE


No issues found.
