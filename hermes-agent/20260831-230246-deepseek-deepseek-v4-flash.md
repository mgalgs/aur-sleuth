---
package: hermes-agent
pkgver: 0.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 15204
completion_tokens: 2439
total_tokens: 17643
cost: 0.00159410916
execution_time: 63.5
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 10926
upstream_named_files: 4
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:02:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Safe metadata file, no suspicious content.
  - file: requirements.md
    status: safe
    summary: Documentation file, no executable content.
  - file: .gitignore
    status: safe
    summary: Benign gitignore with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/hermes-agent.git...
Cloned hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and functions in its global scope. There are no top-level commands, no `pkgver()` function, and no dangerous operations like `curl|bash`, `eval`, or network exfiltration. The `source` array points to a single tarball from the official GitHub release with a pinned SHA-256 checksum. Running `makepkg --nobuild --nodeps --noprepare` will simply download, verify, and extract the tarball—no code from the tarball is executed. The `makepkg --printsrcinfo` command only reads the PKGBUILD metadata. No genuinely malicious behavior is present in the scope executed by these commands.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/hermes-agent-2026.8.31/web/README.md, src/hermes-agent-2026.8.31/web/eslint.config.js, src/hermes-agent-2026.8.31/web/package.json and 1 more); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 10926 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only metadata about the hermes-agent package: its name, version, description, dependencies, and a source tarball URL pointing to the official GitHub repository (`https://github.com/NousResearch/hermes-agent/archive/refs/tags/v2026.8.31.tar.gz`). The SHA-256 checksum is provided and not set to `SKIP`. There is no executable code, no suspicious network requests, no obfuscation, and no commands that could perform unintended actions. The version discrepancy (`pkgver = 0.21.0` vs. the tag `v2026.8.31`) is unusual but not malicious — it may be a packaging oversight. The file conforms to standard AUR packaging metadata and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe metadata file, no suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, requirements.md...
[1/4] Reviewing .gitignore, PKGBUILD, requirements.md...
+ Reviewed .SRCINFO. Status: SAFE -- Safe metadata file, no suspicious content.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `requirements.md` is a plain text markdown document summarizing dependency declarations from other configuration files. It contains no executable code, no network requests, no obfuscated commands, and no system modification operations. It is purely documentation and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Documentation file, no executable content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed requirements.md. Status: SAFE -- Documentation file, no executable content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores build artifacts (`src*`, `pkg*`, `*.pkg.tar.zst`) and the compiled binary (`hermes-agent`). The entry `.cecli*` is unusual but not malicious; it likely ignores temporary or configuration files from a local development tool. No code, no network requests, no dangerous operations. Nothing indicates a supply-chain attack.</details>
<evidence></evidence>
<summary>Benign gitignore with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a well-structured packaging script that only fetches source from the official upstream GitHub repository (NousResearch/hermes-agent) with a pinned tarball and a valid SHA256 checksum. All build steps (`npm ci`, `npm run build`, `uv sync`) are standard for a project that bundles Node.js and Python dependencies and run against the declared upstream sources. The `.git` directory creation is a documented workaround for a build tool limitation, not a malicious tampering. The final install steps copy files into `/opt/hermes-agent` and create a small wrapper script in `/usr/bin/hermes` – all normal packaging operations. There is no obfuscated code, no unexpected network destinations, no attempt to exfiltrate data, and no execution of fetched content outside the upstream build system. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,204
  Completion Tokens: 2,439
  Total Tokens: 17,643
  Total Cost: $0.001594
  Execution Time: 63.50 seconds

Final Status: SAFE


No issues found.
