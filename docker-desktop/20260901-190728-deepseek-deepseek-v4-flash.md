---
package: docker-desktop
pkgver: 4.89.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16873
completion_tokens: 3486
total_tokens: 20359
cost: 0.00174593090
execution_time: 63.3
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 78
upstream_named_files: 16
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:07:28Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for Arch packaging.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with pinned source and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: nvchecker.toml
    status: safe
    summary: Standard version-checking config, no malicious content.
  - file: docker-desktop.install
    status: safe
    summary: Standard Docker Desktop installation script, no malicious behavior.
---

Cloning https://aur.archlinux.org/docker-desktop.git...
Cloned docker-desktop
Analyzing docker-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variables in its global scope (no command substitutions, no function calls). There is no `pkgver()` function that could execute code during the source fetch/parse step. The `source` array points to an HTTPS URL on the official Docker domain with a pinned SHA-256 checksum. No base64, eval, curl|bash, or other obfuscated/executable constructs appear in the accessible scope. The `package()` function contains a `w3m -dump` command that would fetch a license file from Docker's website, but this function is **not** executed during `makepkg --nobuild --nodeps --noprepare` (which stops before build/package). Therefore, running the specified commands is safe.
</details>
<evidence></evidence>
<summary>Safe: no dangerous code in parseable scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous code in parseable scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 16 file(s) in the downloaded sources (src/usr/bin/docker-credential-desktop, src/usr/lib/docker/cli-plugins/docker-agent, src/usr/lib/docker/cli-plugins/docker-ai and 13 more); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 78 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in Arch Linux packaging workflows. It ignores built tarball files (`*.tar.zst`) and the `src/` and `pkg/` directories that are generated during the `makepkg` build process. There is no executable code, no network requests, no suspicious patterns, and no deviations from typical packaging practices. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for Arch packaging.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for Arch packaging.
[1/5] Reviewing .SRCINFO, PKGBUILD, docker-desktop.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for Docker Desktop. It downloads a prebuilt binary tarball from Docker's official domain (`desktop.docker.com`) with a pinned revision and a SHA-256 checksum. The `package()` function extracts files into the package directory without any obfuscated commands, eval, base64, or unexpected network requests. The only external network call is `w3m -dump` to fetch the Docker Subscription Service Agreement from Docker's legal page — this is a routine practice for including the license text in the package. No code is executed from the downloaded content during the build; all operations are standard `install` and `cp` commands. There is no evidence of injected malicious code, backdoors, exfiltration, or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Standard AUR package with pinned source and no malicious behavior.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, docker-desktop.install, nvchecker.toml...
[2/5] Reviewing .SRCINFO, docker-desktop.install, nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with pinned source and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares the package name, version, dependencies, and a single source (an official Docker Desktop `.pkg.tar.zst` archive from `desktop.docker.com`) with a fixed SHA-256 checksum. No malicious instructions, obfuscated code, or unusual operations are present. The file contains only static metadata; it does not define any build, prepare, or install steps that could execute commands. The source URL points to Docker&#x27;s own distribution domain and the checksum is provided (not SKIP), which aligns with good packaging hygiene.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing docker-desktop.install, nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for checking the latest version of docker-desktop. The source is set to &quot;regex&quot;, which fetches content from the official Docker release notes page on GitHub (raw.githubusercontent.com/docker/docs/...). The regex extracts version numbers of the form `## X.Y.Z`. There is no code execution, no obfuscation, no unexpected network destinations, and no file system operations. This is a routine version-checking configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard version-checking config, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing docker-desktop.install...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard version-checking config, no malicious content.
LLM auditresponse for docker-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux .install script for the Docker Desktop package. It performs expected setup operations: setting capabilities on the Docker backend binary, adding a kubernetes.docker.internal host entry to /etc/hosts, creating symlinks in /usr/local/bin, configuring user namespace mapping in /etc/subuid and /etc/subgid for file sharing, and managing systemd user services for all logged-in users. All operations are documented upstream and serve the application's stated purpose (privileged port binding, Kubernetes context resolution, and file sharing). There is no obfuscated code, no network requests to untrusted hosts, no exfiltration of data, no execution of untrusted code, and no backdoors. The script is consistent with benign packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard Docker Desktop installation script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed docker-desktop.install. Status: SAFE -- Standard Docker Desktop installation script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,873
  Completion Tokens: 3,486
  Total Tokens: 20,359
  Total Cost: $0.001746
  Execution Time: 63.30 seconds

Final Status: SAFE


No issues found.
