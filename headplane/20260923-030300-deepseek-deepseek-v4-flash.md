---
package: headplane
pkgver: 0.7.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19757
completion_tokens: 5257
total_tokens: 25014
cost: 0.002682192226
execution_time: 130.4
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T03:03:00Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Routine .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no issues.
  - file: headplane.service
    status: safe
    summary: Systemd unit safely generates a local cookie secret and launches the packaged application with hardening.
  - file: PKGBUILD
    status: safe
    summary: Standard Go+npm build, pinned checksums, no malicious activity.
  - file: headplane.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
  - file: headplane.sh
    status: safe
    summary: Standard Node.js launcher script; no suspicious, obfuscated, or malicious behavior found.
  - file: headplane.sysusers
    status: safe
    summary: Benign sysusers.d snippet creating a dedicated system user; no malicious behavior.
---

Materializing headplane from local mirror...
Materialized headplane
Analyzing headplane AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable assignments (pkgname, pkgver, etc.), a function definition (`_setgoenv`), and standard source/checksum arrays. No commands are executed at parse time that could download, run, or exfiltrate data. The dangerous operations (network fetches, builds, file installations) occur exclusively inside `prepare()`, `build()`, and `package()`, which are not invoked by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe for the narrow purpose of generating `.SRCINFO`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores common build artifacts and directories (`src/`, `pkg/`, `.tar.gz`, `.pkg.tar.*`, `.log`). No network access, obfuscation, or dangerous operations are present. It is a benign configuration file.
</details>
<evidence>
</evidence>
<summary>Routine .gitignore file, no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, headplane.service...
[1/7] Reviewing .SRCINFO, PKGBUILD, headplane.service...
+ Reviewed .gitignore. Status: SAFE -- Routine .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the headplane AUR package. It declares the package name, version, dependencies, and source files with valid SHA256 checksums. There is no obfuscated code, no suspicious network requests, no dangerous commands, and no evidence of supply-chain attack. The sources point to the official upstream GitHub repository and local packaging files. All checksums are present and non-SKIP. The file is purely declarative and contains no executable content.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, headplane.service, headplane.sh...
[2/7] Reviewing PKGBUILD, headplane.service, headplane.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no issues.
LLM auditresponse for headplane.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Headplane web UI. It launches the Node.js application from the package install path and applies a sensible set of hardening options (NoNewPrivileges, PrivateTmp, ProtectSystem, ProtectHome, RestrictSUIDSGID, etc.).

The only non-trivial command is `ExecStartPre`, which generates a 24-byte random cookie secret using `/dev/urandom` and base64, writes it to `/etc/headplane/cookie_secret` with a restrictive umask, and chowns it to the service user. This is expected, benign behavior for an application that needs a persistent secret for sessions/cookies. There is no evidence of exfiltration, remote code download, obfuscated commands, or tampering with unrelated system files. The service invokes only the packaged application binary and the system RNG utility.
</details>
<evidence>
</evidence>
<summary>
Systemd unit safely generates a local cookie secret and launches the packaged application with hardening.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, headplane.service, headplane.sh, headplane.sysusers...
[3/7] Reviewing PKGBUILD, headplane.sh, headplane.sysusers...
+ Reviewed headplane.service. Status: SAFE -- Systemd unit safely generates a local cookie secret and launches the packaged application with hardening.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a Go + npm application.  
All sources are explicitly listed with pinned checksums (none are `SKIP`).  
The `prepare()` and `build()` functions perform expected operations: cloning upstream dependencies via `go mod`, patching a vendored tailscale library (the patch file is part of the upstream tarball), building a WASM binary and the main agent, then running `pnpm install --frozen-lockfile` to fetch JavaScript dependencies.  

No obfuscated code, suspicious network requests, or attempts to exfiltrate data are present.  
The only network activity during build is pulling Go modules and npm packages from their respective official registries, which is normal for the upstream application.  
The patch applied to the vendor tree is legitimate (adjusting DERP port handling in tailscale).  

No evidence of supply‑chain injection or malicious intent.
</details>
<evidence>

</evidence>
<summary>Standard Go+npm build, pinned checksums, no malicious activity.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, headplane.sh, headplane.sysusers, headplane.tmpfiles...
[4/7] Reviewing headplane.sh, headplane.sysusers, headplane.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go+npm build, pinned checksums, no malicious activity.
LLM auditresponse for headplane.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file. It creates a directory `/var/lib/headplane` with mode 0750, owned by the headplane user and group. This is normal packaging practice for providing a runtime state directory for the application. No malicious or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[5/7] Reviewing headplane.sh, headplane.sysusers...
+ Reviewed headplane.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no security issues.
LLM auditresponse for headplane.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard application launcher wrapper. It changes to the installation directory (`/usr/share/headplane`) and then uses `exec` to replace the shell with Node.js, running the application's main entry point (`build/server/index.js`) and forwarding any CLI arguments via `"$@"`.

There is no network activity, no use of dangerous commands (eval, base64, curl, wget, etc.), no obfuscation, no file modification, and no data exfiltration. The `&quot;` sequences are just the XML-escaping of the standard `"$@"` idiom for passing positional parameters. This is consistent with ordinary, expected AUR packaging practice for a Node.js application. No malicious or suspicious behavior is present.
</details>
<evidence>

</evidence>
<summary>
Standard Node.js launcher script; no suspicious, obfuscated, or malicious behavior found.
</summary>
</security_assessment>

[6/7] Reviewing headplane.sysusers...
+ Reviewed headplane.sh. Status: SAFE -- Standard Node.js launcher script; no suspicious, obfuscated, or malicious behavior found.
LLM auditresponse for headplane.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet. The line `u! headplane - &amp;quot;Headplane web UI&amp;quot; /var/lib/headplane` instructs systemd-sysusers to create a system account named `headplane` with a locked password (`!`), an automatically assigned UID (`-`), the display name "Headplane web UI", and home directory `/var/lib/headplane`.

The `&amp;quot;` sequences are simply escaped double quotes that delimit the comment field in the sysusers syntax; they represent no code execution, encoding trick, or obfuscation. There is no network activity, no file exfiltration, no shell command, and no modification of system files beyond the standard user-account creation that the package declares. Creating a dedicated unprivileged system user is ordinary packaging practice for a web-based service.
</details>
<evidence>
</evidence>
<summary>Benign sysusers.d snippet creating a dedicated system user; no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed headplane.sysusers. Status: SAFE -- Benign sysusers.d snippet creating a dedicated system user; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,757
  Completion Tokens: 5,257
  Total Tokens: 25,014
  Total Cost: $0.002682
  Execution Time: 130.40 seconds

Final Status: SAFE


No issues found.
