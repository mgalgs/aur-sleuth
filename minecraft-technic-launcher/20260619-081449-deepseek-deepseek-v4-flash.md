---
package: minecraft-technic-launcher
pkgver: 4.1120
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 37218
completion_tokens: 7197
total_tokens: 44415
cost: 0.00464508
execution_time: 78.51
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:14:49Z
file_verdicts:
  - file: technic-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Safe, standard AUR packaging for upstream launcher
  - file: src/META-INF/proguard/gson.pro
    status: safe
    summary: Standard ProGuard config for Gson library; no malicious content.
  - file: src/com/google/api/client/http/google-http-client.properties
    status: safe
    summary: Plain properties file, no security concerns.
  - file: src/resources/schema/docbook/catalog-docbook.xml
    status: safe
    summary: Standard XML catalog file; no malicious content.
  - file: src/META-INF/proguard/base.pro
    status: safe
    summary: Standard ProGuard config for Guava; no malicious content.
  - file: src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml
    status: safe
    summary: Standard Maven POM with no malicious content.
  - file: src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties
    status: safe
    summary: Standard configuration; no security issues.
  - file: src/META-INF/MANIFEST.MF
    status: safe
    summary: Standard Java manifest, no security issues.
  - file: src/net/technicpack/launcher/resources/discoverFallback.html
    status: safe
    summary: Static fallback HTML page, no malicious content.
  - file: src/resources/conf/xhtmlrenderer.conf
    status: safe
    summary: Configuration file with no malicious code.
  - file: src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider
    status: safe
    summary: Standard SLF4J service provider config file, benign.
---

