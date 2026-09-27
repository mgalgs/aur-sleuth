---
package: stirling-pdf-bin
pkgver: 3.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25017
completion_tokens: 4126
total_tokens: 29143
cost: 0.0015603161
execution_time: 41.38
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T19:21:25Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no executable code or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, all sources pinned, no suspicious behavior.
  - file: stirling-pdf.env
    status: safe
    summary: Benign environment config with weak default credentials; no malicious or injected behavior.
  - file: stirling-pdf.service
    status: safe
    summary: Standard AUR service file, no malicious indicators.
  - file: stirling-pdf.sh
    status: safe
    summary: Simple launch script, no malicious content.
  - file: stirling-pdf.sysusers
    status: safe
    summary: Sysusers snippet creating an unprivileged system user; standard and safe.
  - file: stirling-pdf.tmpfiles
    status: safe
    summary: Routine tmpfiles configuration for application state directory; no security concerns.
---

Materializing stirling-pdf-bin from local mirror...
Materialized stirling-pdf-bin
Analyzing stirling-pdf-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable definitions and arrays at the global scope. There are no command substitutions, `eval`, `curl`, `wget`, or any other potentially dangerous commands that would execute during `makepkg --printsrcinfo`. The `package()` function and other build steps are not sourced or executed at this stage, so they are out of scope. The URLs in the `source` array are merely strings and do not trigger downloads or code execution. No obfuscation or suspicious patterns are present.
</details>
<evidence></evidence>
<summary>No top-level malicious code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR package repositories. It lists patterns to exclude build artifacts (`/pkg`, `/src`, `*.jar`, `*.pkg.tar.*`, `*.tar.gz`). There are no commands, network operations, obfuscated code, or any indication of malicious activity. This file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text ISC license file. It contains no executable code, no network requests, no obfuscation, and no system operations. It is a standard legal text with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[2/9] Reviewing .SRCINFO, PKGBUILD, stirling-pdf.env...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `stirling-pdf-bin` package. It contains only declarative information: package base, version, dependencies, source URLs, and checksums. All source URLs point to the official upstream GitHub repository of Stirling-PDF. No executable code, no obfuscated strings, no unexpected network destinations, and no instructions are present in this file. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no executable code or malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, stirling-pdf.env, stirling-pdf.service...
[3/9] Reviewing PKGBUILD, stirling-pdf.env, stirling-pdf.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no executable code or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a `-bin` package. All source URLs point to the official GitHub repository for Stirling-PDF. All sources have pinned SHA-256 checksums (none are `SKIP`), ensuring integrity of the downloaded artifacts. The `package()` function only installs files into `$pkgdir` (the package image) using standard `install` commands—no network access, no execution of untrusted code, no system modifications beyond the package's own directories. There is no obfuscation, encoding, or suspicious commands (eval, curl, wget, etc.) outside the expected source download. The use of a prebuilt JAR is normal for a `-bin` variant. No evidence of supply-chain injection or malicious behavior.</details>
<evidence></evidence>
<summary>Standard PKGBUILD, all sources pinned, no suspicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, stirling-pdf.env, stirling-pdf.service, stirling-pdf.sh...
[4/9] Reviewing stirling-pdf.env, stirling-pdf.service, stirling-pdf.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, all sources pinned, no suspicious behavior.
LLM auditresponse for stirling-pdf.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment-variable configuration for Stirling-PDF, an upstream PDF manipulation application. It sets JVM garbage-collection options, the local server host/port (127.0.0.1:8080), and application security settings. All values are conventional configuration parameters documented by the upstream project, with comments referencing the official Stirling-PDF documentation and GitHub repository. There is no obfuscation, no encoded content, no network requests, no downloads, no file-system manipulation, and no execution of external code.

The file does contain some weak-security defaults: the login CSRF protection is disabled, and the initial credentials are the well-known defaults `admin`/`stirling`. These are functional defaults of the application itself (the comments explicitly tell users to override them and point to upstream documentation), not injected malicious code. They should be noted as operational security concerns — anyone deploying this without changing the password or enabling protections would be vulnerable — but they do not constitute a supply-chain attack or malicious behavior in the AUR package context.
</details>
<evidence>
</evidence>
<summary>
Benign environment config with weak default credentials; no malicious or injected behavior.</summary>
</security_assessment>

