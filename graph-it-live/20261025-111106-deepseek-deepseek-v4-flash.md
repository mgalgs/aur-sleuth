---
package: graph-it-live
pkgver: 1.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16873
completion_tokens: 4215
total_tokens: 21088
cost: 0.002302573
execution_time: 27.93
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T11:11:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no malicious content found.
  - file: stage-runtime.cjs
    status: safe
    summary: No malicious behavior; standard build staging script.
  - file: tree-sitter-compat.patch
    status: safe
    summary: Patch for web-tree-sitter compatibility, not malicious.
  - file: PKGBUILD
    status: safe
    summary: Package uses checksummed sources and offline npm; no evidence of malice.
---

Materializing graph-it-live from local mirror...
Materialized graph-it-live
Analyzing graph-it-live AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope consists entirely of static variable definitions (pkgname, pkgver, pkgdesc, arch, url, license, depends, makedepends, optdepends, options, source, sha256sums). No command substitutions, backticks, eval, or any dynamic execution is present at the top level. The `source` array uses variable expansion to construct a download URL, but this is a standard packaging pattern that does not execute any external code. The functions `prepare()`, `build()`, and `package()` contain operations (npm, patch, node) that could be dangerous, but they are **not** invoked when `makepkg --printsrcinfo` sources the file — only global code runs at this stage. Since no malicious or unexpected execution occurs during sourcing, running the command is safe.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; sourcing is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It lists build artifacts (`/src/`, `/pkg/`, `*.tar.gz`, `*.pkg.tar.*`), log files (`*.log`), and a local cache directory (`/graft/`). There are no instructions, commands, network requests, or obfuscated content. The file is benign and follows normal packaging and version control practices.</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, stage-runtime.cjs...
[1/5] Reviewing .SRCINFO, PKGBUILD, stage-runtime.cjs...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only file used by makepkg to describe the package. It declares sources from the upstream GitHub repository (tagged release), a patch, and a runtime script, all with pinned SHA-256 checksums. There is no executable code, no obfuscation, no unexpected network destinations, and no system-modifying commands. The content follows standard AUR packaging practices. The presence of a prebuilt `.cjs` script is part of the application's normal distribution and not evidence of supply-chain injection.
</details>
<evidence>
</evidence>
<summary>Metadata only; no malicious content found.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, stage-runtime.cjs...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no malicious content found.
[2/5] Reviewing PKGBUILD, stage-runtime.cjs, tree-sitter-compat.patch...
LLM auditresponse for stage-runtime.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs staging operations for a CLI bundle: it reads lockfiles, copies dist, generates a minimal package.json with selected dependencies, and preserves license files from production dependencies. There are no network requests, no execution of downloaded code, no obfuscated commands, and no suspicious file modifications outside the staging area. The operations are standard for a build/package step.
</details>
<evidence>
</evidence>
<summary>No malicious behavior; standard build staging script.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, tree-sitter-compat.patch...
+ Reviewed stage-runtime.cjs. Status: SAFE -- No malicious behavior; standard build staging script.
LLM auditresponse for tree-sitter-compat.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies the dependency version of `web-tree-sitter` from `^0.26.13` to `0.25.10` and adjusts the path to the WASM file from `web-tree-sitter.wasm` to `tree-sitter.wasm`. It also updates the corresponding lockfile entry with the new integrity hash, adds `peerDependencies`, and changes a dev flag for an unrelated package. These are typical compatibility adjustments, not malicious. There is no obfuscated code, network requests, data exfiltration, backdoors, or dangerous commands. The changes are within the scope of the application's own dependencies and build configuration, consistent with standard packaging practices for maintaining compatibility with an older version of a library.
</details>
<evidence></evidence>
<summary>Patch for web-tree-sitter compatibility, not malicious.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed tree-sitter-compat.patch. Status: SAFE -- Patch for web-tree-sitter compatibility, not malicious.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Node.js-based application. All three source entries (the upstream tarball, a patch file, and a helper script) are pinned via explicit SHA-256 checksums, ensuring integrity at build time. The tarball is fetched from the project&amp;apos;s own GitHub repository, which is the expected and only source. All npm commands are run with `--ignore-scripts` (preventing arbitrary code execution from npm lifecycle hooks), `--offline` (no network access during dependency resolution after the initial cache fill), and `--no-audit`/`--no-fund`. These flags demonstrate cautious supply-chain practice. The build process compiles the upstream code and stages runtime dependencies without downloading anything from unverified external hosts. No suspicious commands (curl|bash, eval, base64-decoded blobs, reverse shells, or data exfiltration) are present. The `stage-runtime.cjs` script is a checksummed local resource used only for packaging the runtime layer; while its contents are not visible here, its integration into the PKGBUILD is standard for an application that bundles its runtime separately.
</details>
<evidence></evidence>
<summary>Package uses checksummed sources and offline npm; no evidence of malice.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Package uses checksummed sources and offline npm; no evidence of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,873
  Completion Tokens: 4,215
  Total Tokens: 21,088
  Total Cost: $0.002303
  Execution Time: 27.93 seconds

Final Status: SAFE


No issues found.
