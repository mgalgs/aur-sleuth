---
package: freetube-nightly
pkgver: 0.25.2_nightly_7649
pkgrel: 1
result: safe
model: anthropic/claude-sonnet-4.6
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
triggered_by: freetube-nightly/20260619-130636-judge.json
prompt_tokens: 19213
completion_tokens: 5218
total_tokens: 24431
cost: 0.135909
execution_time: 79.2
files_reviewed: 6
files_skipped: 1
files_unauditable: 80
unpinned_sources: 1
date: 2026-08-25T19:28:24Z
file_verdicts:
  - file: freetube.pacman.tar.xz
    status: skipped
    summary: "Skipping binary file: freetube.pacman.tar.xz"
  - file: freetube-nightly.install
    status: safe
    summary: Standard Electron app install hooks; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly binary repackage; hygiene concerns only, no malice detected.
  - file: README.md
    status: safe
    summary: Plain README with links; no code or suspicious content.
  - file: LICENSE.md
    status: safe
    summary: Standard CC0 license file; no code or malicious content.
  - file: package.json
    status: safe
    summary: Standard Node.js helper package for GitHub release downloading; no red flags.
  - file: script.js
    status: safe
    summary: Standard AUR maintainer script fetching from legitimate upstream GitHub repo.
---

Cloning https://aur.archlinux.org/freetube-nightly.git...
Cloned freetube-nightly
Analyzing freetube-nightly AUR package with anthropic/claude-sonnet-4.6
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
**Source fetch:** The `source` array downloads a pre-built `.pacman.tar.xz` from `https://github.com/curbengh/freetube-nightly/releases/latest/download/`. This is a GitHub release artifact from the maintainer's own account (`curbengh`), not the official FreeTubeApp upstream (`FreeTubeApp/FreeTube`). This is worth noting as a hygiene consideration — the binary comes from a third-party repackager rather than the official project — but it is not inherently malicious and does not fail this gate. The checksum is `SKIP`, which per policy is never grounds to fail this gate.

**Top-level code:** No top-level command substitutions or executable code outside of functions exists.

**`pkgver()` function:** This runs `grep` on `.PKGINFO` from the extracted tarball to read the package version. The regex `(?<=pkgver = )[\S]+(?=-\d+)` is a straightforward read of a metadata file. `grep` does not execute any content from the file, so even a crafted `.PKGINFO` cannot execute arbitrary code through this path. This is a standard `pkgver()` pattern for pre-built binary packages.

