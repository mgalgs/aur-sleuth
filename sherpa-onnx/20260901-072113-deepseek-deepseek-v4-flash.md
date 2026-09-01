---
package: sherpa-onnx
pkgver: 1.13.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17429
completion_tokens: 2008
total_tokens: 19437
cost: 0.00173532940
execution_time: 110.42
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 6560
upstream_named_files: 2
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:21:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, one plain HTTP source, but no malicious code.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security concerns.
---

Cloning https://aur.archlinux.org/sherpa-onnx.git...
Cloned sherpa-onnx
Analyzing sherpa-onnx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments and a command substitution to create the `noextract` array. This substitution (`$(echo "${source[@]:1}" | sed -E 's|:\S+||g')`) is benign — it simply strips the URL fragments from the source entries, leaving filenames. No `pkgver()` function is defined. All `source` URLs point to legitimate upstream repositories (GitHub, GitLab, and one HTTP URL for portaudio which is a hygiene concern, not a threat). Checksums are provided for all sources. There is no code that exfiltrates data, downloads untrusted payloads, or executes any dangerous commands during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed by the requested commands (`--nobuild --noprepare`), so any content there is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/sherpa-onnx-1.13.7/c-api-examples/CMakeLists.txt, src/sherpa-onnx-1.13.7/cmake/pybind11.cmake); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 6560 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It contains only common ignore patterns (`/pkg`, `/src`, `*.tar.gz`, `*.tgz`, `*.pkg.tar.*`, `*.zip`) that prevent build artifacts and source archives from being committed to the repository. There is no executable code, no network operations, no obfuscation, and no instructions. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `sherpa-onnx` AUR package. It declares the package name, version, description, dependencies, and sources. All source URLs point to the project's own upstream repositories (GitHub, GitLab, PortAudio) and are pinned to specific tags or commits. Checksums (SHA256) are provided for all sources, ensuring integrity.  

One minor hygiene concern: the `pa_stable_v190700_20210406.tgz` source uses plain HTTP (`http://files.portaudio.com/...`) instead of HTTPS. While this is a transport security risk (man-in-the-middle could tamper with the download), it is not by itself evidence of a supply-chain attack. The file contains no obfuscated code, no unexpected network requests, no execution of arbitrary code, and no exfiltration of data. It is a standard packaging metadata file with no malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, one plain HTTP source, but no malicious code.</summary>
</security_assessment>

[2/4] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, one plain HTTP source, but no malicious code.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious behavior or supply chain attack. The file is purely a declaration of copyright and licensing terms.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for building a C++ library with Python bindings. All source tarballs are fetched from the project's own GitHub and well-known upstream repositories, with pinned versions and SHA-256 checksums provided for each. The build process uses CMake and Python's build system with no unusual network requests, obfuscated commands, or file operations outside the expected scope. No evidence of malicious behavior such as data exfiltration, backdoors, or execution of untrusted code was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,429
  Completion Tokens: 2,008
  Total Tokens: 19,437
  Total Cost: $0.001735
  Execution Time: 110.42 seconds

Final Status: SAFE


No issues found.
