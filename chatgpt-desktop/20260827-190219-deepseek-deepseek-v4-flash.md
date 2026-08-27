---
package: chatgpt-desktop
pkgver: 26.820.71523
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 17553
completion_tokens: 2822
total_tokens: 20375
cost: 0.00180890206
execution_time: 119.85
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T19:02:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security issues.
  - file: chatgpt-launcher.sh
    status: safe
    summary: Benign launcher wrapper; reads user flags and executes package binary safely.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR package, official source, checksummed, no malice.
  - file: chatgpt-desktop.install
    status: safe
    summary: Standard AppArmor profile management install script.
---

Cloning https://aur.archlinux.org/chatgpt-desktop.git...
Cloned chatgpt-desktop
Analyzing chatgpt-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments, arrays, and a `package()` function definition. There are no command substitutions, function calls, or code execution at the global scope. The `pkgver()` function is not defined. The source array specifies URLs to official deb packages with SHA256 checksums and a local shell script with a checksum. Since `--nobuild --nodeps --noprepare` prevents execution of `prepare()`, `build()`, and `package()`, and the top-level scope is purely declarative, running `makepkg` with these flags and `makepkg --printsrcinfo` is safe. No genuinely malicious behavior is present in the executed scope.
</details>
<evidence></evidence>
<summary>Safe: no executable code in top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in top-level or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for the AUR package. It contains standard fields such as package name, version, architecture, dependencies, and source URLs. The source URLs point to the official OpenAI CDN (`persistent.oaistatic.com`) over HTTPS, with valid SHA-256 checksums provided for both architectures. No suspicious commands, encoded data, or unusual operations are present. The file is purely declarative and does not execute any code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
[1/5] Reviewing .gitignore, PKGBUILD, chatgpt-desktop.install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard patterns for ignoring build artifacts (archives, logs, and the `pkg/` and `src/` directories). There is no executable code, no network operations, no obfuscation, and no system modifications. It presents no security concerns whatsoever.
</details>
<evidence></evidence>
<summary>Standard gitignore file with no security issues.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, chatgpt-desktop.install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security issues.
[2/5] Reviewing PKGBUILD, chatgpt-desktop.install, chatgpt-launcher.sh...
LLM auditresponse for chatgpt-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper. It reads an optional user configuration file (`chatgpt-flags.conf`) from the user's XDG config directory, strips blank lines, comments, and surrounding whitespace, and appends the remaining lines as command-line arguments. It then locates its own directory with `readlink -f` and executes the sibling `ChatGPT` binary with `exec`.

There is no obfuscation, no network access, no downloading or execution of remote content, no `eval`, `base64`, or shell injection. The flags file is processed as literal positional arguments rather than being interpreted as shell commands, so it does not introduce command execution. The only file operations are reading the user's own config file and executing the package's own binary. This is consistent with normal AUR packaging practices and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper; reads user flags and executes package binary safely.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, chatgpt-desktop.install...
+ Reviewed chatgpt-launcher.sh. Status: SAFE -- Benign launcher wrapper; reads user flags and executes package binary safely.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard repackaging of the official ChatGPT binary from OpenAI. The source URLs point to `persistent.oaistatic.com`, which is an official OpenAI domain, and all downloads are verified with SHA256 checksums. There are no obfuscated commands, unexpected network requests (beyond the declared sources), unusual file operations, or any behavior that deviates from normal packaging practices. The file does not contain any code that exfiltrates data, downloads/executes untrusted code, or installs backdoors. All operations are confined to extracting the official `.deb` and installing files into the package directory.
</details>
<evidence></evidence>
<summary>Clean AUR package, official source, checksummed, no malice.</summary>
</security_assessment>

[4/5] Reviewing chatgpt-desktop.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR package, official source, checksummed, no malice.
LLM auditresponse for chatgpt-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-install/pre-remove script that manages an AppArmor profile for the chatgpt-desktop application. It checks for AppArmor availability and loads/reloads the profile using `apparmor_parser` when the package is installed or upgraded, and removes it on uninstall. All operations are confined to system AppArmor configuration (profile files under `/etc/apparmor.d/` and kernel interface files). There are no network requests, no downloads, no obfuscated or encoded commands, no file operations outside the expected scope, and no exfiltration of data. The behavior is consistent with legitimate packaging practices for applications that ship custom AppArmor profiles.
</details>
<evidence></evidence>
<summary>Standard AppArmor profile management install script.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed chatgpt-desktop.install. Status: SAFE -- Standard AppArmor profile management install script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,553
  Completion Tokens: 2,822
  Total Tokens: 20,375
  Total Cost: $0.001809
  Execution Time: 119.85 seconds

Final Status: SAFE


No issues found.
