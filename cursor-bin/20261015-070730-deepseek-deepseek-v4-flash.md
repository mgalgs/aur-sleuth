---
package: cursor-bin
pkgver: 3.25.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13301
completion_tokens: 5793
total_tokens: 19094
cost: 0.002264717
execution_time: 43.36
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T07:07:30Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official sources; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Clean standard AUR binary repackaging PKGBUILD; no malicious behavior found.
  - file: rg.sh
    status: safe
    summary: Simple rg argument-compatibility wrapper; no network, eval, or malicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No commands that would execute during sourcing (such as command substitutions, external calls, or evals) are present. The `package()` function is defined but not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this file is safe for the purpose of metadata parsing.
</details>
<evidence></evidence>
<summary>No top-level executable code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used by the AUR package repository for `cursor-bin`. It only lists build artifacts and package output paths to be excluded from version control: the downloaded AppImage, the built `.pkg.tar.zst` package, staged files under `pkg/cursor-bin/`, and the extracted `src/cursor.png` icon. There are no commands, no network access, no obfuscation, and no file modification logic. The content is consistent with ordinary packaging hygiene and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard packaging metadata for the `cursor-bin` AUR package. It declares the package name, version, architecture, dependencies, and installation options, along with four sources and pinned sha512 checksums. The remote sources are the official Cursor download URL and two well-known Arch Linux packaging helper scripts from the Arch Linux GitLab repository (`code.sh` and `code.mjs`), which are appropriate for adapting VS Code-style launcher behavior. The fourth source, `rg.sh`, is a local file in the AUR repository and is also checksummed.

There are no suspicious network endpoints, no encoded or obfuscated content, and no executable build/prepare instructions within this file. All checksums are pinned SHA-512 hashes rather than `SKIP`, which is good supply-chain hygiene. The dependencies (`xdg-utils`, `ripgrep`, `electron42`, `nodejs`, etc.) are consistent with the stated purpose of an AI coding environment. Nothing in this file deviates from standard packaging practices or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official sources; no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official sources; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR binary repackaging practices. It downloads the official Cursor `.deb` from `downloads.cursor.com` using a pinned commit path, and the initial `SKIP` checksum for that file is overridden by `sha512sums[0]` with a real pinned hash. The helper scripts from the Arch Linux GitLab packaging repository also have pinned checksums. The source destinations are the application's own upstream host and the official Arch packaging repository, both expected for this package.

The `package()` function only extracts the `.deb` payload into `$pkgdir`, relocates zsh completions, creates symlinks, installs a local `rg.sh` wrapper, and installs sed-adapted launcher scripts. All operations are confined to the package's own files and standard packaging workflow. There is no obfuscated code, no `eval`/`base64`, no `curl|bash`, no unexpected network transfers, and no access to system files outside the package installation.
</details>
<evidence></evidence>
<summary>
Clean standard AUR binary repackaging PKGBUILD; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean standard AUR binary repackaging PKGBUILD; no malicious behavior found.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal two-line bash wrapper that execs the system ripgrep binary (`/usr/bin/rg`) and translates occurrences of the argument `--cursor-ignore` into `--ignore-file`. The transformation is performed directly on the positional parameters using a quoted parameter expansion, so there is no shell re-evaluation, command injection, obfuscation, network access, or file modification involved. Invoking `/usr/bin/rg` by absolute path also avoids PATH hijacking.

The behavior is consistent with a compatibility shim for an editor such as Cursor that passes a custom ignore flag to ripgrep. There are no suspicious downloads, exfiltration attempts, backdoors, or unexpected system modifications. The substitution could alter a search term containing the literal text `--cursor-ignore`, but that is a minor functionality quirk rather than evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Simple rg argument-compatibility wrapper; no network, eval, or malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple rg argument-compatibility wrapper; no network, eval, or malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,301
  Completion Tokens: 5,793
  Total Tokens: 19,094
  Total Cost: $0.002265
  Execution Time: 43.36 seconds

Final Status: SAFE


No issues found.