Cloning https://aur.archlinux.org/minecraft-technic-launcher.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rrrdhwpq...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rrrdhwpq
Analyzing minecraft-technic-launcher AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rrrdhwpq) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and array definitions at the top level, with no command substitutions ($(...) or backticks) or executable code outside of function bodies (prepare, package, etc.). No pkgver() function is defined. The source array specifies an official download from launcher.technicpack.net for the Technic Launcher JAR, plus two local files (a shell script and a desktop file). All three entries have SHA256 checksums (not SKIP), so integrity is verified. Running `makepkg --nobuild --nodeps --noprepare` will simply download these sources without executing any untrusted code. There is no risk of exfiltration, download-and-execute, or other malicious behavior during this narrow gate.
</details>
<summary>Safe; only variable definitions, no executables at source time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe; only variable definitions, no executables at source time.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, technic-launcher.desktop...
LLM auditresponse for technic-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used by Linux desktop environments to create a launcher entry. It contains only metadata (name, comment, icon, categories) and an `Exec` field that runs the `technic-launcher` command. There are no network requests, encoded or obfuscated content, file operations, or any other suspicious behavior. It is a benign configuration file for the application's desktop integration.
</details>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed technic-launcher.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch User Repository practices for packaging an upstream Java application. All source files (the official Technic Launcher JAR, a wrapper script, and a desktop entry) are fetched from the project's official domain and verified with pinned SHA-256 checksums, ensuring integrity. The `prepare()` function only extracts license files and an icon from the JAR using `bsdtar` and `icoutools`—these are static assets, not executable code. The `package()` function installs files into `$pkgdir` using standard `install` commands. There are no dangerous operations: no `curl`, `wget`, `eval`, base64 decoding, or execution of downloaded code. No data exfiltration, unexpected network connections, or backdoors are present. The file is consistent with benign packaging and shows no evidence of a supply-chain attack.
</details>
<summary>Safe, standard AUR packaging for upstream launcher</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe, standard AUR packaging for upstream launcher
Reviewed all required files.
Deciding which files to review next...
Note: 327 files available for selection; offering the 50 highest-priority to the model. 213 lower-priority file(s) were not offered.
LLM response for file selection:
src/META-INF/MANIFEST.MF
src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider
src/META-INF/proguard/base.pro
src/META-INF/proguard/gson.pro
src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties
src/com/google/api/client/http/google-http-client.properties
src/resources/conf/xhtmlrenderer.conf
src/resources/schema/docbook/catalog-docbook.xml
src/net/technicpack/launcher/resources/discoverFallback.html
src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml
Decided to review 10 additional files: src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/resources/schema/docbook/catalog-docbook.xml, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/META-INF/MANIFEST.MF...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml...
[0/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/META-INF/proguard/gson.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml, src/resources/schema/docbook/catalog-docbook.xml...
LLM auditresponse for gson.pro:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a ProGuard/R8 configuration file for the Gson library (Google&apos;s JSON serialization/deserialization library for Java/Android). It contains standard rules to preserve annotations, generic signatures, and certain constructors/classes during code shrinking and obfuscation. There is no executable code, no network requests, no file system modifications, and no obfuscated or encoded commands. The content is entirely benign and follows typical packaging practices for Java/Android libraries. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<summary>Standard ProGuard config for Gson library; no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/com/google/api/client/http/google-http-client.properties, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml, src/resources/schema/docbook/catalog-docbook.xml...
+ Reviewed src/META-INF/proguard/gson.pro. Status: SAFE -- Standard ProGuard config for Gson library; no malicious content.
LLM auditresponse for google-http-client.properties:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `google-http-client.properties` is a simple properties file containing only a version string (`google-http-client.version=2.1.0`). It contains no executable code, no network requests, no obfuscation, and no system modifications. This is a standard configuration file for the Google HTTP Client Library, an expected dependency for the Technic Launcher. No security issues are present.
</details>
<summary>Plain properties file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml, src/resources/schema/docbook/catalog-docbook.xml...
+ Reviewed src/com/google/api/client/http/google-http-client.properties. Status: SAFE -- Plain properties file, no security concerns.
LLM auditresponse for catalog-docbook.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard XML Catalog file for DocBook XML V4.4. It defines mappings from public and system identifiers to local resources under `resources/schema/docbook/`. There are no network requests, no executable code, no obfuscation, and no dangerous operations. The file performs a routine configuration role: resolving DTD and entity references to local copies. No supply-chain attack indicators are present.
</details>
<summary>Standard XML catalog file; no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/META-INF/proguard/base.pro, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml...
+ Reviewed src/resources/schema/docbook/catalog-docbook.xml. Status: SAFE -- Standard XML catalog file; no malicious content.
LLM auditresponse for base.pro:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `base.pro` is a ProGuard configuration file, specifically containing common keep rules for the Google Guava library. It instructs ProGuard to retain certain classes and methods that are accessed via reflection or internal APIs (`sun.misc.SharedSecrets`, `sun.misc.JavaLangAccess`, `com.google.common.base.internal.Finalizer`, `com.google.common.base.FinalizableReference`). There are no network requests, no obfuscated or encoded commands, no system file modifications, and no execution of any code. The content is entirely static and standard for Android/Java projects using Guava. This is a routine packaging artifact, not a supply-chain attack.
</details>
<summary>
Standard ProGuard config for Guava; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html, src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml...
+ Reviewed src/META-INF/proguard/base.pro. Status: SAFE -- Standard ProGuard config for Guava; no malicious content.
LLM auditresponse for pom.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Maven POM file for the FindBugs JSR305 annotations library. It contains no executable code—only build configuration, dependency declarations, and Maven plugin definitions. The network destinations (oss.sonatype.org, code.google.com) are the official upstream locations for the project and Maven Central staging; they are expected for publishing artifacts, not for exfiltration or fetching malicious code. There are no obfuscated commands, no dangerous shell or system calls, and no evidence of supply-chain attack. The file follows standard Maven packaging practices.
</details>
<summary>Standard Maven POM with no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/resources/conf/xhtmlrenderer.conf, src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties, src/net/technicpack/launcher/resources/discoverFallback.html...
+ Reviewed src/META-INF/maven/com.google.code.findbugs/jsr305/pom.xml. Status: SAFE -- Standard Maven POM with no malicious content.
LLM auditresponse for native-image.properties:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `native-image.properties` contains a single configuration line: `Args=--enable-url-protocols=http,https`. This is a standard argument for GraalVM Native Image builds, enabling HTTP and HTTPS URL protocols for the native executable. For a Minecraft launcher that downloads modpacks and assets from the internet, this is expected and legitimate functionality. There is no obfuscation, no code execution, no suspicious network destinations, and no other red flags. The configuration does not introduce any supply-chain attack vectors.
</details>
<summary>Standard configuration; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/META-INF/MANIFEST.MF, src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/resources/conf/xhtmlrenderer.conf, src/net/technicpack/launcher/resources/discoverFallback.html...
+ Reviewed src/META-INF/native-image/com.google.http-client/google-http-client/native-image.properties. Status: SAFE -- Standard configuration; no security issues.
LLM auditresponse for MANIFEST.MF:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Java JAR manifest file (MANIFEST.MF) from the Minecraft Technic Launcher. It only specifies the Manifest-Version, Main-Class, and Multi-Release attributes. There are no executable instructions, network requests, file operations, or any other code that could introduce malicious behavior. The file is entirely declarative and benign.
</details>
<summary>Standard Java manifest, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/resources/conf/xhtmlrenderer.conf, src/net/technicpack/launcher/resources/discoverFallback.html...
+ Reviewed src/META-INF/MANIFEST.MF. Status: SAFE -- Standard Java manifest, no security issues.
LLM auditresponse for discoverFallback.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple static HTML page that displays the message "The discover page is currently unavailable". It contains no JavaScript, no external resource loads, no obfuscation, and no executable code. It is a standard fallback page for an application's web-based UI and does not perform any network requests, file operations, or system modifications. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Static fallback HTML page, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider, src/resources/conf/xhtmlrenderer.conf...
+ Reviewed src/net/technicpack/launcher/resources/discoverFallback.html. Status: SAFE -- Static fallback HTML page, no malicious content.
LLM auditresponse for xhtmlrenderer.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Java Properties configuration file for the XHTMLRenderer (Flying Saucer) library. It contains only configuration keys and values for logging, CSS handling, resource loading, rendering, and testing. There is no executable code, no obfuscation, no network requests beyond what is expected for a web rendering engine (e.g., loading CSS and XHTML from local resources). All paths reference the package's own resources or standard Java classes. The CVS revision history comments are benign. No evidence of supply-chain injection, exfiltration, backdoors, or unexpected system modifications exists. This file is routine packaging content from the upstream project.
</details>
<summary>Configuration file with no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider...
+ Reviewed src/resources/conf/xhtmlrenderer.conf. Status: SAFE -- Configuration file with no malicious code.
LLM auditresponse for org.slf4j.spi.SLF4JServiceProvider:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `org.slf4j.spi.SLF4JServiceProvider` contains a single line: `org.slf4j.nop.NOPServiceProvider`. This is a standard Java service provider configuration file for SLF4J (Simple Logging Facade for Java). It specifies the implementation class for the SLF4J service provider interface. The class `org.slf4j.nop.NOPServiceProvider` is a built-in SLF4J class that provides a no-operation (NOP) logger implementation, meaning logging calls will be discarded. There is no evidence of malicious content such as obfuscated code, network requests, file operations, or unexpected commands. This file is a normal part of SLF4J's service loader mechanism and poses no security risk.
</details>
<summary>Standard SLF4J service provider config file, benign.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/META-INF/services/org.slf4j.spi.SLF4JServiceProvider. Status: SAFE -- Standard SLF4J service provider config file, benign.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,218
  Completion Tokens: 7,197
  Total Tokens: 44,415
  Total Cost: $0.004645
  Execution Time: 78.51 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-minecraft-technic-launcher.txt
Final Status: SAFE


No issues found.
