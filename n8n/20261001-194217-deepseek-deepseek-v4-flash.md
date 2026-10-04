---
package: n8n
pkgver: 2.41.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25800
completion_tokens: 3926
total_tokens: 29726
cost: 0.00140867272
execution_time: 53.43
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T19:42:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging files; no malicious behavior found.
  - file: n8n.env
    status: safe
    summary: Benign n8n environment configuration; no malicious or suspicious behavior found.
  - file: n8n.service
    status: safe
    summary: Standard systemd service unit; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with no malicious or suspicious behavior found.
  - file: n8n.sysusers
    status: safe
    summary: Standard sysusers service account creation; no security issues found.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles config creating and owning n8n data directory; no malicious behavior.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd user service for n8n; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for n8n; no malicious code found.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, function definitions (`latestver`, `build`, `package`), and comments at the top level. No command substitutions (`$()`, backticks), `eval`, or any other code that would execute during sourcing are present. All potentially dangerous operations (like downloading from npm or running `npm install`) are inside functions that are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe for the purpose of this gate.
</details>
<evidence></evidence>
<summary>Safe to source; no active global code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source; no active global code.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It ignores all files by default and then whitelists essential packaging files such as `PKGBUILD`, `.SRCINFO`, `.install`, patches, service files, and documentation. No network operations, obfuscated code, dangerous commands, or system modifications are present. It is consistent with routine AUR packaging practices and contains no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR packaging files; no malicious behavior found.
</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, n8n.env...
[1/8] Reviewing .SRCINFO, PKGBUILD, n8n.env...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging files; no malicious behavior found.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment configuration file for the n8n workflow automation application. It contains only benign key=value settings: the data directory path (`N8N_USER_FOLDER=/var/lib/n8n`), the hostname (`N8N_HOST=localhost`), the HTTP port (`N8N_PORT=5678`), and several privacy/feature flags set to `false` (`N8N_DIAGNOSTICS_ENABLED`, `N8N_VERSION_NOTIFICATIONS_ENABLED`, `N8N_TEMPLATES_ENABLED`).

There is no executable code, no network fetching, no obfuscation, no encoded commands, and no file manipulation beyond pointing the application at its own data directory. All settings align with standard n8n deployment practice and the documented configuration options linked in the comments. No evidence of injected malicious behavior or supply-chain attack indicators was found.
</details>
<evidence>
</evidence>
<summary>
Benign n8n environment configuration; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, n8n.env, n8n.service...
[2/8] Reviewing .SRCINFO, PKGBUILD, n8n.service...
+ Reviewed n8n.env. Status: SAFE -- Benign n8n environment configuration; no malicious or suspicious behavior found.
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the n8n application. It runs the n8n executable as a dedicated `n8n` user, restarts on failure, optionally loads environment variables from `/etc/default/n8n`, and starts after the network is online. There are no network requests, downloads, obfuscated commands, file tampering, or other malicious operations. The unit is consistent with normal Arch Linux packaging for a system service and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed n8n.service. Status: SAFE -- Standard systemd service unit; no malicious or suspicious behavior found.
[3/8] Reviewing .SRCINFO, PKGBUILD, n8n.sysusers...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard packaging metadata for the n8n AUR package. It defines package name, version, dependencies, build options, service files, and SHA-256 checksums. No URL points to an unexpected or suspicious host; the source files are local auxiliary packaging files with checksums. There is no obfuscation, no eval/base64/curl-to-shell, no file exfiltration, no backdoor, and no code execution beyond standard package metadata. The dependency specification `nodejs&gt;=24.0.0` is a normal version constraint. Nothing in this file indicates malicious or supply-chain behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing PKGBUILD, n8n.sysusers, n8n.tmpfiles...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with no malicious or suspicious behavior found.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers.d configuration file. It creates a system user named `n8n` with the primary group `n8n`, sets the home directory to `/var/lib/n8n`, and specifies `/usr/bin/nologin` as the login shell. This is a routine and expected packaging practice for a service account used by the n8n application. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard sysusers service account creation; no security issues found.</summary>
</security_assessment>

[5/8] Reviewing PKGBUILD, n8n.tmpfiles...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard sysusers service account creation; no security issues found.
[5/8] Reviewing PKGBUILD, n8n.tmpfiles, n8n.user.service...
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration for the n8n package. The `d` line creates `/var/lib/n8n` with mode 0755, owned by the `n8n` user and group. The `Z` line recursively restores ownership of that same directory to `n8n:n8n`, which is normal packaging practice for ensuring the application can manage its own data directory.

There is no network activity, no code execution, no obfuscation, and no access to data outside the application's own state directory. The recursive ownership operation is scoped to `/var/lib/n8n` and is consistent with the application's intended purpose, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles config creating and owning n8n data directory; no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, n8n.user.service...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles config creating and owning n8n data directory; no malicious behavior.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service unit for the n8n application. It specifies an optional environment file under the user configuration directory (`%E/n8n/n8n.env`) and launches the n8n executable installed at `/usr/bin/n8n`. The `Restart` and `RestartSec` options are normal service resilience settings, and `WantedBy = default.target` is typical for user services. There are no network commands, no arbitrary script execution, no file manipulation, and no obfuscated content. The behavior is consistent with ordinary packaging for an application service unit.
</details>
<evidence>
</evidence>
<summary>
Standard systemd user service for n8n; no security concerns.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd user service for n8n; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for n8n follows standard AUR packaging practices for an npm-based application. The only external download is the npm tarball from `registry.npmjs.org`, the official npm registry — this is the package&#x27;s own upstream source and expected behavior. The build() and package() functions perform routine operations: downloading the source tarball, installing it with npm, rebuilding native addons with node-gyp (with compatibility patches for ssh2 to support future Node.js versions), and cleaning up platform-specific and development files to reduce package size. All file operations are scoped to the package directory (`$pkgdir`) or the build directory (`$srcdir`). There is no obfuscated code, no unexpected network destinations, no exfiltration of local data, no execution of attacker-controlled code, and no tampering with system files outside the package scope. The sed patch to `binding.cc` is a transparent, well-documented forward-compatibility fix for a known upstream issue (v8 API change), not a backdoor. The absence of checksums on the npm tarball is a hygiene concern (unpinned source) but not evidence of malice, as per the calibration rules.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for n8n; no malicious code found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for n8n; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,800
  Completion Tokens: 3,926
  Total Tokens: 29,726
  Total Cost: $0.001409
  Execution Time: 53.43 seconds

Final Status: SAFE


No issues found.
