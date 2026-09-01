---
package: python-sherpa-onnx
pkgbase: sherpa-onnx
pkgver: 1.13.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17439
completion_tokens: 1929
total_tokens: 19368
cost: 0.00172335324
execution_time: 93.69
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 6560
upstream_named_files: 2
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:20:55Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious code.
---

python-sherpa-onnx is built from sherpa-onnx
Cloning https://aur.archlinux.org/sherpa-onnx.git...
Cloned python-sherpa-onnx
Analyzing python-sherpa-onnx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level code only consists of standard variable assignments and a harmless `noextract` array definition using command substitution on string manipulation (removing URL fragments from source entries). There is no `pkgver()` function, and no `eval`, `curl`, `wget`, base64 decoding, or any other potentially dangerous code that would execute during the sourcing of the PKGBUILD. All sources are from legitimate upstream repositories (GitHub, GitLab, portaudio.com) with provided SHA256 checksums. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only fetch these sources and source the PKGBUILD, which poses no security risk.
</details>
<evidence></evidence>
<summary>Safe: no malicious top-level code or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/sherpa-onnx-1.13.7/c-api-examples/CMakeLists.txt, src/sherpa-onnx-1.13.7/cmake/pybind11.cmake); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 6560 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license (ISC-style). It contains no executable code, no network requests, no file operations, and no obfuscated content. There are no indicators of malicious behavior whatsoever.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard ignore patterns for an AUR package build environment: `/pkg`, `/src`, and common archive formats. There is no executable code, no network requests, no obfuscation, no unusual file operations, and no deviation from ordinary packaging conventions. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It declares package information, dependencies, source URLs, and sha256 checksums. All source URLs point to legitimate upstream repositories (github.com, gitlab.com, files.portaudio.com). One source uses plain HTTP (http://files.portaudio.com) instead of HTTPS, which is a minor hygiene concern but not malicious. All checksums are provided and none are skipped. There are no executable commands, obfuscated code, or signs of supply-chain attack. The file simply describes the package structure and sources.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the upstream source (sherpa-onnx) and its dependencies from well-known repositories (GitHub, GitLab). All sources have pinned SHA256 checksums, ensuring integrity despite one http URL (portaudio.com). No obfuscated commands, no unexpected network requests at build time, no file exfiltration, and no execution of untrusted code beyond the upstream build system. The prepare/build phases only perform standard operations: symlinking dependencies, patching CMakeLists, running cmake and python build. No signs of supply chain attack or malicious injection.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,439
  Completion Tokens: 1,929
  Total Tokens: 19,368
  Total Cost: $0.001723
  Execution Time: 93.69 seconds

Final Status: SAFE


No issues found.