[4/9] Reviewing stirling-pdf.env, stirling-pdf.service, stirling-pdf.sh, stirling-pdf.sysusers...
[5/9] Reviewing stirling-pdf.service, stirling-pdf.sh, stirling-pdf.sysusers...
+ Reviewed stirling-pdf.env. Status: SAFE -- Benign environment config with weak default credentials; no malicious or injected behavior.
LLM auditresponse for stirling-pdf.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service file is a standard unit for the Stirling-PDF application. It sets up proper execution environment with hardened security options (ProtectSystem, ProtectHome, PrivateTmp, NoNewPrivileges). The ExecStop command uses `killall -9 soffice.bin` to forcefully terminate LibreOffice helper processes on service stop — this is legitimate cleanup behavior for an application that relies on LibreOffice for PDF conversion, not a malicious action. No signs of code injection, network exfiltration, obfuscation, or other supply-chain attack patterns are present.
</details>
<evidence></evidence>
<summary>Standard AUR service file, no malicious indicators.</summary>
</security_assessment>

[5/9] Reviewing stirling-pdf.service, stirling-pdf.sh, stirling-pdf.sysusers, stirling-pdf.tmpfiles...
[6/9] Reviewing stirling-pdf.sh, stirling-pdf.sysusers, stirling-pdf.tmpfiles...
+ Reviewed stirling-pdf.service. Status: SAFE -- Standard AUR service file, no malicious indicators.
LLM auditresponse for stirling-pdf.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `stirling-pdf.sh` is a standard launch script for the Stirling PDF application. It starts an unoserver instance on localhost (127.0.0.1) and then runs the application's Java JAR with a memory limit of 512MB. There are no suspicious network requests, obfuscated code, unexpected file operations, or any commands that deviate from normal application launch behavior. The shebang line uses `/usr/bin/sh` (typically a symlink to a shell), which is acceptable. No evidence of a supply-chain attack or malicious intent is present.
</details>
<evidence>
</evidence>
<summary>Simple launch script, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing stirling-pdf.sysusers, stirling-pdf.tmpfiles...
+ Reviewed stirling-pdf.sh. Status: SAFE -- Simple launch script, no malicious content.
LLM auditresponse for stirling-pdf.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd sysusers.d snippet that creates an unprivileged system user `stirling-pdf` with a descriptive comment. It performs no commands, network access, file operations, or any other behavior outside standard packaging and user-creation practice. There is no obfuscation and no mechanism for code execution.

The content is consistent with a normal AUR package that needs a dedicated service account. The quoted fields are standard sysusers syntax: user name, ID, GECOS/comment field, home directory, and shell. No supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Sysusers snippet creating an unprivileged system user; standard and safe.</summary>
</security_assessment>

[8/9] Reviewing stirling-pdf.tmpfiles...
+ Reviewed stirling-pdf.sysusers. Status: SAFE -- Sysusers snippet creating an unprivileged system user; standard and safe.
LLM auditresponse for stirling-pdf.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It creates a runtime/state directory `/var/lib/stirling-pdf` with mode 0755 and assigns ownership to the `stirling-pdf` user and group. The second line uses `Z` to recursively restore ownership on that same directory, which is normal for packaged applications that need persistent state.

There is no malicious behavior here: no network access, no code execution, no obfuscation, no exfiltration, and no modification of files outside the package's own stated state directory. The configuration is consistent with ordinary packaging practice for an application that stores data under `/var/lib`.
</details>
<evidence>
</evidence>
<summary>
Routine tmpfiles configuration for application state directory; no security concerns.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed stirling-pdf.tmpfiles. Status: SAFE -- Routine tmpfiles configuration for application state directory; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,017
  Completion Tokens: 4,126
  Total Tokens: 29,143
  Total Cost: $0.001560
  Execution Time: 41.38 seconds

Final Status: SAFE


No issues found.
