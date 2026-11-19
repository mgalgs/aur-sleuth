---
package: por-cli-git
pkgver: r42.2edfaac
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7616
completion_tokens: 14381
total_tokens: 21997
cost: 0.00327402
execution_time: 88.45
files_reviewed: 1
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T12:07:31Z
file_verdicts:
  - file: PKGBUILD
    status: unsafe
    summary: Obfuscated shell injection via HTML entities.
    evidence: "pkgdesc=&quot;A cli to browse and watch porn.&quot;"
---

Materializing por-cli-git from local mirror...
Materialized por-cli-git
Analyzing por-cli-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD file employs global HTML entity encoding (`&amp;quot;` instead of `"`, `&amp;apos;` instead of `'`) throughout the entire file. This is not standard shell syntax and constitutes deliberate obfuscation. During `makepkg --printsrcinfo`, the file is sourced. The line `pkgdesc=&amp;quot;A cli to browse and watch porn.&amp;quot;` is parsed by the shell as the variable assignment `pkgdesc=&amp;quot;A` followed by the execution of the command `cli` with the arguments `to browse and watch porn.&amp;quot;`. This obfuscated construct injects an arbitrary command (`cli`) into the global parse-time execution, matching the definition of a supply-chain attack technique.
</details>
<evidence>pkgdesc=&amp;quot;A cli to browse and watch porn.&amp;quot;</evidence>
<summary>Obfuscated shell injection via HTML entities.</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>The first verdict stands. The PKGBUILD contains HTML entity encoding (`&amp;quot;` and `&amp;apos;`) in global-scope lines such as `pkgdesc=&amp;quot;A cli to browse and watch porn.&amp;quot;`. When sourced by `makepkg --printsrcinfo`, the shell parses this as the variable assignment `pkgdesc=&amp;quot;A` followed by an attempt to execute the command `cli` with arguments `to browse and watch porn.&amp;quot;`. This constitutes an obfuscated command injection at parse time, which is genuinely malicious behavior under rule 4 (obfuscated/encoded commands). The widespread use of entities across the file indicates deliberate obfuscation, not an accidental typo. This is not upstream application functionality or standard packaging; it is an injection vector that could execute an attacker-controlled command during sourcing.</details>
<evidence>pkgdesc=&amp;quot;A cli to browse and watch porn.&amp;quot;</evidence>
<summary>Global obfuscated command injection via HTML entities.</summary>
</security_assessment>

x Initial PKGBUILD audit complete -- Obfuscated shell injection via HTML entities.
Initial PKGBUILD check doesn't look good: Obfuscated shell injection via HTML entities.

The PKGBUILD file employs global HTML entity encoding (`&quot;` instead of `"`, `&apos;` instead of `'`) throughout the entire file. This is not standard shell syntax and constitutes deliberate obfuscation. During `makepkg --printsrcinfo`, the file is sourced. The line `pkgdesc=&quot;A cli to browse and watch porn.&quot;` is parsed by the shell as the variable assignment `pkgdesc=&quot;A` followed by the execution of the command `cli` with the arguments `to browse and watch porn.&quot;`. This obfuscated construct injects an arbitrary command (`cli`) into the global parse-time execution, matching the definition of a supply-chain attack technique.
x Initial PKGBUILD check doesn't look good: Obfuscated shell injection via HTML entities.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## PKGBUILD

Status: UNSAFE

Summary: Obfuscated shell injection via HTML entities.

Evidence:

```
pkgdesc=&quot;A cli to browse and watch porn.&quot;
```

Details:

The PKGBUILD file employs global HTML entity encoding (`&quot;` instead of `"`, `&apos;` instead of `'`) throughout the entire file. This is not standard shell syntax and constitutes deliberate obfuscation. During `makepkg --printsrcinfo`, the file is sourced. The line `pkgdesc=&quot;A cli to browse and watch porn.&quot;` is parsed by the shell as the variable assignment `pkgdesc=&quot;A` followed by the execution of the command `cli` with the arguments `to browse and watch porn.&quot;`. This obfuscated construct injects an arbitrary command (`cli`) into the global parse-time execution, matching the definition of a supply-chain attack technique.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,616
  Completion Tokens: 14,381
  Total Tokens: 21,997
  Total Cost: $0.003274
  Execution Time: 88.45 seconds

Final Status: UNSAFE


Issues Found:

PKGBUILD: [UNSAFE] Obfuscated shell injection via HTML entities. / The PKGBUILD file employs global HTML entity encoding (`&quot;` instead of `"`, `&apos;` instead of `'`) throughout the entire file. This is not standard shell syntax and constitutes deliberate obfuscation. During `makepkg --printsrcinfo`, the file is sourced. The line `pkgdesc=&quot;A cli to browse and watch porn.&quot;` is parsed by the shell as the variable assignment `pkgdesc=&quot;A` followed by the execution of the command `cli` with the arguments `to browse and watch porn.&quot;`. This obfuscated construct injects an arbitrary command (`cli`) into the global parse-time execution, matching the definition of a supply-chain attack technique.
