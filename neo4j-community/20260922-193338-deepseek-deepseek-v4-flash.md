---
package: neo4j-community
pkgver: 2026.09.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24710
completion_tokens: 4119
total_tokens: 28829
cost: 0.001614452
execution_time: 77.24
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T19:33:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious indicators.
  - file: .nvchecker.toml
    status: safe
    summary: Routine version-checker config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious activity.
  - file: neo4j.executable-template
    status: safe
    summary: Standard Java launcher wrapper, no malicious content.
  - file: neo4j.sysusers
    status: safe
    summary: Standard sysusers config for a service account.
  - file: neo4j.service
    status: safe
    summary: Standard systemd unit with proper hardening, no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting standard AUR packaging files only.
  - file: neo4j.tmpfiles
    status: safe
    summary: Standard tmpfiles config; no security concerns.
  - file: use-system-scala.patch
    status: safe
    summary: Patch enables use of system Scala; no malicious content.
---

Materializing neo4j-community from local mirror...
Materialized neo4j-community
Analyzing neo4j-community AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, checksums, etc.) and comments. No command substitutions, backtick executions, eval, or other dangerous constructs are present in the global scope. All functional code (prepare, build, check, package) resides within function bodies that are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk for this narrow operation.
</details>
<evidence></evidence>
<summary>No top-level malicious code; printsrcinfo safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo safe.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file defines a standard AUR package for neo4j-community. It lists the upstream source (a GitHub archive tarball) and local configuration/service files, all with sha256 checksums. No suspicious URLs, encoded commands, or unusual dependencies are present. The file content is purely declarative metadata and contains no executable or malicious logic.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious indicators.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/9] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious indicators.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.nvchecker.toml` configuration for tracking new versions of the `neo4j/neo4j` GitHub repository. It only specifies a source type, repository path, and version selection strategy (`use_max_tag = true`). There is no executable code, no network requests beyond expected version checking, and no signs of malicious or obfuscated content. This is a routine packaging support file.
</details>
<evidence></evidence>
<summary>Routine version-checker config, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, neo4j.executable-template...
[2/9] Reviewing .gitignore, PKGBUILD, neo4j.executable-template...
+ Reviewed .nvchecker.toml. Status: SAFE -- Routine version-checker config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Java application built from source. All source tarballs have pinned checksums, no checksums are set to SKIP. The `prepare()`, `build()`, `check()`, and `package()` functions perform only expected operations: setting Maven project version, downloading dependencies via `mvn dependency:go-offline` (from the official Maven repositories), compiling the project, and installing artifacts (JARs, configs, systemd units, etc.) into the package directory. No obfuscated code, no unexpected network calls, no dangerous commands like `curl|bash`, no attempts to exfiltrate data or modify system files outside the package scope. The maintainer scripts are transparent and consistent with the upstream project.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious activity.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, neo4j.executable-template...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious activity.
[3/9] Reviewing .gitignore, neo4j.executable-template, neo4j.service...
LLM auditresponse for neo4j.executable-template:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard executable wrapper for a Java application (Neo4j). It sets up the classpath by globbing `/usr/share/java/neo4j/*.jar` and `/usr/share/scala/lib/*.jar`, exports environment variables, and launches the Java process with the appropriate class name and arguments. There are no network requests, no downloads, no obfuscated or encoded code, and no dangerous commands (curl, wget, eval, base64). The `exec java` line is the expected entry point for a packaged Java application. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Standard Java launcher wrapper, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, neo4j.executable-template, neo4j.service, neo4j.sysusers...
[4/9] Reviewing .gitignore, neo4j.service, neo4j.sysusers...
+ Reviewed neo4j.executable-template. Status: SAFE -- Standard Java launcher wrapper, no malicious content.
LLM auditresponse for neo4j.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration file. It creates a system user `neo4j` with a home directory of `/nonexistent` and a shell of `/bin/false`. This is normal and expected for a service user that does not need interactive login or a writable home directory. The file is plain text, uses no dangerous commands, and performs no network requests, code execution, or data exfiltration. The `&quot;` is just an XML/HTML entity for quotes, but in the context of the sysusers format it is likely an artifact of the file being displayed; the actual file should contain literal double quotes. Even if interpreted literally, it would still be benign. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard sysusers config for a service account.</summary>
</security_assessment>

[5/9] Reviewing .gitignore, neo4j.service...
+ Reviewed neo4j.sysusers. Status: SAFE -- Standard sysusers config for a service account.
[5/9] Reviewing .gitignore, neo4j.service, neo4j.tmpfiles...
LLM auditresponse for neo4j.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Neo4j graph database. It defines the service to run the `neo4j console` command under a dedicated `neo4j` user and group, with appropriate environment variables pointing to `/etc/neo4j` and `/var/lib/neo4j`. The file includes extensive systemd hardening directives (PrivateTmp, ProtectHome, ProtectSystem, NoNewPrivileges, etc.) that follow best practices for restricting the service's access to the system. There are no network requests, file downloads, obfuscated code, or dangerous operations outside standard packaging. The configuration is entirely benign and consistent with expected packaging of a database service.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit with proper hardening, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing .gitignore, neo4j.service, neo4j.tmpfiles, use-system-scala.patch...
[6/9] Reviewing .gitignore, neo4j.tmpfiles, use-system-scala.patch...
+ Reviewed neo4j.service. Status: SAFE -- Standard systemd unit with proper hardening, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It ignores all files by default (`*`) and then whitelists specific packaging files via negation patterns (`!PKGBUILD`, `!.SRCINFO`, `!.nvchecker.toml`, patches, systemd units, etc.). This is a common pattern for AUR packages that use nvchecker to track upstream versions. There is no executable content, no network activity, no obfuscation, and no commands that could be run. Nothing in this file deviates from normal packaging practice or poses a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore whitelisting standard AUR packaging files only.</summary>
</security_assessment>

[7/9] Reviewing neo4j.tmpfiles, use-system-scala.patch...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting standard AUR packaging files only.
LLM auditresponse for neo4j.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles configuration snippet that creates two directories under `/var/lib/neo4j` with appropriate permissions and ownership (`neo4j:neo4j`). This is standard packaging practice for ensuring the required runtime directories exist with correct attributes. There is no code execution, network access, obfuscation, or any other malicious behavior. The content is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config; no security concerns.</summary>
</security_assessment>

[8/9] Reviewing use-system-scala.patch...
+ Reviewed neo4j.tmpfiles. Status: SAFE -- Standard tmpfiles config; no security concerns.
LLM auditresponse for use-system-scala.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard patch that modifies a Maven `pom.xml` to configure the Scala home directory. This is a common packaging practice to ensure the build uses the system-installed Scala instead of a bundled version. There is no evidence of malicious code, obfuscation, network requests, or any deviant behavior. The patch aligns with routine AUR or distribution packaging workflows.
</details>
<evidence>
</evidence>
<summary>Patch enables use of system Scala; no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed use-system-scala.patch. Status: SAFE -- Patch enables use of system Scala; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,710
  Completion Tokens: 4,119
  Total Tokens: 28,829
  Total Cost: $0.001614
  Execution Time: 77.24 seconds

Final Status: SAFE


No issues found.
