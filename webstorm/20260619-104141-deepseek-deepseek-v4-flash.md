---
package: webstorm
pkgver: 2026.1.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 68804
completion_tokens: 8575
total_tokens: 77379
cost: 0.00773586
execution_time: 105.71
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:41:40Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: File is a standard EULA; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official JetBrains IDE; no malicious behavior detected.
  - file: jetbrains-webstorm.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: src/WebStorm-261.25134.101/bin/ltedit.sh
    status: safe
    summary: Standard launch script, no security issues.
  - file: src/WebStorm-261.25134.101/bin/inspect.sh
    status: safe
    summary: Standard IDE wrapper script, no malicious content.
  - file: src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js
    status: safe
    summary: Legitimate Jest reporter for JetBrains IDEs, no malicious code.
  - file: src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js
    status: safe
    summary: Standard JetBrains Node.js debug connector. No issues found.
  - file: src/WebStorm-261.25134.101/bin/webstorm.sh
    status: safe
    summary: Standard JetBrains IDE startup script, no malicious code.
  - file: src/WebStorm-261.25134.101/bin/remote-dev-server.sh
    status: safe
    summary: Standard JetBrains launcher script; no security issues.
  - file: src/WebStorm-261.25134.101/bin/jetbrains_client.sh
    status: safe
    summary: Safe, standard JetBrains IDE startup script.
  - file: src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js
    status: safe
    summary: Legitimate WebStorm Angular plugin, no malicious behavior detected.
  - file: src/WebStorm-261.25134.101/bin/format.sh
    status: safe
    summary: Standard wrapper script; no malicious behavior.
---

