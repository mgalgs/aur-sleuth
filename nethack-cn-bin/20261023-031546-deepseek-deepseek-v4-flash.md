---
package: nethack-cn-bin
pkgver: 5.0.1pre509.27e34f0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9154
completion_tokens: 1924
total_tokens: 11078
cost: 0.001183182
execution_time: 22.0
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T03:15:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: "Standard AUR metadata with pinned checksums from the project's own GitHub releases; no security issues found."
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard pinned-source binary package with normal launcher scripts, no malicious behavior."
---

Materializing nethack-cn-bin from local mirror...
Materialized nethack-cn-bin
Analyzing nethack-cn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only evaluates top-level variable and array assignments. Those assignments are plain string values; there are no command substitutions, no `eval`, no `curl`, no `wget`, and no network-triggering expressions at global scope. The source URLs reference the project's own GitHub releases, and checksums are present, though source fetching is not part of this step anyway.

The `package()` function contains heredocs that install wrapper scripts, but function bodies are not executed by `makepkg --printsrcinfo`. Any behavior inside `package()` is out of scope for this narrow gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; printsrcinfo parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares a prebuilt binary package for the Simplified Chinese localization of NetHack, with sources downloaded from the project's own GitHub releases page. Both `x86_64` and `aarch64` source archives include pinned SHA-256 checksums, which are good supply-chain hygiene practices.

There are no suspicious commands, no network fetches beyond the declared upstream release URLs, no encoded or obfuscated content, and no file operations or hooks. The file only describes package metadata consistent with normal AUR packaging practices. No evidence of injected or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from the project's own GitHub releases; no security issues found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from the project's own GitHub releases; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package for nethack-cn. It downloads prebuilt release tarballs from the project&apos;s own GitHub repository using pinned release tags and concrete sha256 checksums, then installs the binaries, data files, documentation, and two wrapper launcher scripts into the package directory. There are no suspicious network requests beyond fetching the declared upstream sources, no obfuscated payloads, no eval/base64/curl patterns, and no operations outside normal package installation.

The generated wrapper scripts only create the game&apos;s per-user data directory under `$XDG_DATA_HOME` or `$HOME/.local/share`, symlink the game&apos;s own read-only data files into that directory, ensure a writable `perm` file exists, and then exec the installed game binary. This behavior supports the game&apos;s normal operation and does not touch unrelated system files or exfiltrate data. It is a valid, well-formed AUR package.
</details>
<evidence>
</evidence>
<summary>
Safe: standard pinned-source binary package with normal launcher scripts, no malicious behavior.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard pinned-source binary package with normal launcher scripts, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,154
  Completion Tokens: 1,924
  Total Tokens: 11,078
  Total Cost: $0.001183
  Execution Time: 22.00 seconds

Final Status: SAFE


No issues found.
