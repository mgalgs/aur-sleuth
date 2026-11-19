---
package: voltius-git
pkgver: 0.63.1.r0.gdcf2082d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10484
completion_tokens: 2045
total_tokens: 12529
cost: 0.001326234
execution_time: 38.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T07:10:08Z
file_verdicts:
  - file: voltius.desktop
    status: safe
    summary: Standard desktop entry file; contains no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard -git PKGBUILD; only SKIP checksums/unpinned source, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard -git AUR metadata; upstream source only; no malicious behavior.
---

Materializing voltius-git from local mirror...
Materialized voltius-git
Analyzing voltius-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no command substitutions, `eval`, network requests, or any other code execution outside of the function bodies. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but will not be executed by `makepkg --printsrcinfo`. No malicious or suspicious top-level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, voltius.desktop...
LLM auditresponse for voltius.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for the Voltius application. It only declares metadata such as the application name, comment, icon, executable name, and launch categories. There is no executable code, no network access, no file manipulation, no obfuscation, and no deviation from standard packaging/application launcher behavior. The `Exec=voltius` line simply instructs the desktop environment to run the application binary installed by the package.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; contains no executable or malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed voltius.desktop. Status: SAFE -- Standard desktop entry file; contains no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a conventional VCS (`-git`) package for the project's own upstream repository (`git+https://github.com/VoltiusApp/voltius.git`), with dependencies, a `pkgver()` using `git describe`, and a standard Tauri/Rust/Node build flow. The `sha256sums=('SKIP' 'SKIP')` entries are required/ordinary for a VCS source (and SKIP for the locally shipped `.desktop` file is a hygiene choice, not evidence of malice) — the source is therefore unpinned, but that is normal AUR practice and not itself a threat.

In `prepare()`, `pnpm` is installed into a local writable prefix via `npm install -g pnpm@10.34.5 --prefix "$srcdir/npm-global"`. This is a pinned, explicit workaround because pnpm is not in the official repos (and `corepack enable` would write into the system Node install); it is a normal packaging practice. The dummy `TAURI_SIGNING_PRIVATE_KEY`/password values are typical for building Tauri apps without a real signing key. `build()` runs `pnpm install --frozen-lockfile` and `pnpm tauri build --no-bundle`, and `package()` installs the resulting binary, license, desktop file, and icons into `$pkgdir` — all standard, expected operations.

There is no obfuscated code, no `eval`/base64-decoded payloads, no `curl|bash`, no unexpected network destinations, no exfiltration of local data, and no tampering with files outside the package build tree. The only items worth noting are hygiene-level: an unpinned VCS source and SKIP checksums (including on the local `.desktop` file), which do not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard -git PKGBUILD; only SKIP checksums/unpinned source, no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git PKGBUILD; only SKIP checksums/unpinned source, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for a VCS-based package (`voltius-git`). It declares a Git source from the project's own upstream repository (`https://github.com/VoltiusApp/voltius.git`), plus a local desktop entry file. The `sha256sums = SKIP` entries are expected and required for `git+` VCS sources, so they are not a security concern. The dependency list (webkit2gtk, gtk3, libsecret, etc.) is consistent with a desktop SSH/SFTP client application.

There is no executable content in this file: no scripts, no `eval`, `curl`, `wget`, no obfuscated encoding, no file manipulation, and no data exfiltration. The only network destination is the package's own upstream GitHub repository, which is normal packaging practice. The unpinned mutable branch tracking is inherent to a `-git` package and is a reproducibility/hygiene consideration, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Standard -git AUR metadata; upstream source only; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard -git AUR metadata; upstream source only; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,484
  Completion Tokens: 2,045
  Total Tokens: 12,529
  Total Cost: $0.001326
  Execution Time: 38.80 seconds

Final Status: SAFE


No issues found.
