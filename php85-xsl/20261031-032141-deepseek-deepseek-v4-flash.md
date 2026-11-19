---
package: php85-xsl
pkgbase: php85
pkgver: 8.5.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 71541
completion_tokens: 14858
total_tokens: 86399
cost: 0.009214387
execution_time: 197.92
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T03:21:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: apache-php8.4.patch
    status: safe
    summary: Build config tweak, not malicious.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no malicious code.
  - file: make-tests.patch
    status: safe
    summary: Safe patch adjusting test run parameters.
  - file: php-apache.conf
    status: safe
    summary: Standard Apache PHP config file.
  - file: php-fpm.install
    status: safe
    summary: Benign echo-only install script.
  - file: pear-config-patcher.php
    status: safe
    summary: Benign config patcher script; no malicious behavior.
  - file: php-phpinfo-8.4.patch
    status: safe
    summary: Legitimate patch; no security concerns.
  - file: php-makefile-patcher.php
    status: safe
    summary: Benign Makefile patcher with no malicious behavior.
  - file: timezonedb-guess.patch
    status: safe
    summary: Legitimate patch for timezone detection.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: timezonedb-php8.5.patch
    status: safe
    summary: Legitimate patch for system tzdata support; no malicious behavior.
---

php85-xsl is built from php85
Materializing php85-xsl from local mirror...
Materialized php85-xsl
Analyzing php85-xsl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its top-level scope. There are no command substitutions, backtick expansions, eval invocations, or other code that would execute network requests, run untrusted commands, or perform dangerous operations at parse time. All assignments use static strings or simple variable references (e.g., `${pkgver}`, `${_phpbase}`) with no embedded execution. Function bodies are defined but not called during `makepkg --printsrcinfo`. No top-level code triggers downloads, exfiltration, or system modification, making the parse step safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for a Git repository. It contains patterns to exclude build artifacts common in Arch Linux packaging (compressed archives, `pkg/` and `src/` directories, and a `nohup.out` log file). No commands, network operations, or encoded data are present. The file serves solely to prevent unintended file tracking and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD, apache-php8.4.patch...
[1/12] Reviewing .SRCINFO, PKGBUILD, apache-php8.4.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for apache-php8.4.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch (diff) that modifies PHP's `apache2handler/config.m4` to force disable threaded MPM and ZTS (Zend Thread Safety) detection, even when Apache is built with a threaded MPM. The change overrides automatic feature detection—setting both values to `no` unconditionally—instead of respecting the `threaded:` property from `$APXS_HTTPD -V`.

No obfuscation, network calls, file operations, encrypted payloads, or any other supply‑chain red flags are present. The patch is a straightforward, transparent build‑time configuration tweak. Disabling threaded MPM and ZTS may degrade performance or feature compatibility on threaded Apache MPMs (worker/event), but this is a functional/fidelity decision by the package maintainer, not a security threat. The modification does not exfiltrate data, download untrusted code, or backdoor the system.

The patch is consistent with ordinary AUR packaging practices and does not exhibit any genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Build config tweak, not malicious.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, PKGBUILD, apache-php8.4.patch, make-tests.patch...
[2/12] Reviewing .SRCINFO, PKGBUILD, make-tests.patch...
+ Reviewed apache-php8.4.patch. Status: SAFE -- Build config tweak, not malicious.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, a standard Arch Linux package metadata file generated by `makepkg --printsrcinfo`. It is purely declarative and contains **no executable code, no scripts, and no functions** (such as `prepare()`, `build()`, or `package()`).

The only remote source URL is `https://php.net/distributions/php-8.5.12.tar.xz`, which is the official PHP project site. All other sources are local patch files bundled with the AUR package. Integrity checks (sha256sums) are provided for every source, none of which are set to `SKIP`, and no mutable VCS branches or tags are referenced.

