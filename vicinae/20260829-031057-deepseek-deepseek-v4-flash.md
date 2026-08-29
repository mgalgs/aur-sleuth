---
package: vicinae
pkgver: 0.27.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16747
completion_tokens: 2887
total_tokens: 19634
cost: 0.00192959928
execution_time: 104.47
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 2476
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T03:10:57Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard PKGBUILD metadata; no suspicious behavior or injected malicious code found.
  - file: vicinae.install
    status: safe
    summary: Legitimate post-install setup for input monitoring and injection.
  - file: vicinae.hook
    status: safe
    summary: Standard pacman hook for user service restart after upgrade.
  - file: PKGBUILD
    status: safe
    summary: Safe; standard AUR PKGBUILD with non-executed metadata fetch.
---

Cloning https://aur.archlinux.org/vicinae.git...
Cloned vicinae
Analyzing vicinae AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any top-level code or <code>pkgver()</code> function that executes arbitrary commands or fetches untrusted content during sourcing. The <code>source</code> array contains two entries: a tarball from the official GitHub releases URL and a local hook file. Both use HTTPS and checksums are pinned (not SKIP). No command substitution, obfuscation, or dangerous operations (e.g., <code>eval</code>, <code>curl|bash</code>) are present in the global scope. The <code>prepare()</code>, <code>build()</code>, and <code>package()</code> functions are not executed with the <code>--nobuild --noprepare</code> flags, so they are out of scope for this gate. Therefore, running <code>makepkg --nobuild --nodeps --noprepare</code> and <code>makepkg --printsrcinfo</code> is safe.</details>
<evidence></evidence>
<summary>Safe: no malicious top-level code; standard source fetch with pinned checksums.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code; standard source fetch with pinned checksums.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 2476 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to automatically check for new upstream releases. It points to the official GitHub repository of the vicinae project and requests the latest release tag with a typical &quot;v&quot; prefix. No malicious or unusual behavior is present.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores common build artifacts (`*.zst`, `*.gz`, `pkg/`, `src/`) and backup files (`*.bak`). There is no executable code, network requests, or any other potentially malicious content.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, vicinae.hook...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch User Repository metadata file. It describes a package named `vicinae` that builds from the project's official GitHub tag archive (`https://github.com/vicinaehq/vicinae/archive/refs/tags/v0.27.4.tar.gz`) and includes an installation hook file. Both source entries have pinned SHA-256 checksums, and the dependencies/makedepends are all legitimate build-time and runtime dependencies for a Qt/QML-based launcher application. There is no source code, shell script, or executable logic in this file that could perform network requests, obfuscation, file modification, or data exfiltration. The contents are consistent with normal packaging practices and contain no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD metadata; no suspicious behavior or injected malicious code found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, vicinae.hook, vicinae.install...
[3/6] Reviewing PKGBUILD, vicinae.hook, vicinae.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard PKGBUILD metadata; no suspicious behavior or injected malicious code found.
LLM auditresponse for vicinae.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vicinae.install` is a standard Arch Linux package installation script that performs two legitimate actions: setting a required Linux capability (`cap_dac_override+ep`) on the application's input-monitoring binary, and loading the `uinput` kernel module needed for input injection. Both actions are clearly documented in comments and are normal for a text-expansion/snippet tool that must interact with input devices and virtual input. There is no obfuscation, no network activity, no data exfiltration, and no execution of untrusted code. The script does exactly what a post-installation script for such an application should do.
</details>
<evidence></evidence>
<summary>Legitimate post-install setup for input monitoring and injection.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, vicinae.hook...
+ Reviewed vicinae.install. Status: SAFE -- Legitimate post-install setup for input monitoring and injection.
LLM auditresponse for vicinae.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook for restarting a systemd user unit (`vicinae.service`) after a package upgrade. It iterates over logged-in users via `loginctl list-users`, checks if the service is enabled for each user, and restarts it. All commands (`loginctl`, `systemctl`, `awk`) are standard system utilities, and the pattern is typical for AUR packages that ship user services. No suspicious network requests, obfuscation, or unexpected file operations are present.
</details>
<evidence></evidence>
<summary>Standard pacman hook for user service restart after upgrade.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed vicinae.hook. Status: SAFE -- Standard pacman hook for user service restart after upgrade.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The `prepare()` function fetches a JSON metadata file from GitHub's API (`api.github.com`) to obtain the commit hash corresponding to the tagged release. This data is not executed—it is parsed with `jq` and passed as a build flag (`-DVICINAE_GIT_COMMIT_HASH`) for provenance tracking. No code is downloaded or executed from this request. All sources are pinned with checksums (no `SKIP`), and the build and install steps use standard cmake/make operations. There are no obfuscated commands, unexpected network destinations, or exfiltration of sensitive data. The pacman hook file is a packaged asset installed normally. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe; standard AUR PKGBUILD with non-executed metadata fetch.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe; standard AUR PKGBUILD with non-executed metadata fetch.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,747
  Completion Tokens: 2,887
  Total Tokens: 19,634
  Total Cost: $0.001930
  Execution Time: 104.47 seconds

Final Status: SAFE


No issues found.
