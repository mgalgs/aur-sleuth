---
package: oranglauncher
pkgver: 8.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18269
completion_tokens: 4474
total_tokens: 22743
cost: 0.002476747
execution_time: 41.78
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T12:13:31Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no security concerns found.
  - file: orange.png
    status: skipped
    summary: "Skipping binary file: orange.png"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.
  - file: oranglauncher.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious content found.
  - file: oranglauncher-mime.xml
    status: safe
    summary: Standard MIME definition; no executable or malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Conventional AUR build with pinned source; no malicious code found.
  - file: oranglauncher.sh
    status: safe
    summary: Standard launch wrapper; no malicious behavior detected.
---

Materializing oranglauncher from local mirror...
Materialized oranglauncher
Analyzing oranglauncher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code executes at the global scope of this PKGBUILD. All top-level statements are variable and array assignments without command substitution or dangerous function calls. The build() and package() functions contain operational commands (venv setup, pip install, compilation with Nuitka, installation steps) but these are only invoked during actual packaging, not during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level scope safe, no code execution risk during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope safe, no code execution risk during --printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. The HTML entities (&quot;) are simple escaping of quotation marks in the license text and present no security concern.
</details>
<evidence></evidence>
<summary>Standard MIT license text; no security concerns found.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, orange.png...
[1/7] Reviewing .SRCINFO, PKGBUILD, orange.png...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no security concerns found.
[1/7] Reviewing .SRCINFO, PKGBUILD, orange.png, oranglauncher-mime.xml...
[2/7] Reviewing .SRCINFO, PKGBUILD, oranglauncher-mime.xml...
! Reviewed orange.png. Status: SKIPPED -- Skipping binary file: orange.png
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO describes a standard Arch User Repository package. It defines a single package `oranglauncher` that builds from an upstream GitHub release tarball (`Orang-Studio/OrangLaunch` tag `8.5.1`) and includes several expected auxiliary files such as a launcher script, desktop entry, icon, license, and MIME definition. All six sources have pinned SHA-256 checksums, which is good packaging hygiene.

No suspicious network endpoints, no encoded or obfuscated content, no unexpected file operations, and no executable payloads are present in this metadata file. The dependencies and build options are consistent with building a GTK/webkit application from source. There is no evidence of injected malicious behavior, exfiltration, backdoors, or downloading and executing untrusted code.
</details>
<evidence>

</evidence>
<summary>
Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, oranglauncher-mime.xml, oranglauncher.desktop...
[3/7] Reviewing PKGBUILD, oranglauncher-mime.xml, oranglauncher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.
LLM auditresponse for oranglauncher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the OrangLauncher application. It declares the application name, icon, terminal behavior, categories, and MIME types, and launches the installed binary at `/usr/bin/oranglauncher`. No malicious behavior is present.

There are no network requests, encoded commands, file operations, or any executable logic in this file. The `%f` argument is the standard field code for passing a single file to the application and is expected for MIME-type-aware launchers. The file conforms to normal packaging practice and does not warrant an UNSAFE classification.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious content found.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, oranglauncher-mime.xml, oranglauncher.desktop, oranglauncher.sh...
[4/7] Reviewing PKGBUILD, oranglauncher-mime.xml, oranglauncher.sh...
+ Reviewed oranglauncher.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious content found.
LLM auditresponse for oranglauncher-mime.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org shared MIME info definition. It registers the `application/x-mrpack` MIME type for Modrinth modpack files, associates it with the `oranglauncher` icon, and defines a `*.mrpack` glob pattern.

There is no executable content, no network access, no obfuscation, no file manipulation, and no deviation from normal packaging practices. The XML structure is simple, declarative data only. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard MIME definition; no executable or malicious content found.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, oranglauncher.sh...
+ Reviewed oranglauncher-mime.xml. Status: SAFE -- Standard MIME definition; no executable or malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a conventional Arch package build: it downloads a pinned upstream source tarball from the project's own GitHub repository, verifies it with a SHA-256 checksum, builds it with Python/Nuitka inside a virtual environment, and installs the resulting files into `$pkgdir`. The pip installs pull Python build dependencies from PyPI, which is normal for Python-based packages. There is no obfuscated code, no `eval`, no `curl|bash`, no unexpected file modification, and no exfiltration or backdoor pattern.

The use of `--assume-yes-for-downloads` with Nuitka may allow Nuitka to fetch toolchain components at build time, and `requirements.txt` is not pinned, so the build is not fully reproducible. These are supply-chain hygiene and reproducibility considerations, but they are not evidence of malicious behavior in this file. Nothing here deviates from standard AUR or Python packaging practice in a way that warrants an UNSAFE decision.
</details>
<evidence></evidence>
<summary>
Conventional AUR build with pinned source; no malicious code found.</summary>
</security_assessment>

[6/7] Reviewing oranglauncher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional AUR build with pinned source; no malicious code found.
LLM auditresponse for oranglauncher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launch wrapper for the OrangLauncher application. It sets the GDK backend to X11 for compatibility with the bundled WebKit/GTK web view, augments GI_TYPELIB_PATH so the bundled binary can find system GObject typelibs, and then executes the package's own binary with the user's arguments. There are no network requests, no downloads, no obfuscated commands, no file modification, and no exfiltration. The environment variable handling is standard and uses the typical `:+` parameter expansion to preserve any existing value. The final `exec` simply runs the installed application binary located under `/usr/lib/oranglauncher/`, which is expected behavior for a package wrapper script.
</details>
<evidence>
</evidence>
<summary>
Standard launch wrapper; no malicious behavior detected.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed oranglauncher.sh. Status: SAFE -- Standard launch wrapper; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: orange.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,269
  Completion Tokens: 4,474
  Total Tokens: 22,743
  Total Cost: $0.002477
  Execution Time: 41.78 seconds

Final Status: SAFE


No issues found.


Audit Skips:

orange.png: [SKIPPED] Skipping binary file: orange.png
