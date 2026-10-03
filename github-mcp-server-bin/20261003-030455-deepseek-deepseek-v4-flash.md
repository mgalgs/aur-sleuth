---
package: github-mcp-server-bin
pkgver: 1.14.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12746
completion_tokens: 2062
total_tokens: 14808
cost: 0.000472360
execution_time: 47.79
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T03:04:55Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; pinned checksums, official upstream, no malicious behavior.
---

Materializing github-mcp-server-bin from local mirror...
Materialized github-mcp-server-bin
Analyzing github-mcp-server-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level portion of this PKGBUILD. The top-level scope contains only variable assignments: `_pkgname`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `provides`, `conflicts`, `source_*`, and `sha256sums_*`. There are no top-level command substitutions, no `eval`, no `curl`/`wget` piped to a shell, no encoded or obfuscated payloads, and no network or file-exfiltration behavior that would execute during sourcing.

The `prepare()`, `build()`, and `package()` functions are standard packaging steps (setting executable permission, generating shell completions, and installing files into `$pkgdir`). None of these functions execute during `makepkg --printsrcinfo`, and their content does not indicate an injected supply-chain attack. The source URLs point to the project’s own upstream GitHub releases, and the checksums are pinned. No unsafe behavior is triggered by this specific command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only safe variable definitions; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only safe variable definitions; printsrcinfo is safe to run.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file that defines how to check for new upstream releases. It points to the official GitHub repository of the package (`github/github-mcp-server`) and fetches the latest release version with a `v` prefix. There is no encoded, obfuscated, or suspicious content; no network requests to non-standard hosts; no file operations or system modifications. The file is completely benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file simply lists patterns to ignore all files except the essential AUR packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, and `.nvchecker.toml`). It is a standard practice for AUR maintainers to track only these files in their git repository. There is no hidden code, no network requests, no file operations, and no dangerous commands. The file is benign and serves its intended purpose.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `github-mcp-server-bin` package. It defines the package name, version, description, upstream URL, architecture-specific sources, and pinned SHA-256 checksums. All sources point to the official GitHub releases of the project. No executable code, network fetches, obfuscation, or suspicious operations are present. The file adheres to normal packaging practices and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package. It downloads prebuilt GitHub release tarballs from the official `github/github-mcp-server` upstream repository, with pinned `sha256sums` for all supported architectures. There are no unexpected network endpoints, no encoded or obfuscated commands, and no use of dangerous constructs such as `eval`, `base64`, or `curl` piping into a shell.

The `prepare()` function only marks the downloaded binary executable and creates a completions directory. The `build()` function runs the binary's own `completion` subcommand to generate shell completions, which is expected application behavior. The `package()` function installs the binary, documentation, license, and completions into `$pkgdir`. All operations are consistent with normal packaging practice and do not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; pinned checksums, official upstream, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; pinned checksums, official upstream, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,746
  Completion Tokens: 2,062
  Total Tokens: 14,808
  Total Cost: $0.000472
  Execution Time: 47.79 seconds

Final Status: SAFE


No issues found.
