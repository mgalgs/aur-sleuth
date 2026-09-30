---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13378
completion_tokens: 21309
total_tokens: 34687
cost: 0.00271244624
execution_time: 775.41
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T23:26:04Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with trusted upstream sources and checksums; no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard gitignore; no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Safe and standard; pinned upstream sources, Gradle build, no injection.
---

mindustry-server is built from mindustry
Materializing mindustry-server from local mirror...
Materialized mindustry-server
Analyzing mindustry-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments, function definitions, and an `eval` that dynamically constructs `package_*()` functions from existing function definitions. All variables used in the `eval` are derived from hardcoded maintainer-provided values (`_pkgname` and `_pkgtype`). No external input, command substitutions, or network operations occur at the global scope. There is no dangerous code that would execute during `makepkg --printsrcinfo`. The packaging pattern (multi-package via eval) is conventional and safe in this context.</details>
<evidence></evidence>
<summary>Safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no malicious top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the mindustry-server package. It declares two source tarballs fetched from the official upstream GitHub repositories (Anuken/Mindustry and Anuken/Arc) at a pinned tag (v160.4), with sha256 checksums provided for both. The dependencies (java-runtime&gt;=17 and hicolor-icon-theme) are legitimate runtime requirements for a Java-based game and server.

There is no evidence of malicious behavior: no obfuscated code, no unexpected network requests, no curl|bash or execution of downloaded scripts, no file manipulation, and no attempt to exfiltrate data. The sources point to the project's own upstream repositories, which is the expected and trusted source for these packages. The pinned version tags and checksums are consistent with good packaging practice, and nothing in the file deviates from standard AUR conventions.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO with trusted upstream sources and checksums; no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/4] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with trusted upstream sources and checksums; no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR package repositories. It ignores all files except the essential `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard gitignore; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore; no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration file used to track upstream releases. It specifies a git source pointing to the official Mindustry repository on GitHub. No malicious or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
  <decision>SAFE</decision>
  <details>
    I audited this Chaotic-AUR PKGBUILD for Mindustry (split packages mindustry and mindustry-server). Both source tarballs are the official Anuken/Mindustry and Anuken/Arc GitHub release tags, served over HTTPS and pinned with explicit SHA-256 checksums, so the fetched content cannot be swapped without a checksum mismatch. The build simply runs the upstream Gradle wrapper (which pulls Gradle and Maven dependencies from the standard locations during the build - normal for every Java AUR package, not an added download). All installation writes stay under $pkgdir: split jars, icons, a .desktop file, and a small Java launcher script created via /dev/stdin heredocs.

    The two constructs that initially look suspicious are benign:

    1. The launcher heredoc intentionally escapes runtime-only variables (\$JAVA_HOME, \$_best, \$d, \$_java_ver) so the installed wrapper searches /usr/lib/jvm/java-*-openjdk at runtime, then falls back to /usr/lib/jvm/default. No user-controlled data ever reaches an executed line; the only quirk is that _java_ver is re-read from the environment at runtime, which makes the minimum-JDK version check effectively a no-op unless the variable happens to be exported. That is a functional bug, not a vulnerability.

    2. The `eval` loop at the bottom generates the split package_*() functions from `declare -f` output. However, everything that flows into it (_pkgname, _pkgtype, and the hard-coded pkgname array) is a constant in this file, so there is no injection surface - it is purely a code-dedup trick.

    prepare() edits only the archash line of the local gradle.properties, and icns2png only extracts icons from the pinned tarball. There is no post-install hook, no curl/wget/base64 anywhere, no unexpected network endpoint, no write outside srcdir/pkgdir, and no packaging of prebuilt binaries. Verdict: clean. (Hygiene notes: Gradle transitive dependencies are unpinned by nature, and the eval/declare -f merge is fragile, but neither is malicious.)
  </details>
  <evidence>None.</evidence>
  <summary>Safe and standard; pinned upstream sources, Gradle build, no injection.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe and standard; pinned upstream sources, Gradle build, no injection.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,378
  Completion Tokens: 21,309
  Total Tokens: 34,687
  Total Cost: $0.002712
  Execution Time: 775.41 seconds

Final Status: SAFE


No issues found.
