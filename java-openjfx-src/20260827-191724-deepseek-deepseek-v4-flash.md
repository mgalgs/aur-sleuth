---
package: java-openjfx-src
pkgbase: java-openjfx
pkgver: 28.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 21630
completion_tokens: 4759
total_tokens: 26389
cost: 0.00242892104
execution_time: 83.93
files_reviewed: 7
files_skipped: 1
maintainer_files: 8
upstream_files: 29228
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-27T19:17:22Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: java-openjfx-flags.patch
    status: skipped
    summary: "Skipping binary file: java-openjfx-flags.patch"
  - file: java-openjfx-env.sh
    status: safe
    summary: Safe environment setup script for OpenJFX.
  - file: java-openjfx-profile.csh
    status: safe
    summary: Standard environment variable setup, no security issues.
  - file: java-openjfx-gradle.properties
    status: safe
    summary: Standard build configuration, no security issues.
  - file: java-openjfx-profile.sh
    status: safe
    summary: Single-line profile script sourcing a system environment file; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard OpenJFX PKGBUILD with pinned checksums; no malicious behavior found.
---

java-openjfx-src is built from java-openjfx
Cloning https://aur.archlinux.org/java-openjfx.git...
Cloned java-openjfx-src
Analyzing java-openjfx-src AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no malicious code in its top-level scope or pkgver() definition. All variables and arrays are set normally, and the only network source is the official OpenJFX GitHub repository. The `--nobuild --nodeps --noprepare` commands will only fetch and extract sources, which is a standard operation. No commands like `curl`, `wget`, `eval`, or base64 decoding are present in the global scope. The conditional append to `makedepends` and the `_gradle` array setup are harmless. There is no `pkgver()` function; `pkgver` is set directly from a static string. Therefore, running the specified makepkg commands is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious top-level code or dangerous commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code or dangerous commands.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/jfx-28-6/buildSrc/linux.gradle, src/jfx-28-6/gradlew); they are upstream content and were not reviewed.
Reviewing the 8 file(s) in the AUR repository. The 29228 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which automates version checking for packages. It defines a source as a Git repository at the official OpenJDK GitHub URL, along with regex patterns for extracting version numbers. The file contains no executable code, no network requests contrary to standard packaging practices, and no obfuscation or malicious instructions. It is a legitimate and typical helper script for AUR maintainers.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration file; no security issues.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml, java-openjfx-env.sh...
[1/8] Reviewing .SRCINFO, PKGBUILD, java-openjfx-env.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux AUR package metadata file. It declares package information, dependencies, source URLs, and checksums for the `java-openjfx` package. All source URLs point to the official OpenJDK GitHub repository (`github.com/openjdk/jfx`), which is the legitimate upstream. Checksums (b2sums) are provided for every source file with complete hashes (no `SKIP` entries). There are no suspicious network destinations, obfuscated data, dangerous commands, or deviations from standard packaging practices. The file contains no executable code or instructions; it is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, java-openjfx-env.sh, java-openjfx-flags.patch...
[2/8] Reviewing PKGBUILD, java-openjfx-env.sh, java-openjfx-flags.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
[2/8] Reviewing PKGBUILD, java-openjfx-env.sh, java-openjfx-flags.patch, java-openjfx-gradle.properties...
[3/8] Reviewing PKGBUILD, java-openjfx-env.sh, java-openjfx-gradle.properties...
! Reviewed java-openjfx-flags.patch. Status: SKIPPED -- Skipping binary file: java-openjfx-flags.patch
LLM auditresponse for java-openjfx-env.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple shell script that exports three environment variables pointing to standard system paths for Java OpenJFX modules and libraries. It constructs a `JAVA_OPTIONS` string using those paths. There is no malicious content: no network requests, no obfuscation, no execution of untrusted code, and no system modifications. It is a benign helper script for setting up the JavaFX environment.
</details>
<evidence></evidence>
<summary>Safe environment setup script for OpenJFX.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, java-openjfx-env.sh, java-openjfx-gradle.properties, java-openjfx-profile.csh...
[4/8] Reviewing PKGBUILD, java-openjfx-gradle.properties, java-openjfx-profile.csh...
+ Reviewed java-openjfx-env.sh. Status: SAFE -- Safe environment setup script for OpenJFX.
LLM auditresponse for java-openjfx-profile.csh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard C shell profile script that sets three environment variables for Java OpenJFX (JavaFX) on Arch Linux. It defines the module path, library path, and a Java options variable that combines these paths. There is no network activity, obfuscated code, file modification, or execution of untrusted content. The script is part of the normal packaging to configure the runtime environment for JavaFX applications.
</details>
<evidence></evidence>
<summary>Standard environment variable setup, no security issues.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, java-openjfx-gradle.properties, java-openjfx-profile.csh, java-openjfx-profile.sh...
[5/8] Reviewing PKGBUILD, java-openjfx-gradle.properties, java-openjfx-profile.sh...
+ Reviewed java-openjfx-profile.csh. Status: SAFE -- Standard environment variable setup, no security issues.
LLM auditresponse for java-openjfx-gradle.properties:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only three build configuration properties for compiling JavaFX with Gradle: `COMPILE_MEDIA`, `COMPILE_WEBKIT`, and `CONF`. There are no executable commands, network requests, obfuscated code, or any behavior that could be considered malicious. It is a standard build configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard build configuration, no security issues.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, java-openjfx-profile.sh...
+ Reviewed java-openjfx-gradle.properties. Status: SAFE -- Standard build configuration, no security issues.
LLM auditresponse for java-openjfx-profile.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single line that sources `/usr/bin/java-openjfx-env`. This is a standard environment setup pattern for profile scripts, used to load Java/OpenJFX environment variables into the user's shell. There is no network activity, no encoded or obfuscated commands, no file modification beyond reading an expected system file, and no execution of untrusted content. Sourcing a system-installed environment file is ordinary packaging behavior and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Single-line profile script sourcing a system environment file; no malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed java-openjfx-profile.sh. Status: SAFE -- Single-line profile script sourcing a system environment file; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the OpenJFX source tarball from the official openjdk/jfx GitHub tag, pins all six sources with b2sums, and uses normal build commands (gradle, patch, sed) and install commands targeting `$pkgdir`. No obfuscation, eval/base64 usage, unexpected network exfiltration, backdoors, or file modifications outside the package build/install scope are present.

The only build-time network behavior is the optional Gradle wrapper (`sh ./gradlew`), which is the upstream project's own build tooling and may fetch Gradle from the official Gradle distribution service. That is expected for a Gradle-based project, not an injected supply-chain attack. The `sed` removing `-Werror` and the patch are routine build compatibility changes. The packaged profile/env scripts are not visible in this file, but nothing in the PKGBUILD indicates they are used for anything beyond their stated purpose.
</details>
<evidence></evidence>
<summary>Standard OpenJFX PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard OpenJFX PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: java-openjfx-flags.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,630
  Completion Tokens: 4,759
  Total Tokens: 26,389
  Total Cost: $0.002429
  Execution Time: 83.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

java-openjfx-flags.patch: [SKIPPED] Skipping binary file: java-openjfx-flags.patch
