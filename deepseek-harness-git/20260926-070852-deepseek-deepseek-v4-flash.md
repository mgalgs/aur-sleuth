---
package: deepseek-harness-git
pkgver: 0.1.5.alpha.1.r16089.g5dda764
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16895
completion_tokens: 19944
total_tokens: 36839
cost: 0.00267107232
execution_time: 402.92
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T07:08:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with only makepkg artifact patterns; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious content or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard git-based Node/pnpm packaging; no malicious or suspicious behavior found.
  - file: check-runtime.mjs
    status: safe
    summary: Runtime smoke test confined to temp directory; no suspicious behavior.
  - file: aur-package.mjs
    status: safe
    summary: Benign build-time npm tarball assembler; no network, no obfuscation, no system tampering.
---

Materializing deepseek-harness-git from local mirror...
Materialized deepseek-harness-git
Analyzing deepseek-harness-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and function stubs at top level. No command substitutions, external command executions, or data exfiltration occur during sourcing. The functions (`pkgver`, `prepare`, `build`, `check`, `package`) contain build logic but are not invoked by `makepkg --printsrcinfo`. The source array uses a standard git+https URL and local files with checksums; the SKIP for the git source is normal for VCS packages. There is no top-level code that could execute malicious operations.
</details>
<evidence></evidence>
<summary>No malicious top-level code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes during sourcing.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It contains only git ignore patterns for typical packaging artifacts: the makepkg-managed source directory (`/deepseek-harness/`), build directories (`/src/`, `/pkg/`), built package archives (`/*.pkg.tar.*`), and source-package archives (`/*.src.tar.*`).

There is no executable code, no network activity, no obfuscation, no file manipulation outside git version-control bookkeeping, and no deviation from standard AUR packaging practices. All entries are ordinary ignore patterns that match Makepkg's own documented default directories and output filenames.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with only makepkg artifact patterns; no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, aur-package.mjs...
[1/5] Reviewing .SRCINFO, PKGBUILD, aur-package.mjs...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with only makepkg artifact patterns; no security concerns.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `deepseek-harness-git` package. It contains no executable code, no install or build logic (that would live in the PKGBUILD), and no system-modifying instructions. The content is limited to package metadata: name, version, description, URLs, dependencies, and source/checksum declarations.

The declared source is `git+https://github.com/deepseek-ai/deepseek-harness.git`, which is the project's own upstream repository, so fetching from it during the build is expected packaging behavior. The `sha256sums = SKIP` entry applies to the `-git` VCS source and is the standard, required practice for VCS sources in AUR packages. The two auxiliary files (`aur-package.mjs` and `check-runtime.mjs`) have explicit pinned SHA-256 checksums, which is the opposite of a supply-chain red flag — they are verified at fetch time.

There are no suspicious network endpoints, no embedded/obfuscated commands, no base64/hex encoding, no backdoors, and no deviations from normal AUR packaging practices. While the build-time helper scripts themselves (`aur-package.mjs` and `check-runtime.mjs`) are not included in this file for review, nothing about this metadata file suggests malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO metadata; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, aur-package.mjs...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious content or suspicious behavior found.
[2/5] Reviewing PKGBUILD, aur-package.mjs, check-runtime.mjs...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for packaging a Node.js/pnpm application from a git checkout. The git source points to the package's own declared upstream (`github.com/deepseek-ai/deepseek-harness`), and the `SKIP` checksum is expected for VCS sources. The two local helper scripts (`aur-package.mjs`, `check-runtime.mjs`) are shipped alongside the PKGBUILD with pinned sha256 checksums, and invoking them with `node` during `build()`/`check()` is a legitimate way to factor out packaging logic.

