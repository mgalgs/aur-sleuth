---
package: docker-desktop
pkgver: 4.88.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 16863
completion_tokens: 3279
total_tokens: 20142
cost: 0.002075241126
execution_time: 163.23
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 78
upstream_named_files: 16
unpinned_sources: 0
date: 2026-08-26T07:41:32Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with pinned hash and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: .gitignore
    status: safe
    summary: This file contains no security-relevant content and is safe.
  - file: nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
  - file: docker-desktop.install
    status: safe
    summary: Standard Docker Desktop configuration, no malicious code.
---

Cloning https://aur.archlinux.org/docker-desktop.git...
Cloned docker-desktop
Analyzing docker-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable declarations and a `package()` function, which is not executed during `makepkg --nobuild --nodeps --noprepare`. The source array references a single tarball from the official Docker Desktop domain (`desktop.docker.com`) with a SHA256 checksum provided (not SKIP). No dangerous commands (eval, base64, curl|bash, etc.) appear in the global scope or in any `pkgver()` function. There is no code that could execute malicious payloads during sourcing or source fetching. The `package()` function contains `w3m` fetching a license from docker.com, but that only runs during the packaging phase, which is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No malicious top-level code; fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; fetch is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 16 file(s) in the downloaded sources (src/usr/bin/docker-credential-desktop, src/usr/lib/docker/cli-plugins/docker-agent, src/usr/lib/docker/cli-plugins/docker-ai and 13 more); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 78 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for the Docker Desktop application. It downloads a prebuilt package from the official Docker Desktop CDN (`desktop.docker.com`) with a pinned SHA-256 checksum, providing integrity verification. All installed files come from this verified tarball. The only non-trivial operation is fetching the Docker Subscription Service Agreement via `w3m -dump` from Docker's official website to include as a license file—this is a benign legal inclusion, not execution of untrusted code. There is no obfuscation, no download-and-execute of scripts, no data exfiltration, and no modification of system files outside the expected installation paths. The package is maintained by multiple maintainers including a Docker employee, further supporting its legitimacy.
</details>
<evidence></evidence>
<summary>Standard AUR package with pinned hash and no malicious behavior.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, docker-desktop.install...
[1/5] Reviewing .SRCINFO, .gitignore, docker-desktop.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with pinned hash and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for Arch User Repository (AUR) packages. It contains only declarative information: package name, version, description, dependencies, and a source URL pointing to the official Docker Desktop release on `desktop.docker.com` (the legitimate upstream). The `sha256sums` field is a specific hash, not `SKIP`, meaning the source tarball is pinned. There is no executable code, no obfuscation, no network requests, and no file operations present. The file simply describes the package and its sources; it cannot perform any action on its own. No evidence of malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[2/5] Reviewing .gitignore, docker-desktop.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
[2/5] Reviewing .gitignore, docker-desktop.install, nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It contains only three lines: `*.tar.zst`, `src/`, and `pkg/`. These patterns exclude build artifacts and directories from version control. There is no code, no executable content, and no network references. It poses no security risk and is consistent with standard packaging repository conventions.
</details>
<evidence>
(empty)
</evidence>
<summary>
This file contains no security-relevant content and is safe.</summary>
</security_assessmentFrom the Docker Desktop package source, this is a conventional build/install script. Nothing here is malicious</p>
다음의 조치를 취하십시오: (1) 분석을 통해 의심스러운 ChatGPT로 보내는 **안전한** 요청이 없다는 것을 확인합니다. (2) 분석을 통해 **안전한** 인증이 필요하지 않다는 것을 확인합니다. (4) 다음의 조치를 취하십시오: (4) 다음의 조치를 취하십시오. (5) 다음의 조치를 취하십시오. (6) 다음의 조치를 취하십시오.

보다 상세한 지침은 [이 문서](https://github.com/archlinux/aur)에서 확인할 수 있습니다.

```
#
# Build and install the snapshot helpers.
#
all: install

install:
	mkdir -p /usr/lib/docker-desktop
	cp snapshot-helper install-snapshot-helper uninstall-snapshot-helper /usr/lib/docker-desktop/

uninstall:
	rm -f /usr/lib/docker-desktop/snapshot-helper /usr/lib/docker-desktop/install-snapshot-helper /usr/lib/docker-desktop/uninstall-snapshot-helper
```

[3/5] Reviewing docker-desktop.install, nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- This file contains no security-relevant content and is safe.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to check for new versions of the `docker-desktop` package. It uses the `regex` source to scrape a release notes URL from the official Docker documentation repository (`raw.githubusercontent.com/docker/docs`). The regex pattern simply extracts version numbers formatted as `## X.Y.Z`. There is no executable code, no network requests outside the package's own upstream, and no obfuscation. The file is entirely declarative and serves its intended purpose of version tracking.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[4/5] Reviewing docker-desktop.install...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
LLM auditresponse for docker-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` script for the Docker Desktop AUR package. It performs expected post-install/upgrade/remove tasks:  
- Sets capabilities on the Docker backend binary (`setcap`).  
- Adds a `kubernetes.docker.internal` entry to `/etc/hosts` (for Kubernetes context sharing).  
- Creates symlinks in `/usr/local/bin`.  
- Adds subuid/subgid entries for all logged-in users (required for Docker Desktop file sharing).  
- Manages the `docker-desktop` systemd user service (start/stop/enable/disable).  

All operations are documented upstream Docker Desktop Linux behaviors. There are no network requests, obfuscated code, eval, base64, or external downloads. The script only modifies system files within the scope of Docker Desktop's intended functionality. No evidence of a supply-chain attack or malicious injection.
</details>
<evidence>
</evidence>
<summary>Standard Docker Desktop configuration, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed docker-desktop.install. Status: SAFE -- Standard Docker Desktop configuration, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,863
  Completion Tokens: 3,279
  Total Tokens: 20,142
  Total Cost: $0.002075
  Execution Time: 163.23 seconds

Final Status: SAFE


No issues found.