There is no evidence of obfuscation, unexpected network requests, exfiltration, backdoors, or any other supply-chain attack vectors. The file represents a standard, transparent packaging metadata declaration.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no malicious code.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, PKGBUILD, make-tests.patch, pear-config-patcher.php...
[3/12] Reviewing PKGBUILD, make-tests.patch, pear-config-patcher.php...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no malicious code.
LLM auditresponse for make-tests.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds several environment variables (`REPORT_EXIT_STATUS`, `NO_INTERACTION`, `SKIP_ONLINE_TESTS`, `SKIP_SLOW_TESTS`) to the command that runs PHP tests. These are standard test‑framework parameters that make the test run non‑interactively and skip online/slow tests, which is normal and expected for build environments. There is no network access, no code execution from external sources, no obfuscation, and no modification of system files outside the build. The patch performs no action that deviates from ordinary packaging practice.

AUR packages commonly apply patches to upstream source code to adjust build settings; this patch changes only test‑runner options and is not a security concern.
</details>
<evidence></evidence>
<summary>Safe patch adjusting test run parameters.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, make-tests.patch, pear-config-patcher.php, php-apache.conf...
[4/12] Reviewing PKGBUILD, pear-config-patcher.php, php-apache.conf...
+ Reviewed make-tests.patch. Status: SAFE -- Safe patch adjusting test run parameters.
LLM auditresponse for php-apache.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache configuration snippet for PHP, enabling PHP file handling via the `SetHandler` directive for `.php` and `.phps` extensions. The content contains no executable code, no network requests, no system modifications, and no obfuscation. It uses escaped XML-like tags (e.g., `&lt;IfModule&gt;`) and a `@MODULE@` placeholder, which is normal for configuration templates processed during package installation. No evidence of malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard Apache PHP config file.</summary>
</security_assessment>

[4/12] Reviewing PKGBUILD, pear-config-patcher.php, php-apache.conf, php-fpm.install...
[5/12] Reviewing PKGBUILD, pear-config-patcher.php, php-fpm.install...
+ Reviewed php-apache.conf. Status: SAFE -- Standard Apache PHP config file.
LLM auditresponse for php-fpm.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `php-fpm.install` defines hooks (pre_install, post_install, etc.) that only echo static messages and their arguments. There are no network operations, file modifications, dangerous command invocations (eval, curl, wget, base64, etc.), or obfuscated code. The content is consistent with a standard Arch Linux package install script used for debugging or logging, and it does not perform any actions that could compromise the system. No security issues identified.
</details>
<evidence></evidence>
<summary>Benign echo-only install script.</summary>
</security_assessment>

[5/12] Reviewing PKGBUILD, pear-config-patcher.php, php-fpm.install, php-makefile-patcher.php...
[6/12] Reviewing PKGBUILD, pear-config-patcher.php, php-makefile-patcher.php...
+ Reviewed php-fpm.install. Status: SAFE -- Benign echo-only install script.
LLM auditresponse for pear-config-patcher.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This PHP script is a configuration patcher: it reads a file (supplied as a command-line argument), unserializes each line, updates several directory paths (`temp_dir`, `cache_dir`, `download_dir`, `metadata_dir`) to be subdirectories of a provided base path, and then writes the modified content back.  

The script contains no network requests, no execution of external code (`eval`, `base64`, `curl`, `wget`), no obfuscation, and no access to sensitive system files. The only operations are reading, transforming, and writing a single configuration file. The `unserialize`/`serialize` functions operate on the package's own configuration data and are not used to load untrusted content from outside sources.  

