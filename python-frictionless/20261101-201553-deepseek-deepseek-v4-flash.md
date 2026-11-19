---
package: python-frictionless
pkgver: 5.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14346
completion_tokens: 3239
total_tokens: 17585
cost: 0.001894984
execution_time: 24.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T20:15:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: tatsu-config-import.patch
    status: safe
    summary: Benign patch adjusting import path.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no security issues.
---

Materializing python-frictionless from local mirror...
Materialized python-frictionless
Analyzing python-frictionless AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations in its global scope. No command substitutions, eval, network requests, or other executable operations occur during sourcing. The functions `prepare()`, `build()`, `check()`, and `package()` are defined but not executed by `makepkg --printsrcinfo`. All top-level code is limited to setting packaging metadata (name, version, dependencies, source URLs, checksums, etc.), which is normal and benign. There is no risk of executing malicious code at this stage.</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license (similar to MIT/Expat). It contains no executable code, no network requests, no obfuscated content, and no system operations. The text is purely a legal disclaimer granting permission to use and redistribute the software. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>License file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, tatsu-config-import.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, tatsu-config-import.patch...
+ Reviewed LICENSE. Status: SAFE -- License file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Python package. The source is fetched from the official GitHub repository (frictionlessdata/frictionless-py) at a pinned commit (`c08fa29cb0708427ae65bb689ded8e2691078a82`), and both source tarballs have explicit SHA256 checksums (not `SKIP`). The build uses `python -m build --wheel --no-isolation`, and the check stage runs the package's own test suite against selected modules. The `package()` function installs the built wheel and removes unnecessary test fixtures (`__spec__` directories, `conftest.py` files) that shipped with the wheel, cleaning up the RECORD metadata accordingly — a routine hygiene step, not malicious. The only patch applied is provided as a source archive with a verified checksum. There are no suspicious network requests, obfuscated code, dangerous commands, or any behavior that deviates from expected packaging workflow.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, tatsu-config-import.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
LLM auditresponse for tatsu-config-import.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that changes a single import statement in `frictionless/vendors/wkt/parser.py` from `from tatsu.infos import ParserConfig` to `from tatsu.parserconfig import ParserConfig`. This corrects the module path for the `ParserConfig` class, likely to match the structure of the `tatsu` library version used in the build. There is no code execution, network access, obfuscation, or deviation from routine packaging practices. The patch is benign and serves only to fix a compatibility issue.
</details>
<evidence>
</evidence>
<summary>Benign patch adjusting import path.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed tatsu-config-import.patch. Status: SAFE -- Benign patch adjusting import path.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the python-frictionless AUR package. It lists dependencies (all standard Python packages), sources (a tarball from the official GitHub repository pinned to a specific commit and a local patch file), and corresponding checksums. There are no executable commands, no network requests, no obfuscated code, or any indicators of malicious behavior. The file is purely declarative metadata and does not introduce any security risk.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,346
  Completion Tokens: 3,239
  Total Tokens: 17,585
  Total Cost: $0.001895
  Execution Time: 24.49 seconds

Final Status: SAFE


No issues found.
