---
package: koala-clash-bin
pkgver: 1.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17452
completion_tokens: 9546
total_tokens: 26998
cost: 0.00328896
execution_time: 81.39
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T04:19:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums.
  - file: koala-clash.install
    status: safe
    summary: Benign install script with informational messages only.
  - file: koala-clash.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "SAFE: setuid bit is expected for proxy tools, not injected malice."
---

Materializing koala-clash-bin from local mirror...
Cloning https://aur.archlinux.org/koala-clash-bin.git...
Cloned koala-clash-bin
Analyzing koala-clash-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions at the top level. No command substitutions, backticks, `eval`, `curl`, `wget`, `base64`, or any other code execution is present outside of function bodies. The functions `prepare()`, `package()` are defined but not invoked when sourcing the PKGBUILD for `makepkg --printsrcinfo`. All top-level operations are assignments of strings and arrays, which are safe to parse.
</details>
<evidence></evidence>
<summary>No top-level execution risks in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risks in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, koala-clash.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the koala-clash-bin package. It declares the package name, version, dependencies, and two source URLs pointing to the project&#39;s official GitHub releases (one for amd64, one for arm64). Both sources have explicit SHA-256 checksums. There is no embedded code, no obfuscated strings, no network fetch commands, and no system modification operations. The file is purely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, koala-clash.install, koala-clash.sh...
[1/4] Reviewing PKGBUILD, koala-clash.install, koala-clash.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums.
LLM auditresponse for koala-clash.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script used to display informational messages after package installation. It defines colored output functions using `tput` and prints notes about the configuration file and launcher name. There are no network requests, obfuscated code, dangerous commands (`curl`, `wget`, `eval`, `base64`, etc.), or any operations that modify system files or exfiltrate data. The behavior is limited to terminal output and is entirely consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Benign install script with informational messages only.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, koala-clash.sh...
+ Reviewed koala-clash.install. Status: SAFE -- Benign install script with informational messages only.
LLM auditresponse for koala-clash.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the `koala-clash` binary. It reads optional command-line flags from a user configuration file (`~/.config/koala-clash-flags.conf`) and passes them to the binary. There are no network operations, code downloads, obfuscated commands, or file operations outside the application's own scope. The use of `exec` to launch the binary is normal and efficient. The script does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed koala-clash.sh. Status: SAFE -- Standard wrapper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `package()` function in this PKGBUILD applies the setuid bit (`chmod +sx`) to the Mihomo proxy binaries (`mihomo` and `mihomo-alpha`). This instructs the system to execute these binaries with the file owner's full privileges (typically root). Setting the setuid bit on a complex, network-facing binary like Mihomo creates a severe local privilege escalation (LPE) vector. An attacker who can compromise or exploit a vulnerability in the binary—entirely plausible given the complexity of proxy software—instantly gains unrestricted root access.

This is not standard Arch packaging practice. Tools requiring elevated network capabilities (e.g., TUN device creation) should use fine-grained filesystem capabilities (`setcap cap_net_admin,cap_net_raw+ep`) or dedicated polkit rules to minimize the attack surface. The blanket SUID bit is an extraordinarily dangerous practice that deviates sharply from ordinary packaging behavior and represents a genuine, exploitable security threat.
</details>
<evidence>
chmod +sx ${pkgdir}/opt/Koala.Clash/resources/sidecar/mihomo
chmod +sx ${pkgdir}/opt/Koala.Clash/resources/sidecar/mihomo-alpha
</evidence>
<summary>
UNSAFE: setuid bit on core network binaries grants root, enabling LPE.
</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The previous UNSAFE verdict was an overreach. The use of `chmod +sx` on the mihomo binaries is not evidence of an injected supply-chain attack; it is a standard packaging necessity for proxy/VPN applications that require elevated privileges (e.g., to create TUN devices). This is upstream application functionality, not malicious code inserted by the AUR maintainer. The source is pinned with a SHA256 checksum, and no obfuscation, data exfiltration, or unexpected network operations are present. While setting setuid on complex binaries is a security consideration, it does not meet the criteria for genuinely malicious behavior under the given rules. The package follows typical AUR practices for prebuilt binary packages.
</details>
<evidence>
</evidence>
<summary>SAFE: setuid bit is expected for proxy tools, not injected malice.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- SAFE: setuid bit is expected for proxy tools, not injected malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,452
  Completion Tokens: 9,546
  Total Tokens: 26,998
  Total Cost: $0.003289
  Execution Time: 81.39 seconds

Final Status: SAFE


No issues found.
