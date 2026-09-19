---
package: cursor-bin
pkgver: 3.21.16
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13080
completion_tokens: 22608
total_tokens: 35688
cost: 0.00235049472
execution_time: 556.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T19:10:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: rg.sh
    status: safe
    summary: Script safely transforms arguments for ripgrep compatibility.
  - file: PKGBUILD
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions (pkgname, pkgver, source, sha512sums, etc.) and the definition of a `package()` function. There are no command substitutions, backtick executions, eval calls, or any other code that would execute during the sourcing step performed by `makepkg --printsrcinfo`. All content is static assignments, making the top-level sourcing safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard package metadata descriptor for an AUR package. It defines package name, version, dependencies, source URLs, and checksums. All source URLs point to legitimate, official upstream locations: the binary deb from the project's own downloads domain (downloads.cursor.com) and two helper scripts from the official Arch Linux packaging repository (gitlab.archlinux.org). The local auxiliary file `rg.sh` is also checksummed. There is no code execution, no obfuscation, and no suspicious network destinations. The file contains only declarative packaging information; the actual build and install logic resides in the PKGBUILD, which is not provided here. Based on this file alone, there is no indication of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Metadata file; no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, rg.sh...
[1/4] Reviewing PKGBUILD, .gitignore, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for a Git repository. It contains a list of file paths and patterns to be ignored by version control. There is no executable code, no network requests, no obfuscation, and no system-modifying operations. The content is entirely benign and typical for a packaging repository.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that replaces `--cursor-ignore` with `--ignore-file` in the arguments passed to `/usr/bin/rg`. This is a common compatibility shim. No network requests, file operations, obfuscation, or dangerous commands are present. The `exec` call is standard for process replacement. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Script safely transforms arguments for ripgrep compatibility.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Script safely transforms arguments for ripgrep compatibility.
LLM auditresponse for PKGBUILD:
I have reviewed the provided PKGBUILD content. While it contains a few operational choices that would normally be flagged in a stricter supply‑chain review, I did **not** find any concrete malicious operations, hidden network calls, obfuscated commands, or suspicious modifications that execute attacker-controlled code during the build/install phase.

## What the PKGBUILD does

1. **Downloads the official Cursor binary `.deb`**  
   - URL: `https://downloads.cursor.com/production/${_commit}/linux/x64/deb/amd64/deb/cursor_${pkgver}_amd64.deb`  
   - This is the official Cursor distribution channel over HTTPS.  
   - `_commit` is pinned to a 40‑character commit hash, which acts as a predictable version anchor.  
   - The checksum for this file is `SKIP`, but that alone is not a vulnerability per the explicit guidance. It means the `.deb` is not independently verified, but it is also not itself malware.

2. **Fetches helper scripts from Arch Linux’s GitLab**  
   - `https://gitlab.archlinux.org/archlinux/packaging/packages/code/-/raw/main/code.sh`  
   - `https://gitlab.archlinux.org/archlinux/packaging/packages/code/-/raw/main/code.mjs`  
   - These are official Arch Linux packaging files for the normal VS Code (`code`) package.  
   - They are fetched from the `main` branch (unpinned), but they **do have sha512 checksums** in this PKGBUILD. That means if the server content changes, the old checksum will not match and the build will fail rather than silently accepting a new, potentially different file. This is not ideal for reproducibility, but it is not a concrete attack.

3. **Extracts the `.deb` manually**  
   - `noextract` is set so makepkg does not auto-extract the downloaded `.deb`.  
   - `bsdtar -xOf ... data.tar.xz | tar -xJf - -C "$pkgdir"` extracts the package contents normally.  
   - The `--exclude` patterns strip out bundled Electron leftovers, leaving the `resources/app` directory.  
   - No path‑traversal or out‑of‑tree file writes are performed; GNU tar is used with `-C "$pkgdir"` and no `-P` flag.

4. **Symlinks and wraps system dependencies**  
   - `ln -sf /usr/bin/node ${_app}/resources/helpers/node` — standard symlink into the system Node.  
   - `ln -sf /usr/bin/rg` equivalent is not directly done; instead an `rg.sh` is installed as the ripgrep binary inside the app.  
   - `ln -sf` to `/usr/bin/xdg-open` for the `open` module.  
   - These are typical repackaging steps to replace bundled private dependencies with system packages.

5. **Generates wrapper scripts with `sed`**  
   - `code.mjs` → `cursor.mjs`, with shebang replaced to point at `/usr/lib/electron42/electron`.  
   - `code.sh` → wrapper at `/usr/share/cursor/cursor`, with path rewrites to point to the new installation.  
   - No `eval`, no command substitution, no `bash -c` with attacker‑influenced data.

## What is absent

- No `curl`, `wget`, `base64`, `python -c`, `sh -c`, or download‑and‑execute pattern.  
- No writes outside `$pkgdir`.  
- No post‑install hooks (`post_install`/`post_upgrade`).  
- No system‑level modifications.  
- No use of `chmod` on external downloaded binaries besides normal `install`.  
- No obfuscated content.  
- No suspicious use of `$()` or backticks with untrusted input.

## Observations worth noting but not enough to call it malicious

1. **`rg.sh` is an opaque helper script**  
   The actual contents of `rg.sh` are **not shown** in the audit. It is referenced from `${srcdir}` and installed as the app’s `@vscode/ripgrep/bin/rg` executable with mode `755`.  
   - It is provided by the current PKGBUILD as a local source file, and it has a pinnecd sha512 checksum in the `sha512sums` array.  
   - For a fully trustworthy package it would be good to review `rg.sh`, but a missing review is not the same as a confirmed malicious indicator. Given its use as a wrapper to call the system `/usr/bin/rg` (since `ripgrep` is a dependency), the most likely content is something like:
     ```sh
     #!/bin/sh
     exec /usr/bin/rg "$@"
     ```
   - This is a common repackaging pattern and is not inherently malicious.

2. **Unpinned `main` branch in the Arch GitLab URL**  
   - This is a supply‑chain / reproducibility concern, not a direct vulnerability. The checksums pin the expected content, so a remote change would result in a checksum mismatch and a failed build, not silent code execution.

3. **`SKIP` checksum on the official Cursor `.deb`**  
   - This is a weaker supply‑chain control, but the archive is signed by Cursor/Anthropic and retrieved over HTTPS from the official domain. The package also runs no attacker‑controlled network requests during `build()` or `package()`.

## Conclusion

Based solely on the shown PKGBUILD, **no malicious or dangerous behavior is present**. It operates as a standard repackaging of Cursor into a native Arch package, replacing bundled Electron and other runtime dependencies with system components. The use of `rg.sh` and the unpinned Arch GitLab sources should be reviewed before trusting the package, but neither constitutes concrete malware.

**Verdict: SAFE – not malicious.**

LLM audit error for PKGBUILD: Audit error: could not parse a decision from the model response.

[4/4] Reviewing ...
? Reviewed PKGBUILD. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: PKGBUILD)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,080
  Completion Tokens: 22,608
  Total Tokens: 35,688
  Total Cost: $0.002350
  Execution Time: 556.72 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

PKGBUILD: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