No malicious behavior is present in code that would execute during `--nobuild --noprepare`.
</details>
<evidence>
</evidence>
<summary>Standard nightly binary repackage; no malicious code during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard nightly binary repackage; no malicious code during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/curbengh/freetube-nightly/releases/latest/download/freetube.pacman.tar.xz
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, freetube-nightly.install...
[0/3] Reviewing PKGBUILD, freetube-nightly.install, freetube.pacman.tar.xz...
[1/3] Reviewing PKGBUILD, freetube-nightly.install...
! Reviewed freetube.pacman.tar.xz. Status: SKIPPED -- Skipping binary file: freetube.pacman.tar.xz
LLM auditresponse for freetube-nightly.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` file containing `post_install()` and `post_remove()` hooks. All operations are routine packaging activities:

- **Symlink management**: Creates `/usr/bin/freetube` pointing to the installed binary via `ln -sf` or `update-alternatives` (the latter is Debian-specific and won't apply on Arch, so the `else` branch runs). This is standard practice.
- **SUID on chrome-sandbox**: `chmod 4755 '/opt/FreeTube/chrome-sandbox'` sets the SUID bit, which is a well-known and required step for Electron 5+ applications to enable their Chromium sandbox. This is upstream-mandated behavior, not injected malice.
- **Post-install cache refresh**: `update-mime-database` and `update-desktop-database` are explicitly listed as standard post-install hooks in packaging guidelines.
- **post_remove()**: Simply removes the symlink/alternative — clean and expected.

There are no network requests, no data exfiltration, no obfuscated code, no unexpected file modifications outside the application's own scope, and no execution of downloaded content.
</details>
<evidence>
</evidence>
<summary>Standard Electron app install hooks; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed freetube-nightly.install. Status: SAFE -- Standard Electron app install hooks; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is straightforward and follows standard AUR packaging practices. It downloads a pre-built binary package (`.pacman.tar.xz`) from the AUR maintainer's own GitHub account (`curbengh`), extracts it, and copies the files into `$pkgdir`. The `pkgver()` function reads version info from the extracted `.PKGINFO` file, which is standard VCS-style packaging.

**Hygiene/trust notes (not malicious):**
- The source is fetched from `github.com/curbengh/` (the maintainer's personal repo) rather than the official `FreeTubeApp/FreeTube` upstream. This is an expected pattern for nightly builds, where a maintainer builds and hosts artifacts themselves.
- `sha256sums=('SKIP')` means the downloaded binary is not integrity-checked. Per standard AUR practices, SKIP is acceptable, though it does mean users are trusting the maintainer's GitHub releases implicitly.
- `/releases/latest/download/` is a mutable reference — the binary content can change without a PKGBUILD update. This weakens reproducibility but is not evidence of malice.

There are no obfuscated commands, no unexpected network requests, no data exfiltration, and no execution of downloaded code outside the normal package installation flow. The `install=$pkgname.install` references an install script not present in this file, but nothing in the PKGBUILD itself is suspicious.
</details>
<evidence>
</evidence>
<summary>
Standard nightly binary repackage; hygiene concerns only, no malice detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly binary repackage; hygiene concerns only, no malice detected.
Reviewed all required files.
Deciding which files to review next...
Note: 80 compiled/archived file(s) cannot be audited as text and were not reviewed (src/.MTREE, src/.INSTALL, src/.PKGINFO and 77 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 4 additional files: LICENSE.md, README.md, package.json, script.js
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing LICENSE.md...
[0/4] Reviewing LICENSE.md, README.md...
[0/4] Reviewing LICENSE.md, README.md, package.json...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain README.md containing only informational text and hyperlinks. It describes the purpose of the AUR package (a mirror of FreeTube nightly builds) and provides links to the upstream project, releases, and license. There is no executable code, no shell commands, no encoded content, and no suspicious instructions of any kind.
</details>
<evidence>
</evidence>
<summary>
Plain README with links; no code or suspicious content.
</summary>
</security_assessment>

[0/4] Reviewing LICENSE.md, README.md, package.json, script.js...
[1/4] Reviewing LICENSE.md, package.json, script.js...
+ Reviewed README.md. Status: SAFE -- Plain README with links; no code or suspicious content.
LLM auditresponse for LICENSE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CC0 1.0 Universal license file. It contains only the legal text of the Creative Commons CC0 public domain dedication. There is no executable code, no scripts, no network requests, and nothing that could be considered malicious or suspicious. This is a normal license file included in an AUR package repository.
</details>
<evidence>
</evidence>
<summary>Standard CC0 license file; no code or malicious content.</summary>
</security_assessment>

[2/4] Reviewing package.json, script.js...
+ Reviewed LICENSE.md. Status: SAFE -- Standard CC0 license file; no code or malicious content.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This `package.json` is a straightforward Node.js configuration file for a helper script used in building/downloading the FreeTube nightly package. It declares three well-known npm dependencies:

- `@octokit/request` (v^8.1.1): GitHub's official API client, used to query GitHub releases/artifacts
- `got` (v^11.8.6): A widely-used HTTP request library
- `unzipper` (v^0.10.14): A zip extraction library

The combination of these three libraries is entirely consistent with a "nightly" AUR package needing to: (1) query the GitHub API to find the latest nightly FreeTube release, (2) download the release artifact, and (3) extract it. This is a common and expected pattern for nightly/git AUR packages that pull from GitHub releases dynamically.

The only thing to note is that the actual behavior depends on `script.js` (referenced in the `download` script), which is not present here for review. That file would need separate scrutiny. The `package.json` itself contains no executable code, obfuscation, unexpected network destinations, or other red flags.
</details>
<evidence>
</evidence>
<summary>
Standard Node.js helper package for GitHub release downloading; no red flags.
</summary>
</security_assessment>

[3/4] Reviewing script.js...
+ Reviewed package.json. Status: SAFE -- Standard Node.js helper package for GitHub release downloading; no red flags.
LLM auditresponse for script.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a CI/CD helper used by the AUR maintainer to automate fetching nightly build artifacts from the legitimate upstream GitHub repository (`FreeTubeApp/FreeTube`). It performs the following operations:

1. Authenticates to the GitHub API using a token supplied via environment variable (`env.github_token`) — standard CI/CD practice.
2. Queries the GitHub Actions artifact list for the upstream FreeTube repo and identifies the latest `.pacman` artifact.
3. Downloads that artifact ZIP and extracts it locally to `freetube.pacman.tar.xz`.
4. Writes release tag metadata to a local `setenv.txt` file.

All network activity is directed at the official GitHub API (`api.github.com`) for the project's own legitimate upstream (`FreeTubeApp/FreeTube`). There is no obfuscation, no exfiltration of local data (credentials, keys, etc.), no downloads from unexpected or unrelated hosts, and no execution of the downloaded content within the script itself. The script simply downloads and saves files to the current working directory, which is consistent with a packaging helper workflow.

One minor hygiene note: the artifact download follows a mutable reference (the "latest" artifact), which means the content is not pinned to a specific checksum at download time. This is a reproducibility concern but not evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR maintainer script fetching from legitimate upstream GitHub repo.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed script.js. Status: SAFE -- Standard AUR maintainer script fetching from legitimate upstream GitHub repo.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: freetube.pacman.tar.xz)

API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 19,213
  Completion Tokens: 5,218
  Total Tokens: 24,431
  Total Cost: $0.135909
  Execution Time: 79.20 seconds

Final Status: SAFE


No issues found.


Audit Skips:

freetube.pacman.tar.xz: [SKIPPED] Skipping binary file: freetube.pacman.tar.xz
