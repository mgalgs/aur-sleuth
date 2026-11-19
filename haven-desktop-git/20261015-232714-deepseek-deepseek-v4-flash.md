---
package: haven-desktop-git
pkgver: 0.9.2.r30.g3c8dfe7c80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17256
completion_tokens: 5086
total_tokens: 22342
cost: 0.002495948
execution_time: 110.08
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T23:27:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious or suspicious behavior found.
  - file: haven-desktop-git.install
    status: safe
    summary: "Standard Electron package install script: SUID sandbox handling, symlink, icon cache refresh. No malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD; no malicious network, encoding, exfiltration, or tampering. Safe.
---

Materializing haven-desktop-git from local mirror...
Materialized haven-desktop-git
Analyzing haven-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only defines variables and arrays (pkgname, pkgver, depends, makedepends, source, etc.) with straightforward string assignments. No command substitutions, eval, network calls, or other code execution occurs when the file is sourced. The conditional expression `if [ "$_seshat" = 1 ]` is a standard shell test that only appends to an array. The `source` array uses a simple variable expansion, not a command. All potentially risky operations are confined to the `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious code executes at top level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at top level.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, haven-desktop-git.install...
[0/3] Reviewing PKGBUILD, haven-desktop-git.install, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` for a `-git` package. It declares the upstream project source from the official Haven-Organization GitHub repository using the `develop` branch, with `sha256sums = SKIP` — this is required and normal for VCS sources. No malicious behavior is present: no obfuscated commands, no unexpected network hosts, no data exfiltration, and no build-time commands that fetch or execute unchecked code. Tracking a mutable branch is a normal AUR practice for `-git` packages, though it means each build fetches the latest upstream state; this is a reproducibility/hygiene consideration, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, haven-desktop-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious or suspicious behavior found.
LLM auditresponse for haven-desktop-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`*.install`) for an Electron-based application. All three functions perform routine, expected packaging operations:

- `post_install()` sets the SUID bit (4755) on the Electron `chrome-sandbox` binary when unprivileged user namespaces are unavailable, which is the documented, standard Electron approach for sandboxing on Linux — not a privilege-escalation backdoor. Where user namespaces work, it sets 0755 instead.
- It creates a symlink at `/usr/bin/haven-desktop` pointing to the package's own binary in `/opt/Haven`, and removes that symlink in `post_remove()`. This is ordinary packaging practice and only touches the package's own installed files.
- It refreshes the hicolor icon theme cache with `gtk-update-icon-cache -tqf /usr/share/icons/hicolor`, a standard post-install cache refresh that is explicitly listed as acceptable.

There are no network requests, no downloads, no encoded/obfuscated commands, no eval or base64 usage, and no file operations outside the application's own scope (its binary, its symlink, and the system icon cache). The HTML entities (`&apos;`, `&quot;`, `&amp;`, `&gt;`) are just XML escaping of ordinary quotes/ampersands/greater-than signs in the comments, not obfuscation. The long comments explaining the icon-cache hook behavior are verbose but consistent with legitimate maintainer documentation. No malicious or supply-chain behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard Electron package install script: SUID sandbox handling, symlink, icon cache refresh. No malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed haven-desktop-git.install. Status: SAFE -- Standard Electron package install script: SUID sandbox handling, symlink, icon cache refresh. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a normal Arch VCS PKGBUILD for a desktop application built from the project's own upstream Git repository. Source fetching is limited to the package's declared upstream GitHub repo, which is expected for a `-git` package; the `SKIP` checksum is normal for VCS sources. The build installs pinned versions of `yarn` and `pnpm` from the standard npm registry and then runs the upstream pnpm/nx/electron-builder build process. There is no curl piping to a shell, no encoded or obfuscated payloads, no unexpected network destination, and no file operations outside the package source/build/package directories.

The conditional `bash scripts/setup.sh` invocation is only reached when the user explicitly sets `HAVEN_*` environment variables, and the script comes from the upstream checkout rather than an external source. The `sed` commands modify electron-builder's own configuration to limit build targets and disable publishing, which matches the comments and normal packaging practice. The package step extracts the locally built `.pacman` file into `pkgdir` and installs the license.

Hygiene notes, not security threats: the source tracks a mutable `develop` branch, the pnpm install is not frozen to a lockfile, and the build relies on npm registry packages. These are reproducibility considerations common in `-git` AUR packages, not evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>
Standard VCS PKGBUILD; no malicious network, encoding, exfiltration, or tampering. Safe.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD; no malicious network, encoding, exfiltration, or tampering. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,256
  Completion Tokens: 5,086
  Total Tokens: 22,342
  Total Cost: $0.002496
  Execution Time: 110.08 seconds

Final Status: SAFE


No issues found.