The `node -e` snippet in `prepare()` only removes the `postinstall` script from `package.json` (a common practice when the postinstall sets up developer-only git hooks such as husky); it does not touch anything outside the source tree. The `pnpm install --frozen-lockfile` and `npm install` steps install declared dependencies using the standard registries associated with those package managers, which is the normal upstream build process, and the `package()` function restricts all file operations to `$pkgdir` and `$srcdir`. No network requests beyond the declared upstream git repository and standard package registries, no obfuscated code, no download-and-execute of remote content, and no exfiltration or system modification were found.
</details>
<evidence>
</evidence>
<summary>
Standard git-based Node/pnpm packaging; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing aur-package.mjs, check-runtime.mjs...
+ Reviewed PKGBUILD. Status: SAFE -- Standard git-based Node/pnpm packaging; no malicious or suspicious behavior found.
LLM auditresponse for check-runtime.mjs:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a runtime smoke-test / canary for the assembled DeepSeek harness runtime. It takes a runtime root as a CLI argument, anchors Node&apos;s module resolution at that root via `createRequire`, dynamically imports the package&apos;s own runtime modules (`@deepseek-ai/cordis`, `@deepseek-ai/dsh-session-*`), creates an isolated temporary directory under the OS tmpdir, and exercises a session persistence create/close/reopen/read round-trip entirely inside that directory, followed by recursive cleanup of only that temp directory in the `finally` block.

There is no network activity, no subprocess execution, no `eval`/`Function`, no encoded or obfuscated content, and no file access outside the freshly created `mkdtemp` directory. The dynamic imports use hardcoded module names resolved through the anchored runtime, which is exactly the intended behavior of a packaging verification script: it validates that the assembled runtime&apos;s JavaScript and native dependencies were not broken during packaging. Anchoring resolution to the runtime root (instead of the packaging checkout) is a legitimate and careful design choice, and the script explicitly avoids touching the user&apos;s real DSH sessions or configuration.

The `rm(root, { recursive: true, force: true })` cleanup only ever operates on a path returned by `mkdtemp` under the system tmpdir, so there is no risk of deleting unrelated files. Everything in this file is consistent with ordinary AUR packaging verification, and I found no evidence of injected, malicious, or supply-chain behavior.
</details>
<evidence></evidence>
<summary>Runtime smoke test confined to temp directory; no suspicious behavior.</summary>
</security_assessment>

[4/5] Reviewing aur-package.mjs...
+ Reviewed check-runtime.mjs. Status: SAFE -- Runtime smoke test confined to temp directory; no suspicious behavior.
LLM auditresponse for aur-package.mjs:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a build-time helper that assembles the deepseek-harness npm runtime from locally built tarballs. It reads each tarball&apos;s package.json via `execFileSync(&apos;bsdtar&apos;, [&apos;-xOf&apos;, tarball, &apos;package/package.json&apos;])` (argument array, no shell, absolute paths), walks the `@deepseek-ai/dsh` dependency closure, writes `runtime-tarballs.txt`, and generates an `npm-root/package.json` whose dependencies are `file:` references to those same local tarballs. It makes no network requests, contains no obfuscated or encoded payloads, performs no `eval`-style execution of constructed strings, and writes/deletes only under the build directory (`$srcdir`): the `rmSync` targets only the script&apos;s own `npm-root` scratch directory.

The one action worth calling out is the generated `allowScripts` whitelist: it permits npm lifecycle scripts for `koffi` and `node-pty` (widely used native/FFI modules whose postinstall builds are expected) and for the locally built `@deepseek-ai/dsh-subprocess-local` tarball. Since that tarball is produced from the project&apos;s own source earlier in the same build, enabling its install script is consistent with normal packaging of a CLI with native dependencies, not an injected download or backdoor. Minor hygiene notes (no `--` separator before the archive name, absolute paths embedded in the generated package.json) are not security issues in context. Nothing here exfiltrates data, pulls executable code from an unexpected host, or tampers with system files.
</details>
<evidence></evidence>
<summary>Benign build-time npm tarball assembler; no network, no obfuscation, no system tampering.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed aur-package.mjs. Status: SAFE -- Benign build-time npm tarball assembler; no network, no obfuscation, no system tampering.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,895
  Completion Tokens: 19,944
  Total Tokens: 36,839
  Total Cost: $0.002671
  Execution Time: 402.92 seconds

Final Status: SAFE


No issues found.
