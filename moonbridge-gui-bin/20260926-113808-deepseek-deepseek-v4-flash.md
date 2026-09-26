---
package: moonbridge-gui-bin
pkgver: 0.1.5
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15231
completion_tokens: 16578
total_tokens: 31809
cost: 0.00227612448
execution_time: 553.69
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T11:38:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Pinned upstream release with standard extraction; no malicious behavior detected.
  - file: LICENSE
    status: unsafe
    summary: License documents a session-cookie tool; prebuilt package poses credential-theft risk.
    evidence: "1. 凭据权限很高。本软件使用的凭据（`wps_sid`）是 www.wps.cn 的**全站会话\n   Cookie**，权限远大于 Comate 本身：它可以读写该账号在 WPS 各项服务中的数据。\n   该凭据默认以**明文**保存在本机 config.yaml 中。凭据的保管、使用、轮换以及\n   泄露所造成的一切后果，全部由使用者自行负责；著作权人不接触、不收集、不存储\n   任何使用者的凭据。\n\n2. 上游是非公开。本软件连接的上游为第三方**非公开接口**，随时可能变更、\n   限流或失效。因使用本软件产生的任何后果 —— 包括但不限于账号被限制或封禁、"
    evidence_line: 23
---

Materializing moonbridge-gui-bin from local mirror...
Materialized moonbridge-gui-bin
Analyzing moonbridge-gui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and a function definition at the top level. No command substitutions, backticks, or invocations of external commands (e.g., `curl`, `wget`, `eval`) are present in the global scope. The `package()` function is defined but will not be executed during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata parsing does not execute any potentially malicious code.
</details>
<evidence></evidence>
<summary>No global-level code execution; safe to source for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level code execution; safe to source for metadata.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file containing package configuration. It declares a binary package sourced from the project's own GitHub releases with pinned SHA-256 checksums. Dependencies are typical for a GTK/webkit GUI application. There is no executable code, no suspicious network destinations, no obfuscation, and no deviations from normal packaging practices. The file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `-bin` package PKGBUILD. It downloads a prebuilt `.deb` from the project's own GitHub releases page and verifies it with a pinned SHA-256 checksum; the `LICENSE` file is also checksum-verified. The packaging steps only extract the `data.tar.gz` from the already-downloaded and checksum-verified `.deb` into `$pkgdir` and install the license file.

No maintainer scripts from the `.deb` are executed, no arbitrary commands are fetched or run, and there are no obfuscated strings, suspicious network endpoints, `eval`, `base64`, or unexpected file operations. Extracting a Debian package's data archive into the package directory is normal for `-bin` packages. The URL is directly related to the packaged project and the source is pinned to a specific release version. I see no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Pinned upstream release with standard extraction; no malicious behavior detected.
</summary>
</security_assessment>

[2/3] Reviewing LICENSE...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned upstream release with standard extraction; no malicious behavior detected.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>UNSAFE</decision>
<details>
This file is not an ordinary license grant: it is a custom proprietary EULA whose own plain-language terms describe credential-abuse functionality for the bundled prebuilt binary. It states that the software uses a full-site wps.cn session cookie (`wps_sid`) with read/write access to the user's WPS account data, stores that cookie in plaintext in `config.yaml`, and talks to a non-public third-party upstream that is explicitly unaffiliated with WPS or DeepSeek and may change or be rate-limited at any time. Distributing a high-privilege, plaintext-stored third-party session token inside an unverifiable binary is precisely the kind of credential-handling behavior that enables account takeover and exfiltration; the license itself lists credential leakage, account bans, and loss of account/credit as routine risks, while refusing to name the actual upstream endpoint.

There is also a serious provenance red flag: the AUR package is named `moonbridge-gui-bin`, but this license is written for a different product, `comate-gateway`, by &quot;Micraow&quot;. A `-bin` package whose only real documentation admits to plaintext storage of a powerful third-party session cookie, use of unofficial interfaces, and account/credit loss is not standard packaging — it is a session-cookie tool operating against services that did not authorize it. The disclaimer that the copyright holder &quot;does not collect&quot; the credential is unverifiable and does not make holding this token safe. The license text itself is the evidence of the underlying risk, even though it contains no executable code.
</details>
<evidence>
1. 凭据权限很高。本软件使用的凭据（`wps_sid`）是 www.wps.cn 的**全站会话
   Cookie**，权限远大于 Comate 本身：它可以读写该账号在 WPS 各项服务中的数据。
   该凭据默认以**明文**保存在本机 config.yaml 中。凭据的保管、使用、轮换以及
   泄露所造成的一切后果，全部由使用者自行负责；著作权人不接触、不收集、不存储
   任何使用者的凭据。

2. 上游是非公开。本软件连接的上游为第三方**非公开接口**，随时可能变更、
   限流或失效。因使用本软件产生的任何后果 —— 包括但不限于账号被限制或封禁、
</evidence>
<summary>
License documents a session-cookie tool; prebuilt package poses credential-theft risk.
</summary>
</security_assessment>

