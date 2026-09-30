---
package: codex-desktop-git
pkgver: 26.915.31945.r2129.g1ef0ece6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16367
completion_tokens: 3470
total_tokens: 19837
cost: 0.00112899108
execution_time: 57.1
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T03:01:40Z
file_verdicts:
  - file: LicenseRef-OpenAI-Terms
    status: safe
    summary: Plain-text license notice, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD with no malicious code.
  - file: codex-desktop-git.install
    status: safe
    summary: Routine file-guarded install hook; no malicious behavior or suspicious network/file operations found.
---

Materializing codex-desktop-git from local mirror...
Materialized codex-desktop-git
Analyzing codex-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any executable code at the global/top-level scope. All variable assignments are static strings or arrays, and the only dynamic references (e.g., `"$pkgname"` or `"$srcdir"`) expand previously defined variables or standard makepkg variables—no command substitutions or dangerous operations. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but not invoked during sourcing. There are no top-level calls to `curl`, `wget`, `eval`, `base64` decoding, or any other payload-triggering mechanism. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, LicenseRef-OpenAI-Terms...
LLM auditresponse for LicenseRef-OpenAI-Terms:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license notice explaining the legal and licensing status of the package. It contains no executable code, no network requests, no obfuscation, and no instructions for the build system. The mention that the build process downloads from OpenAI&#39;s CDN is a factual statement about the upstream source, not an action performed by this file. No security concerns are present.
</details>
<evidence></evidence>
<summary>Plain-text license notice, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LicenseRef-OpenAI-Terms. Status: SAFE -- Plain-text license notice, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, codex-desktop-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative fields: package name, description, version, dependencies, source URLs, and checksums. There are no executable commands, obfuscated code, network requests, or unexpected operations. The use of `SKIP` for the VCS source checksum is normal and expected for `-git` packages. The second checksum is a valid SHA256 for a license file. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, codex-desktop-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package that repackages an upstream application. It clones the upstream repository (`github.com/ilysenko/codex-desktop-linux.git`), runs the upstream `install.sh` script (which downloads OpenAI's official Linux deb from their signed APT repository), and stages the files using upstream helper scripts. There is no obfuscated code, no unexpected network destinations (the only external fetch is the application's own official source), no exfiltration, and no injection of malicious commands. The use of `SKIP` checksums is normal for VCS sources. The `install` file referenced is not provided, but referencing a `.install` file is standard. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/4] Reviewing codex-desktop-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD with no malicious code.
LLM auditresponse for codex-desktop-git.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install scriptlet (`.install`) for the `codex-desktop-git` AUR package. Its purpose is to run optional, file-guarded cleanup and desktop-entry repair helpers that are staged by the package itself under `/opt/codex-desktop/.codex-linux/`. The script does not perform any network requests, does not download or execute anything from remote sources, and contains no obfuscated or encoded commands.

The only potentially noteworthy behavior is that `post_install`, `post_upgrade`, and `pre_remove` source helper scripts from fixed absolute paths and execute functions from them. This is normal for a maintainer-supplied install hook, and the presence checks make the hooks inert when the helpers are absent. The execution of files from `/opt/codex-desktop/.codex-linux/` is not itself suspicious because that directory is owned by the packaged application and the helper files are part of the package's own installed content. As with all pacman install scripts, the AUR maintainer should ensure those paths are packaged and not writable by unprivileged users, but this file alone shows no evidence of injected malicious behavior.

Overall, the script is consistent with ordinary AUR packaging practices. It does not exfiltrate data, install backdoors, fetch code from unexpected hosts, or tamper with unrelated system files.
</details>
<evidence>
</evidence>
<summary>
Routine file-guarded install hook; no malicious behavior or suspicious network/file operations found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed codex-desktop-git.install. Status: SAFE -- Routine file-guarded install hook; no malicious behavior or suspicious network/file operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,367
  Completion Tokens: 3,470
  Total Tokens: 19,837
  Total Cost: $0.001129
  Execution Time: 57.10 seconds

Final Status: SAFE


No issues found.
