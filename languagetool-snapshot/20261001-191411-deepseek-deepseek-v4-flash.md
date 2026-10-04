---
package: languagetool-snapshot
pkgver: 6.9.20261001
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15554
completion_tokens: 4672
total_tokens: 20226
cost: 0.00104223028
execution_time: 43.44
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T19:14:11Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: languagetool.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD, standard packaging, verified checksums.
  - file: languagetool.sh
    status: safe
    summary: Clean launcher script for LanguageTool; no security issues.
---

Materializing languagetool-snapshot from local mirror...
Materialized languagetool-snapshot
Analyzing languagetool-snapshot AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global/top-level scope contains only variable assignments, array definitions, and a `package()` function definition. No command substitutions, network requests, downloads, or executable statements run at source time. `makepkg --printsrcinfo` only sources this top-level scope, so no malicious code can execute during this step. The contents of `package()` are out of scope for this gate and will be audited separately.
</details>
<evidence></evidence>
<summary>No top-level executable code; printsrcinfo step is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; printsrcinfo step is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text LICENSE file containing an ISC-style software license. It has no executable code, network requests, obfuscation, file operations, or any other potentially dangerous behavior. It is a standard legal text distributed with the package and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security issues.
[1/5] Reviewing .SRCINFO, PKGBUILD, languagetool.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package languagetool-snapshot. It declares the package&#39;s upstream source (a snapshot zip from the official LanguageTool project), two auxiliary packaging files (a shell script and a systemd service unit), and standard build/runtime dependencies. All three sources have BLAKE2b checksums provided, so the integrity of downloaded files is verifiable. There are no obfuscated commands, suspicious URLs, unexpected file operations, or any content that deviates from normal AUR packaging practices. The file contains only declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, languagetool.service, languagetool.sh...
[2/5] Reviewing PKGBUILD, languagetool.service, languagetool.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for languagetool.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for running the Languagetool HTTP server. It contains no obfuscated code, no network requests, no file operations, or any other suspicious behavior. The use of `--allow-origin "*"` is an application-level CORS configuration decision, not evidence of malicious supply-chain activity. The service uses `DynamicUser=yes` for sandboxing and `Restart=always` for resilience. Nothing in this file deviates from normal packaging practices or introduces security threats.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, languagetool.sh...
+ Reviewed languagetool.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `languagetool-snapshot` follows standard Arch packaging practices. The source is fetched from the project's official download server (`languagetool.org/download/snapshots/`) and verified with hardcoded BLAKE2b checksums. The `package()` function installs the Java application files, a wrapper script, and a systemd service into the expected filesystem locations. There are no obfuscated commands, no unexpected network requests in the build or package functions, and no operations on system files outside the package's scope. The `.sh` and `.service` files are a normal means of providing system integration for the application. No evidence of malicious injection or supply chain compromise is present.
</details>
<evidence>
</evidence>
<summary>
Clean PKGBUILD, standard packaging, verified checksums.
</summary>
</security_assessment>

[4/5] Reviewing languagetool.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD, standard packaging, verified checksums.
LLM auditresponse for languagetool.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for LanguageTool, an open-source grammar checker. It builds a classpath from JARs under `/usr/share/java/languagetool/` and dispatches to the appropriate Java main class (CLI, GUI, HTTP server) based on command-line flags. There is no malicious behavior: no unexpected network requests, no obfuscated code, no data exfiltration, no tampering with system files. The script only uses standard commands (`java`, `sed`, `echo`) and passes user arguments safely. The `exec` calls replace the shell process with Java, which is normal for launcher scripts. The code is consistent with the stated purpose of running LanguageTool.
</details>
<evidence></evidence>
<summary>Clean launcher script for LanguageTool; no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed languagetool.sh. Status: SAFE -- Clean launcher script for LanguageTool; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,554
  Completion Tokens: 4,672
  Total Tokens: 20,226
  Total Cost: $0.001042
  Execution Time: 43.44 seconds

Final Status: SAFE


No issues found.
