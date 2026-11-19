---
package: opencode-desktop-bin
pkgver: 2.0.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15900
completion_tokens: 3516
total_tokens: 19416
cost: 0.00529548
execution_time: 36.86
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T15:03:16Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no security concerns found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; pinned checksums, official sources, no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard pinned binary repackaging with safe packaging shims.
---

Materializing opencode-desktop-bin from local mirror...
Materialized opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD is safe because no code outside of function definitions executes during sourcing. The only globally-scoped executable code is the definition of `latestver()`, but the function is never called at the top level — it would only run if invoked explicitly. All variable assignments (source arrays, sha256sums, depends, etc.) are static strings and arrays with no embedded command substitutions. No `eval`, backtick commands, or `$()` substitutions appear in the global scope. The `package()` function (which contains the potentially complex operations) is only defined here; it will be executed later in the build process, but during `--printsrcinfo` it is inert. There is therefore no mechanism for malicious code to execute at the parse/print step.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT license text for the opencode project. It contains no executable code, no network operations, no file system modifications, no obfuscation, and no suspicious commands. The content is purely a copyright and permission notice, and it is fully consistent with ordinary packaging practice for a package's license file.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no security concerns found.
</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no security concerns found.
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores everything by default and then whitelists essential packaging files such as `.SRCINFO`, `PKGBUILD`, install scripts, patches, systemd units, desktop entries, configuration files, and documentation. This pattern is common in AUR Git repositories to keep the repository clean while preserving packaging-related files. There is no obfuscation, no network access, no file operations outside the repository, and no malicious or suspicious behavior of any kind.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file describing the `opencode-desktop-bin` package. It contains only declarative fields: package description, version, architecture, dependencies, source URLs, and SHA-256 checksums. There is no executable code, no shell commands, no network logic, and no file operations. The sources point to the project's own upstream locations (GitHub raw LICENSE file and the official `opencode.ai` binary download URLs), and all three source entries have pinned SHA-256 checksums rather than `SKIP`.

The use of prebuilt `.deb` binaries and the `!strip`/`!debug` options are ordinary packaging choices for a `-bin` package. Dependencies listed are consistent with an Electron desktop application. No evidence of obfuscation, data exfiltration, unauthorized downloads, or other malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata; pinned checksums, official sources, no executable or malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; pinned checksums, official sources, no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of the official opencode desktop application. All sources are fetched from the application's own upstream locations (opencode.ai download endpoints and the upstream GitHub LICENSE file), and each source has a pinned sha256 checksum. There are no SKIP checksums, no `curl | bash` patterns, no base64/obfuscation, and no eval of fetched content.

The `package()` function extracts the upstream `.deb`, strips Debian-specific files, installs the payload into `$pkgdir`, and creates two small scripts: a launcher wrapper and an Electron shim (`main.mjs`). The shim patches `process.resourcesPath` and symlinks the bundled `opencode-cli` into the application's own userData directory. This is a packaging compatibility workaround for using the system Electron runtime and is scoped to the application's own files and runtime data. It does not exfiltrate user data, download/execute attacker-controlled code, or modify unrelated system files.

The `latestver()` helper queries the official opencode.ai API for version info but is not invoked during the build, and it fetches only version metadata. Any minor reproducibility concerns around mutable remote sources are not present here, since the actual build sources are pinned with checksums. Overall, the file is consistent with legitimate AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard pinned binary repackaging with safe packaging shims.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard pinned binary repackaging with safe packaging shims.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,900
  Completion Tokens: 3,516
  Total Tokens: 19,416
  Total Cost: $0.005295
  Execution Time: 36.86 seconds

Final Status: SAFE


No issues found.
