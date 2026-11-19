---
package: waterfox
pkgver: 6.7.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28485
completion_tokens: 6486
total_tokens: 34971
cost: 0.003772587
execution_time: 94.14
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T11:09:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious behavior or security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned sources with checksums; no malicious behavior found.
  - file: waterfox.desktop
    status: safe
    summary: Standard desktop entry file; no malicious code or suspicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Configuration file for version checking tool.
  - file: PKGBUILD
    status: safe
    summary: Standard source build for Waterfox; no malicious or injected behavior found.
---

Materializing waterfox from local mirror...
Materialized waterfox
Analyzing waterfox AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
For the narrow scope of `makepkg --printsrcinfo`, only the global/top-level scope of this PKGBUILD executes. That scope consists almost entirely of variable and array assignments, shell parameter expansions, conditional array appends, and function definitions. The only top-level active statement is `_commit_l10n=$(curl ...)`, which fetches an HTML page from the package's own upstream GitHub repository (github.com/BrowserWorks/waterfox) and extracts a 40-hex-character l10n commit hash via `grep -Po`. The result is only stored in a variable used to construct the `source` array URL; no fetched content is executed, no local data is sent anywhere, and the destination host is the project's own upstream.

The `_calc_parallel_jobs` function is defined at top level but only invoked inside `prepare()`, which does not run during `makepkg --printsrcinfo`. Likewise, `prepare()`, `build()`, and `package()` bodies are out of scope for this gate. The dynamic `curl` at parse time is a reproducibility/hygiene concern — it requires network access just to print metadata and effectively resolves an unpinned commit at runtime — but it is not malicious behavior, so it does not fail this gate. It should be noted in the full audit.
</details>
<evidence>
</evidence>
<summary>
Top-level curl fetches upstream hash only; nothing executed or exfiltrated. SAFE.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level curl fetches upstream hash only; nothing executed or exfiltrated. SAFE.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except the PKGBUILD, .SRCINFO, and .gitignore itself. This is a conventional pattern to keep only the necessary packaging files tracked in the AUR repository. There is no malicious behavior, no network activity, no code execution, and no file modification outside the repository.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious behavior or security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious behavior or security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file for the Waterfox browser. It declares pinned upstream tarball sources with SHA-256 checksums, lists normal build and runtime dependencies, and sets standard packaging options. There are no network requests, no code execution, no obfuscated content, no suspicious file operations, and no unexpected remote hosts. All sources point to the official BrowserWorks GitHub repositories at specific tags/commits.

The checksums are actual non-SKIP SHA-256 hashes for the tarballs and the desktop file, which is consistent with good packaging hygiene. Nothing in this file deviates from normal AUR practices or shows evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned sources with checksums; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, waterfox.desktop...
[2/5] Reviewing .nvchecker.toml, PKGBUILD, waterfox.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned sources with checksums; no malicious behavior found.
LLM auditresponse for waterfox.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Waterfox web browser. It contains only localized metadata (Name, GenericName, Comment, Keywords), launcher configuration, MIME type associations, and desktop actions for opening a normal window or a private window. There are no scripts, no network requests, no file operations, no encoded payloads, and no commands other than invoking the application itself (`Exec=waterfox %u`, `waterfox --new-window %u`, `waterfox --private-window %u`). These Exec lines are exactly what an application launcher is supposed to do.

The content matches ordinary packaging practice for a GUI application. No evidence of obfuscation, exfiltration, backdoors, or injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious code or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed waterfox.desktop. Status: SAFE -- Standard desktop entry file; no malicious code or suspicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used by maintainers to poll the upstream Git repository for new version tags. It specifies an HTTPS URL to the official Waterfox GitHub repository and defines regex patterns to filter version-like tags. There are no commands, network transfers, file operations, or obfuscated content. The file is benign and follows typical AUR version‑checking practices.
</details>
<evidence></evidence>
<summary>Configuration file for version checking tool.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Configuration file for version checking tool.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard source build for the Waterfox browser. It fetches the main source tarball and the l10n tarball from the project's own GitHub repositories, verifies them with pinned SHA-256 checksums, then uses the upstream `mach` build system. The build steps, PGO profiling under Xvfb, and installation into `$pkgdir` are all consistent with normal packaging practices for a browser of this type.

The only noteworthy item is the top-level `curl` invocation used to resolve the current l10n commit hash from GitHub. This is an unpinned, build-time network lookup, which is a reproducibility and supply-chain hygiene concern. However, the fetched value is only used to construct a tarball URL that is still subject to the hardcoded SHA-256 checksum in `sha256sums`, and the destination is the package's own upstream repository. There is no execution of fetched content, no obfuscated commands, no unexpected network destination, and no exfiltration or backdoor-like behavior.

The PGO profile reuse logic reads local files only from `$SRCDEST` and does not fetch extra executables. The post-install wrapper, desktop entry, icons, and preference files are all normal packaging artifacts for this application. No genuinely malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Standard source build for Waterfox; no malicious or injected behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard source build for Waterfox; no malicious or injected behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,485
  Completion Tokens: 6,486
  Total Tokens: 34,971
  Total Cost: $0.003773
  Execution Time: 94.14 seconds

Final Status: SAFE


No issues found.
