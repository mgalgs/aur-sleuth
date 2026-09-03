---
package: cursor-bin
pkgver: 3.18.25
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 13248
completion_tokens: 9005
total_tokens: 22253
cost: 0.00252939736
execution_time: 114.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 4
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T11:02:14Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore with build artifacts; no security issues.
  - file: .SRCINFO
    status: safe
    summary: No malicious content found; standard metadata file.
  - file: rg.sh
    status: safe
    summary: Simple argument-substitution wrapper for ripgrep; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging using official upstream sources; no malicious behavior found.
---

Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and function definitions in its top-level scope. No commands are executed at global scope that would run during sourcing. The function `package()` is not executed by `makepkg --nobuild --nodeps --noprepare`. The `source` array points to official upstream URLs (cursor.com and gitlab.archlinux.org) and a local file `rg.sh`. All downloads have explicit sha512sums (the initial `SKIP` for index 0 is overwritten by a specific hash). There is no obfuscated code, no `curl|bash`, no `eval`, and no commands that exfiltrate data or download untrusted payloads at load time. The operations that occur during the fetch step (downloading and extracting archives) are standard and do not execute code from the package. This is safe for the narrow scope of this gate.
</details>
<evidence></evidence>
<summary>No malicious code executes during sourcing or source download.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing or source download.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 4 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file containing only paths to build artifacts (compiled packages, extracted files, copied assets) generated during AUR package building. There is no executable code, no network requests, no obfuscation, and no commands of any kind. The file serves solely to prevent temporary or build-output files from being committed to version control. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard gitignore with build artifacts; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore with build artifacts; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes metadata for the cursor-bin AUR package. All source URLs point to expected locations: the official Cursor download server (downloads.cursor.com) and official Arch Linux packaging repository (gitlab.archlinux.org). The local `rg.sh` reference is a normal AUR practice for including helper scripts. Checksums are provided for all remote sources (none set to SKIP). There are no obfuscated entries, no suspicious network requests, and no commands or code execution. The file adheres to standard AUR metadata formatting without any indication of supply-chain compromise.
</details>
<evidence></evidence>
<summary>No malicious content found; standard metadata file.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content found; standard metadata file.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a thin wrapper for ripgrep (`/usr/bin/rg`). It uses `exec` to replace the shell process with the `rg` binary, passing all arguments after substituting `--cursor-ignore` with `--ignore-file`. This is a routine convenience wrapper—likely to support a custom flag used by the Cursor editor—and exhibits no obfuscation, network requests, file wites outside its scope, or any other malicious behavior. The operation is transparent and serves only to normalise an argument before passing it to the real `rg` command.
</details>
<evidence></evidence>
<summary>Simple argument-substitution wrapper for ripgrep; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple argument-substitution wrapper for ripgrep; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging recipe for the prebuilt Cursor editor. It downloads the application `.deb` from Cursor's official `downloads.cursor.com` endpoint using a pinned commit path, and it fetches launcher helper scripts from Arch Linux's official GitLab packaging repo. Every source has a pinned sha512 checksum (the initial `SKIP` for the `.deb` is overridden by `sha512sums[0]`), so no build-time content is fetched without verification.

The `package()` function only extracts the `.deb` into `$pkgdir`, relocates zsh completions, installs a ripgrep wrapper and symlinks for `node`/`xdg-open`, and generates launcher scripts with `sed`/`install`. There are no `eval`, `base64`, `curl`-to-shell, reverse shells, data exfiltration, or writes outside the package staging directory. The `gitlab.archlinux.org/.../main` URL is a mutable branch, but the checksums pin the exact content, so this is only a minor reproducibility consideration, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR packaging using official upstream sources; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging using official upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,248
  Completion Tokens: 9,005
  Total Tokens: 22,253
  Total Cost: $0.002529
  Execution Time: 114.80 seconds

Final Status: SAFE


No issues found.