While deserializing untrusted data could theoretically be exploited, in this context the script is a tool for modifying the package's own config; it does not accept arbitrary input or perform any action beyond its stated purpose. There are no signs of injected malicious code, data exfiltration, or supply‑chain attack patterns.
</details>
<evidence></evidence>
<summary>Benign config patcher script; no malicious behavior.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, pear-config-patcher.php, php-makefile-patcher.php, php-phpinfo-8.4.patch...
[7/12] Reviewing PKGBUILD, php-makefile-patcher.php, php-phpinfo-8.4.patch...
+ Reviewed pear-config-patcher.php. Status: SAFE -- Benign config patcher script; no malicious behavior.
LLM auditresponse for php-phpinfo-8.4.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that removes the "Configure Command" line from PHP's `phpinfo` output and updates the corresponding test. The change is typical for packages that wish to avoid exposing build configuration details in the runtime information. There is no evidence of malicious behavior: no network requests, no file operations outside normal build patching, no obfuscation, no execution of untrusted code. The patch aligns with normal packaging practices and does not contain any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Legitimate patch; no security concerns.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, php-makefile-patcher.php, php-phpinfo-8.4.patch, timezonedb-guess.patch...
[8/12] Reviewing PKGBUILD, php-makefile-patcher.php, timezonedb-guess.patch...
+ Reviewed php-phpinfo-8.4.patch. Status: SAFE -- Legitimate patch; no security concerns.
LLM auditresponse for php-makefile-patcher.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple Makefile patcher that reorders PHP module definitions in a build file. It reads a file, finds a line starting with `PHP_MODULES =`, sorts the module names by a hardcoded priority order (openssl, xml, pdo, dom, mysqlnd), and writes the sorted definition back. There is no usage of network requests, obfuscation, or execution of external commands. The only file operations are read and write on the file specified via command-line argument – a routine operation for a build helper. The custom functions (`preg_match`, `usort`, `file_get_contents`, etc.) are part of the package's PHP environment and are expected. No evidence of supply-chain compromise, backdoor, or data exfiltration.
</details>
<evidence></evidence>
<summary>Benign Makefile patcher with no malicious behavior.</summary>
</security_assessment>

[9/12] Reviewing PKGBUILD, timezonedb-guess.patch...
+ Reviewed php-makefile-patcher.php. Status: SAFE -- Benign Makefile patcher with no malicious behavior.
[9/12] Reviewing PKGBUILD, timezonedb-guess.patch, timezonedb-php8.5.patch...
LLM auditresponse for timezonedb-guess.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `timezonedb-guess.patch` is a patch file that introduces a function to guess the timezone from system information using `timelib_timezone_id_from_abbr`. The patch adds code that calls `php_localtime_r` to obtain local time and then attempts to derive a timezone ID from the abbreviation, GMT offset, and daylight saving time flag. This is a legitimate improvement for timezone detection in PHP's date extension. There are no network requests, obfuscated code, or system modifications unrelated to the application's purpose. The content aligns with standard packaging practices and does not contain any malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate patch for timezone detection.</summary>
</security_assessment>

[10/12] Reviewing PKGBUILD, timezonedb-php8.5.patch...
+ Reviewed timezonedb-guess.patch. Status: SAFE -- Legitimate patch for timezone detection.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds PHP 8.5.12 from a signed source tarball downloaded via HTTPS. All file operations are confined to the build directory and package staging area. The script applies patches stored in the same repository (not fetched at build time) and runs the upstream build system (autoconf, make) in a standard manner. Module installation copies .so files into the appropriate paths. There is no obfuscated code, no unexpected network requests, no execution of remotely-fetched content, and no exfiltration of system data. Several package split functions are defined, but they follow typical AUR subpackage patterns. The extensive use of `sed` and `patch` is normal for repackaging with custom prefixes and SAPI configurations. No signs of supply-chain injection were found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[11/12] Reviewing timezonedb-php8.5.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
LLM auditresponse for timezonedb-php8.5.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies PHP's timezone handling to allow use of the system timezone database instead of the built-in one. All operations are confined to reading standard system paths (`/usr/share/zoneinfo/`) and parsing zoneinfo files. There are no network requests, obfuscated code, unexpected file writes, or exfiltration of sensitive data.

The code includes path traversal protections (rejecting timezone names containing `..`) and performs typical C library operations (mmap, open, stat, scandir) for reading zoneinfo data. The `--with-system-tzdata` configuration option is a normal build-time switch. Everything is consistent with standard packaging and upstream development practices.

No genuinely malicious or dangerous behavior was identified.
</details>
<evidence></evidence>
<summary>Legitimate patch for system tzdata support; no malicious behavior.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed timezonedb-php8.5.patch. Status: SAFE -- Legitimate patch for system tzdata support; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 71,541
  Completion Tokens: 14,858
  Total Tokens: 86,399
  Total Cost: $0.009214
  Execution Time: 197.92 seconds

Final Status: SAFE


No issues found.
