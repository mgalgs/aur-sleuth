---
package: haven-desktop-git
pkgver: 0.9.2.r17.gb2df1d4d5a
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16996
completion_tokens: 17854
total_tokens: 34850
cost: 0.0232338304
execution_time: 436.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T07:15:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for a VCS package, no malicious content.
  - file: haven-desktop-git.install
    status: safe
    summary: Standard package install script, no malicious behavior detected.
  - file: PKGBUILD
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
---

Materializing haven-desktop-git from local mirror...
Materialized haven-desktop-git
Analyzing haven-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope (everything outside function definitions) consists only of static variable assignments, an array of arch, depends, makedepends, etc., and a simple conditional `if` that appends to `makedepends`. There is no use of command substitution (`$()`, backticks), no `eval`, no `curl`/`wget`/`base64` or other commands that could execute during sourcing. All variable expansions are safe parameter substitutions on existing variables or environment variables (e.g., `_seshat=${HAVEN_SESHAT:-1}`). Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not invoke `pkgver()`, `prepare()`, `build()`, or `package()`, the content inside those functions is out of scope and does not affect this safety gate. No malicious or dangerous code runs at parse time.
</details>
<evidence></evidence>
<summary>Global scope is safe; no dangerous executions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; no dangerous executions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, haven-desktop-git.install...
[0/3] Reviewing .SRCINFO, haven-desktop-git.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard Arch User Repository package for haven-desktop-git, a Matrix chat client built from the upstream source. All attributes are typical for a VCS-based package: a git source from the project's own repository (branch=develop), SKIP checksums (required for VCS sources), and dependencies appropriate for an Electron/GTK application. There is no obfuscated code, unexpected network destinations, dangerous commands, or data exfiltration. The file is only metadata; the actual build steps are handled by the PKGBUILD. No malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard .SRCINFO for a VCS package, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing haven-desktop-git.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for a VCS package, no malicious content.
LLM auditresponse for haven-desktop-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard package operations: setting up a symlink to the application binary, adjusting the chrome-sandbox SUID bit based on the availability of user namespaces (a common Electron requirement), and refreshing the icon cache. The comments explain each step and the rationale behind the manual icon cache refresh (due to pacman hook limitations for deeply nested icon files). There are no network requests, no obfuscated code, no unexpected file operations, and no data exfiltration. The operations are confined to the package's own install directory and standard system paths. This is a normal AUR package install script.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed haven-desktop-git.install. Status: SAFE -- Standard package install script, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
I reviewed the provided PKGBUILD excerpt for malicious behavior. I did not find an obvious backdoor, obfuscated command, or code that writes outside the normal build/package directories.

What the PKGBUILD does:

- Clones the upstream `Haven-Organization/haven-desktop` repo from GitHub on the `develop` branch.
- Installs a pinned local copy of `pnpm@11.23.0` via npm into `$srcdir/pnpm-local`.
- Runs `pnpm install --frozen-lockfile=false --ignore-scripts` in the `element-web` workspace.
- Patches an electron-builder config with `sed` to build only the `pacman` target.
- Builds the desktop app with the local `nx` binary.
- Optionally builds `matrix-seshat` from source when `_seshat` is enabled.
- Extracts the resulting `.pacman` package with `bsdtar` into `$pkgdir`.
- Installs the license file.

Notable supply-chain/hygiene concerns, not necessarily malicious:

- `sha256sums=('SKIP')` is expected for a VCS `-git` package, but means no integrity pinning for the source checkout.
- The git source is pinned to a branch, not a commit, so every build tracks upstream `develop`.
- `pnpm install --frozen-lockfile=false` can update the lockfile if the checkout drifts, reducing reproducibility.
- The local `pnpm` binary is fetched from the npm registry without an integrity hash, though the version is pinned.
- `pnpm install --global --prefix "$srcdir/pnpm-local" pnpm@11.23.0` executes npm package lifecycle code from the `pnpm` package; this is normal for a pnpm-based build, but it is still a supply-chain consideration.
- The `.install` file referenced by `install=haven-desktop-git.install` is not included in this snippet and should be audited separately, since install scripts run on the user’s system.
- `bash .../scripts/setup.sh` is only invoked when the user opts in via the `HAVEN_NO_BRANDING`, `HAVEN_LOGIN_BACKGROUND`, or `HAVEN_NOTIFICATION_SOUND` environment variables. It executes a script from the upstream source tree; this is expected but should be reviewed if you are doing a full audit.

Overall: I do not see evidence that this PKGBUILD is malicious. It uses some unusual workarounds and has supply-chain hygiene trade-offs, but nothing in the provided code indicates an attack such as data exfiltration, arbitrary post-install payloads, or writes outside `$srcdir`/`$pkgdir`.

LLM audit error for PKGBUILD: Audit error: could not parse a decision from the model response.

[3/3] Reviewing ...
? Reviewed PKGBUILD. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: PKGBUILD)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,996
  Completion Tokens: 17,854
  Total Tokens: 34,850
  Total Cost: $0.023234
  Execution Time: 436.76 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

PKGBUILD: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
