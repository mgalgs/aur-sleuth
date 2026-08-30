---
package: llama.cpp-vulkan
pkgver: b10688
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 14252
completion_tokens: 3399
total_tokens: 17651
cost: 0.00170336600
execution_time: 81.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3508
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T03:01:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting packaging files; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, dependency arrays, and function definitions (prepare, build, package) in its global scope. No top-level command substitutions, `exec`, `eval`, `curl`, `wget`, or other dangerous operations are present. The `source` array fetches an official tarball from GitHub and two static files (a systemd service and a config file) from the maintainer's personal GitHub repository over HTTPS. These are normal downloads and will not execute code. The `pkgver` is a static variable, not a function, so no code runs there. Since `--noprepare` and `--nobuild` prevent execution of prepare/build/package functions, only safe sourcing and source fetching occur.
</details>
<evidence>
</evidence>
<summary>No malicious code in global or pkgver scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global or pkgver scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10688/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 3508 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that ignores all files (`*`) and then whitelists the specific files the AUR maintainer wants to track in the package git repository: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. This is a common and recommended pattern for AUR package repositories, ensuring that only packaging-relevant files are committed. The `.nvchecker.toml` reference is a legitimate tool used by maintainers to track upstream version updates.

There is no executable code, no network activity, no obfuscation, no file manipulation outside normal git behavior, and no deviation from standard packaging practices. Any potential security concerns would reside in the contents of the whitelisted files (e.g., the PKGBUILD or service files), not in this .gitignore itself.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore whitelisting packaging files; no malicious behavior detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting packaging files; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata declaration for the `llama.cpp-vulkan` AUR package. It contains standard fields: package description, version, dependencies, source URLs, and checksums. The main source is the upstream tarball from `github.com/ggml-org/llama.cpp` with a pinned SHA256 checksum. The two additional sources (systemd service and configuration file) are fetched from a GitHub raw URL under the maintainer&#39;s repository (`Orion-zhen/aur-packages`). While these are not from the upstream project, it is a common and acceptable practice for AUR maintainers to provide auxiliary files (e.g., systemd units, configs) from their own repos. Both files have pinned SHA256 checksums, ensuring integrity. There are no dangerous commands, obfuscated code, or network activities that deviate from standard packaging. The file does not contain any executable content; it is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a -vulkan variant of llama.cpp. All three source URLs (upstream tarball, systemd service file, and configuration file) are pinned with SHA-256 checksums, ensuring integrity at download time. The auxiliary files originate from the maintainer's personal repository but are checksummed, which is acceptable for AUR configuration files. The prepare() function creates an empty `.git` directory to work around a Tailwind build issue — this is a benign local modification. The build() runs `npm ci` (which reads the lockfile) and `cmake` with flags appropriate for the project; no unexpected network calls, obfuscated commands, or file exfiltration are present. The package() installs binaries, a license, a systemd service, and a config file into expected paths. No evidence of malicious behavior was found.
</details>
<evidence/>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool used to automatically check for new versions of a package. It defines a git source pointing to the official upstream repository (`https://github.com/ggerganov/llama.cpp.git`) and a regex pattern to match version tags. There is no executable code, no obfuscation, no unexpected network destinations, and no malicious behavior. The file is entirely benign and follows standard practices for version tracking in AUR packages.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,252
  Completion Tokens: 3,399
  Total Tokens: 17,651
  Total Cost: $0.001703
  Execution Time: 81.90 seconds

Final Status: SAFE


No issues found.