Cloning https://aur.archlinux.org/webstorm.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-erktiz4u...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-erktiz4u
Analyzing webstorm AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-erktiz4u) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. The source array points to an official JetBrains download URL with valid checksums. There is no `pkgver()` function or top-level command substitution that would execute code during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` steps. The package functions (`package_webstorm` and `package_webstorm-jre`) are only executed during packaging, which is out of scope for this narrow gate. No malicious activity is present at the sourcing or source-fetch stage.
</details>
<summary>No dangerous top-level code or pkgver() execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code or pkgver() execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard JetBrains end-user license agreement (EULA). The file contains no executable code, no scripts, no network requests, no file operations, and no obfuscated content. It is purely a legal document describing the terms of use for JetBrains software. There is no evidence of malicious behavior or supply-chain attack elements.
</details>
<summary>File is a standard EULA; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- File is a standard EULA; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging file for the JetBrains WebStorm IDE. All sources are fetched from the official JetBrains download server over HTTPS, with checksums (b2sums) provided to verify integrity. The build and package functions only perform expected operations: extracting the tarball, installing files into `/opt/webstorm`, creating a symlink, and copying desktop/icon/license files. There are no network requests beyond the declared source array, no obfuscated commands, no use of dangerous commands like `eval`, `curl`, or `wget`, and no manipulation of files outside the package&#39;s own scope. The only minor technical concern—a `grep` pattern in `_buildver` that may not match directory names with single-digit minor versions—is a packaging bug, not a supply‑chain attack. No evidence of injected malicious code was found.
</details>
<summary>Standard PKGBUILD for official JetBrains IDE; no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official JetBrains IDE; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1204 files available for selection; offering the 50 highest-priority to the model. 772 lower-priority file(s) were not offered.
LLM response for file selection:
jetbrains-webstorm.desktop
src/WebStorm-261.25134.101/bin/webstorm.sh
src/WebStorm-261.25134.101/bin/format.sh
src/WebStorm-261.25134.101/bin/inspect.sh
src/WebStorm-261.25134.101/bin/jetbrains_client.sh
src/WebStorm-261.25134.101/bin/ltedit.sh
src/WebStorm-261.25134.101/bin/remote-dev-server.sh
src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js
src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js
src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js
Decided to review 10 additional files: jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/bin/remote-dev-server.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing jetbrains-webstorm.desktop...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js...
[0/10] Reviewing jetbrains-webstorm.desktop, src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
LLM auditresponse for jetbrains-webstorm.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for launching the WebStorm IDE. It contains no executable code, network requests, or obfuscated commands. The only specified action is launching `/opt/webstorm/bin/webstorm` with an optional file argument, which is expected behavior for a desktop entry. There is no evidence of malicious or suspicious activity.
</details>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/bin/ltedit.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed jetbrains-webstorm.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for ltedit.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for JetBrains WebStorm&#x27;s LightEdit mode. It performs basic utility existence checks (dirname, realpath), locates its own directory, and then executes the main webstorm.sh script with the appropriate arguments. There is no obfuscation, no suspicious network requests, no file operations outside the application&#x27;s own directory, and no injected malicious code. The script behaves exactly as expected for a JetBrains product launcher.
</details>
<summary>Standard launch script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/bin/inspect.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed src/WebStorm-261.25134.101/bin/ltedit.sh. Status: SAFE -- Standard launch script, no security issues.
LLM auditresponse for inspect.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a thin wrapper for WebStorm's offline inspection mode. It sets a default project path to the current working directory and delegates to `webstorm.sh inspect` with any provided arguments. There are no network requests, data exfiltration, obfuscation, or execution of untrusted code. The `exec` call is standard for replacing the shell process with the target command. Nothing here deviates from expected packaging or IDE launcher behavior.</details>
<summary>Standard IDE wrapper script, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed src/WebStorm-261.25134.101/bin/inspect.sh. Status: SAFE -- Standard IDE wrapper script, no malicious content.
LLM auditresponse for jest-intellij-reporter.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Jest reporter for JetBrains IDEs (WebStorm, IntelliJ IDEA). It integrates Jest test results with the IDE's test runner by sending structured messages via stdout (using a custom writer). The code performs no network requests, no file writes outside of logging, no execution of external programs, and contains no obfuscated or encoded payloads. It modifies Jest's configuration (e.g., `setupFilesAfterEnv`, `transformIgnorePatterns`) to inject a jasmine reporter, which is normal behavior for an IDE test integration tool. All operations are confined to the package's own scope and serve the stated purpose of reporting test results to the IDE. There is no evidence of supply-chain attack or malicious intent.
</details>
<summary>Legitimate Jest reporter for JetBrains IDEs, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed src/WebStorm-261.25134.101/plugins/javascript-plugin/helpers/jest-intellij/lib/jest-intellij-reporter.js. Status: SAFE -- Legitimate Jest reporter for JetBrains IDEs, no malicious code.
LLM auditresponse for debugConnector.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `debugConnector.js` is a standard JetBrains Node.js debug connector component. It manages the attachment of the Node.js inspector debugger, checks for helper processes, and optionally spawns a child process (`debugConnectorPortPublisher.js`) to publish the debug port. All operations (inspector.open, child_process execution, environment variable reads) are normal for this kind of tool. There is no obfuscation, no unexpected network requests, no exfiltration, and no modification of system files outside the application scope. The code is consistent with the stated purpose of debugging Node.js applications from an IDE.
</details>
<summary>Standard JetBrains Node.js debug connector. No issues found.</summary>
</security_assessment>

[5/10] Reviewing src/WebStorm-261.25134.101/bin/webstorm.sh, src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed src/WebStorm-261.25134.101/plugins/javascript-debugger/nodeDebugInitializer/debugConnector.js. Status: SAFE -- Standard JetBrains Node.js debug connector. No issues found.
LLM auditresponse for webstorm.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard startup script for JetBrains WebStorm.  It performs routine initialization: checking for required system tools, locating a Java runtime environment (via environment variables or user configuration files), collecting JVM options and IDE properties, building a classpath from locally installed JAR files, and launching the IDE.  There are no suspicious network requests, obfuscated commands, unexpected file operations, or any code that would exfiltrate data or install backdoors.  All operations are scoped to the IDE&#x27;s own installation and configuration directories, consistent with normal packaging for an AUR package.
</details>
<summary>Standard JetBrains IDE startup script, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js, src/WebStorm-261.25134.101/bin/remote-dev-server.sh...
+ Reviewed src/WebStorm-261.25134.101/bin/webstorm.sh. Status: SAFE -- Standard JetBrains IDE startup script, no malicious code.
LLM auditresponse for remote-dev-server.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the standard launcher for JetBrains remote development servers (WebStorm in this case). It performs environment detection (glibc vs musl, native launcher availability), sets required environment variables, and then invokes the actual remote-dev-server launcher binary or script from within the IDE installation directory. The restart loop using exit code 88 is a known JetBrains mechanism. There are no network requests, no execution of untrusted code, no obfuscation, no file exfiltration, and no modifications to system files outside the package scope. All paths are relative to the IDE directory, and only standard shell utilities are used. The script is consistent with normal packaging practices for JetBrains IDEs.
</details>
<summary>Standard JetBrains launcher script; no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/WebStorm-261.25134.101/bin/jetbrains_client.sh, src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js...
+ Reviewed src/WebStorm-261.25134.101/bin/remote-dev-server.sh. Status: SAFE -- Standard JetBrains launcher script; no security issues.
LLM auditresponse for jetbrains_client.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard JetBrains IDE startup script for WebStorm. It performs routine operations: checking for required tools, locating a JRE installation (via environment variables, user configuration, or bundled JBR), collecting JVM options from predefined or user-specified vmoptions files, and launching Java with the appropriate classpath and JVM arguments. There are no network requests (no curl, wget, or downloads), no obfuscated or encoded commands, no unexpected file writes or system modifications, and no attempts to exfiltrate data or execute attacker-controlled code. All file reads are limited to directories under the IDE installation, user config, and environment variables, which is expected behavior for an IDE launcher. The arguments passed to Java (including add-opens and native library paths) are standard for JetBrains products and serve the application's functionality.
</details>
<summary>Safe, standard JetBrains IDE startup script.</summary>
</security_assessment>

[8/10] Reviewing src/WebStorm-261.25134.101/bin/format.sh, src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js...
+ Reviewed src/WebStorm-261.25134.101/bin/jetbrains_client.sh. Status: SAFE -- Safe, standard JetBrains IDE startup script.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a compiled JavaScript bundle for a WebStorm TypeScript language service plugin that adds Angular support. It contains standard module loading helpers (@volar libraries), source map handling, and IDE-specific protocol handlers for Angular template transpilation and type queries. No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, or `exec` were found in the visible portions (head, tail, and pattern matches). All network and file operations are limited to the IDE's internal APIs (e.g., `ts.server.toNormalizedPath`, `projectService.getScriptInfo`, `session.addProtocolHandler`). There is no obfuscated code, no external downloads, and no attempts to exfiltrate data or modify system files outside the plugin's intended scope. The file is consistent with legitimate packaging for a JetBrains IDE plugin.
</details>
<summary>Legitimate WebStorm Angular plugin, no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/WebStorm-261.25134.101/bin/format.sh...
+ Reviewed src/WebStorm-261.25134.101/plugins/angular-plugin/angular-service/node_modules/ws-typescript-angular-plugin/index.js. Status: SAFE -- Legitimate WebStorm Angular plugin, no malicious behavior detected.
LLM auditresponse for format.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the WebStorm IDE. It simply determines its own directory location using `${0%/*}` and then executes the main `webstorm.sh` script with the `format` subcommand and all passed arguments. No suspicious behavior is present - no network requests, no obfuscated code, no dangerous commands, and no data exfiltration. The script is consistent with expected packaging practices for an IDE tool.
</details>
<summary>
Standard wrapper script; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WebStorm-261.25134.101/bin/format.sh. Status: SAFE -- Standard wrapper script; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 68,804
  Completion Tokens: 8,575
  Total Tokens: 77,379
  Total Cost: $0.007736
  Execution Time: 105.71 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-webstorm.txt
Final Status: SAFE


No issues found.
