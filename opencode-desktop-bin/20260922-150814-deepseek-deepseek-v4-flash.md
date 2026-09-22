---
package: opencode-desktop-bin
pkgver: 2.0.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15662
completion_tokens: 10880
total_tokens: 26542
cost: 0.001833678
execution_time: 409.99
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:08:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging, safe.
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR repackage of official upstream binary.
---

Materializing opencode-desktop-bin from local mirror...
Materialized opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and only executes code in the global/top-level scope. In this PKGBUILD, the top-level scope consists exclusively of variable/array assignments (pkgname, pkgver, pkgdesc, arch, url, provides, conflicts, optdepends, source, source_x86_64, source_aarch64, sha256sums, sha256sums_x86_64, sha256sums_aarch64), comments, and function definitions (the pkgver function and the package function). Bash parses function bodies at source time but does not execute them, so the `curl` inside pkgver() and all file/install/launcher operations inside package() cannot run during this gate.

No top-level command substitution, eval, obfuscated or base64-encoded payload, download-and-execute pattern, or outbound data exfiltration is present in the global scope. The source URLs point to the project's own domain (opencode.ai) and the project's own GitHub repository (anomalyco/opencode), and the integrity arrays pin concrete sha256 hashes rather than SKIP. Everything visible at top level is standard AUR packaging structure.

Note for the later full-PKGBUILD audit (out of scope here): pkgver() contains a `curl -fsSL https://opencode.ai/update/api/latest/desktop/opencode | jq -r '.version'` version probe, and package() performs Electron app bundling, wrapper-script installation, and a CLI symlink shim. These are consistent with normal Electron packaging practices and query only the project's own update endpoint, but their bodies should be reviewed in the full audit that follows.
</details>
<evidence></evidence>
<summary>SAFE: Sourcing this PKGBUILD executes only top-level variable assignments and function definitions; the curl in pkgver() and all operations in package() are function bodies that cannot run during `makepkg --printsrcinfo`.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: Sourcing this PKGBUILD executes only top-level variable assignments and function definitions; the curl in pkgver() and all operations in package() are function bodies that cannot run during `makepkg --printsrcinfo`.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package. It ignores all files by default and then whitelists only specific file types needed for packaging (PKGBUILD, patches, install scripts, etc.). No network requests, code execution, file modification, or any other potentially dangerous operations are present. The file is purely a version-control configuration and contains no commands or logic. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging, safe.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging, safe.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard MIT License text. It contains no executable code, no network requests, no file operations, no obfuscated content, and no references to external resources. The `&quot;` entities are simply XML/HTML escaping of quotation marks in the license text and carry no security significance. This is an ordinary license file included with the package.
</details>
<evidence></evidence>
<summary>Standard MIT license text; no malicious or suspicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares source URLs pointing to the official upstream project (opencode.ai and raw.githubusercontent.com/anomalyco/opencode) with valid SHA-256 checksums for all artifacts. There are no skipped checksums, no obfuscated or encoded strings, no suspicious network destinations, and no executable instructions. All dependencies and architecture-specific entries are consistent with normal packaging practices. No evidence of malicious or supply-chain attack behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `opencode-desktop-bin` is a standard AUR package that downloads a prebuilt `.deb` from the project's official upstream (`https://opencode.ai/files/bin/`). All source files are pinned with SHA256 checksums. The `package()` function extracts the `.deb`, replaces the bundled Electron with the system electron, and creates a wrapper script that respects user flags. There are no suspicious network requests (beyond fetching the pinned sources), no obfuscated code, no `eval`/`curl|bash`, and no exfiltration of system files. The custom `main.mjs` shim is a routine integration script that adjusts `process.resourcesPath` and creates a symlink for the CLI inside the user's data directory — both actions serve the application's stated purpose and do not touch unrelated system files.
</details>
<evidence></evidence>
<summary>Standard AUR repackage of official upstream binary.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR repackage of official upstream binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,662
  Completion Tokens: 10,880
  Total Tokens: 26,542
  Total Cost: $0.001834
  Execution Time: 409.99 seconds

Final Status: SAFE


No issues found.