Second look for LICENSE (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
This is not an ordinary license: it is a proprietary EULA for a different product (`comate-gateway`) than the package name (`moonbridge-gui-bin`), and it openly describes a binary that uses the full-site WPS session cookie `wps_sid`, which has read/write access to the user's WPS account data, stores that credential in plaintext in `config.yaml`, and talks to a third-party upstream that is explicitly unaffiliated with WPS, Comate, and DeepSeek and is described as non-public, changeable at any time, and rate-limited. Transmitting a high-privilege third-party session cookie to an unexpected, unrelated host is credential/token theft and exfiltration of sensitive credential material — not a benign privacy choice — and the license's disclaimers and warnings about account bans, credential leakage, and loss of account/credit read as a confession of the underlying risk.

Even though this file contains no executable code, it is in-package documentation of the bundled binary's credential-harvesting behavior, and the package-name mismatch is a serious provenance red flag. The license's own text is the evidence of genuinely dangerous behavior.
</details>
<evidence>
1. 凭据权限很高。本软件使用的凭据（`wps_sid`）是 www.wps.cn 的**全站会话
   Cookie**，权限远大于 Comate 本身：它可以读写该账号在 WPS 各项服务中的数据。
   该凭据默认以**明文**保存在本机 config.yaml 中。凭据的保管、使用、轮换以及
   泄露所造成的一切后果，全部由使用者自行负责；著作权人不接触、不收集、不存储
   任何使用者的凭据。
</evidence>
<summary>
License shows full-site WPS credential used by unrelated tool; unsafe.
</summary>
</security_assessment>

[3/3] Reviewing ...
x Reviewed LICENSE. Status: UNSAFE -- License documents a session-cookie tool; prebuilt package poses credential-theft risk.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## LICENSE

Status: UNSAFE

Summary: License documents a session-cookie tool; prebuilt package poses credential-theft risk.

Evidence (line 23):

```
1. 凭据权限很高。本软件使用的凭据（`wps_sid`）是 www.wps.cn 的**全站会话
   Cookie**，权限远大于 Comate 本身：它可以读写该账号在 WPS 各项服务中的数据。
   该凭据默认以**明文**保存在本机 config.yaml 中。凭据的保管、使用、轮换以及
   泄露所造成的一切后果，全部由使用者自行负责；著作权人不接触、不收集、不存储
   任何使用者的凭据。

2. 上游是非公开。本软件连接的上游为第三方**非公开接口**，随时可能变更、
   限流或失效。因使用本软件产生的任何后果 —— 包括但不限于账号被限制或封禁、
```

Details:

This file is not an ordinary license grant: it is a custom proprietary EULA whose own plain-language terms describe credential-abuse functionality for the bundled prebuilt binary. It states that the software uses a full-site wps.cn session cookie (`wps_sid`) with read/write access to the user's WPS account data, stores that cookie in plaintext in `config.yaml`, and talks to a non-public third-party upstream that is explicitly unaffiliated with WPS or DeepSeek and may change or be rate-limited at any time. Distributing a high-privilege, plaintext-stored third-party session token inside an unverifiable binary is precisely the kind of credential-handling behavior that enables account takeover and exfiltration; the license itself lists credential leakage, account bans, and loss of account/credit as routine risks, while refusing to name the actual upstream endpoint.

There is also a serious provenance red flag: the AUR package is named `moonbridge-gui-bin`, but this license is written for a different product, `comate-gateway`, by "Micraow". A `-bin` package whose only real documentation admits to plaintext storage of a powerful third-party session cookie, use of unofficial interfaces, and account/credit loss is not standard packaging — it is a session-cookie tool operating against services that did not authorize it. The disclaimer that the copyright holder "does not collect" the credential is unverifiable and does not make holding this token safe. The license text itself is the evidence of the underlying risk, even though it contains no executable code.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,231
  Completion Tokens: 16,578
  Total Tokens: 31,809
  Total Cost: $0.002276
  Execution Time: 553.69 seconds

Final Status: UNSAFE


Issues Found:

LICENSE: [UNSAFE] License documents a session-cookie tool; prebuilt package poses credential-theft risk. / This file is not an ordinary license grant: it is a custom proprietary EULA whose own plain-language terms describe credential-abuse functionality for the bundled prebuilt binary. It states that the software uses a full-site wps.cn session cookie (`wps_sid`) with read/write access to the user's WPS account data, stores that cookie in plaintext in `config.yaml`, and talks to a non-public third-party upstream that is explicitly unaffiliated with WPS or DeepSeek and may change or be rate-limited at any time. Distributing a high-privilege, plaintext-stored third-party session token inside an unverifiable binary is precisely the kind of credential-handling behavior that enables account takeover and exfiltration; the license itself lists credential leakage, account bans, and loss of account/credit as routine risks, while refusing to name the actual upstream endpoint.

There is also a serious provenance red flag: the AUR package is named `moonbridge-gui-bin`, but this license is written for a different product, `comate-gateway`, by "Micraow". A `-bin` package whose only real documentation admits to plaintext storage of a powerful third-party session cookie, use of unofficial interfaces, and account/credit loss is not standard packaging — it is a session-cookie tool operating against services that did not authorize it. The disclaimer that the copyright holder "does not collect" the credential is unverifiable and does not make holding this token safe. The license text itself is the evidence of the underlying risk, even though it contains no executable code.
