---
package: proton-ge-custom-bin
pkgver: GE_Proton11_9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28494
completion_tokens: 4967
total_tokens: 33461
cost: 0.003496948
execution_time: 40.59
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:03:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with only build artifacts and editor paths; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior or suspicious operations detected.
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker configuration checking the project's own upstream Git tags."
  - file: pam_limits.conf
    status: safe
    summary: Benign PAM limits entry granting games group elevated nice priority.
  - file: launcher.sh
    status: safe
    summary: Benign Proton launcher script; no network, obfuscation, or malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt AUR PKGBUILD with pinned checksums and no suspicious behavior.
  - file: pleasenote.install
    status: safe
    summary: Standard post-install informational script, no security issues.
  - file: user_settings.py
    status: safe
    summary: Benign commented Proton settings template; no malicious behavior detected.
---

Materializing proton-ge-custom-bin from local mirror...
Materialized proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level/global scope of this PKGBUILD. The global scope consists entirely of standard variable definitions, arrays, source URL strings, checksum arrays, and the definitions of `build()` and `package()` functions. There are no top-level command substitutions, no calls to `curl`, `wget`, `eval`, `base64`, or similar tools, and no code that would download, execute, or exfiltrate data while the PKGBUILD is being sourced.

The `build()` and `package()` functions contain file operations and `sed`/`strip` commands, but those functions are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate. The source URLs point to the project's own upstream GitHub releases, which is expected behavior. No genuinely malicious top-level code is present.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is ordinary variable/source definitions; no malicious execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is ordinary variable/source definitions; no malicious execution risk.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by an AUR package repository to exclude build artifacts and editor/IDE directories from version control. Entries such as `pkg/`, `src/`, `*.tar.zst`, and `GE*.tar.gz` are ordinary packaging by-products for an Arch package, while `.trunk/`, `.vscode/`, `.shellcheckrc`, and `.idea` are common developer tooling ignore patterns. There are no commands, network operations, encoded payloads, or any behavior that could constitute a supply-chain attack. The file contains no executable logic and presents no security concern.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with only build artifacts and editor paths; no security issues.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with only build artifacts and editor paths; no security issues.
[1/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for proton-ge-custom-bin. It declares the package name, description, dependencies, optdepends, and upstream source URLs from the project's official GitHub releases. Both x86_64 and aarch64 release tarballs are fetched from the expected upstream repository (GloriousEggroll/proton-ge-custom) and have pinned sha512 checksums.

The additional local source files (`user_settings.py`, `launcher.sh`, `pam_limits.conf`) also have pinned sha512 checksums, and the package's other metadata fields are consistent with normal packaging practice. There are no suspicious URLs, no encoded or obfuscated content, no dynamic code execution, and no attempt to fetch or exfiltrate data. This file is benign package metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious behavior or suspicious operations detected.
</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior or suspicious operations detected.
[2/8] Reviewing .nvchecker.toml, PKGBUILD, launcher.sh...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used to detect the latest upstream release tag for the `proton-ge-custom-bin` package. It points to the project's own official GitHub repository (`https://github.com/GloriousEggroll/proton-ge-custom.git`) and uses `use_max_tag` to select the highest version tag matching the regex `^GE-Proton\d+-\d+$`. It also defines a simple tag-to-version transformation pattern.

There is no obfuscation, no execution of fetched code, no network destination outside the package's own upstream, and no file manipulation or system modification. Using a mutable tag list via `use_max_tag` is a normal version-checking approach for a rolling release tracker and does not constitute malicious behavior. This is consistent with standard AUR packaging tooling.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker configuration checking the project's own upstream Git tags.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration checking the project's own upstream Git tags.
[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PAM limits configuration entry that grants members of the `games` group the ability to set a negative nice value (-11), allowing higher scheduling priority. This is a routine system configuration adjustment commonly shipped with gaming-related packages to improve performance for game processes. It does not modify unrelated system files, execute commands, download content, or perform any malicious action. It is a standard resource-limit configuration and is consistent with the stated purpose of the package.
</details>
<evidence>
</evidence>
<summary>
Benign PAM limits entry granting games group elevated nice priority.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Benign PAM limits entry granting games group elevated nice priority.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This launcher script is a standard standalone Proton wrapper. It sets Steam/Proton environment variables, creates user-local directories under `XDG_DATA_HOME` or `~/.local/share` and `XDG_CACHE_HOME` or `~/.cache`, and then invokes the configured Proton executable with quoted user-supplied arguments. There are no network requests, no downloads, no encoded or obfuscated payloads, no eval-style execution, and no operations outside the user's own data directories.

The default `_proton=echo` setting is clearly a placeholder that the packaging process likely replaces with the real Proton binary path. All variable expansions in command invocations are properly quoted, so there is no obvious shell injection. The script is consistent with ordinary packaging and launcher functionality; no genuinely malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Benign Proton launcher script; no network, obfuscation, or malicious behavior found.
</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install, user_settings.py...
[5/8] Reviewing PKGBUILD, pleasenote.install, user_settings.py...
+ Reviewed launcher.sh. Status: SAFE -- Benign Proton launcher script; no network, obfuscation, or malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the upstream `proton-ge-custom` release tarball from the project's official GitHub releases URL over HTTPS, with pinned sha512 checksums for all sources. There are no network operations in `build()` or `package()`, no use of `curl`, `wget`, `eval`, `base64`, or obfuscated/encoded commands, and no writes outside `pkgdir` except normal `makepkg` staging behavior.

The `sed` and `strip` commands in `build()` operate on the package's own unpacked files, and the `package()` function only installs files into `pkgdir`. The `pam_limits.conf` and empty `modules-load.d` directory are consistent with the package's gaming purpose (resource limits and ntsync kernel module support). One minor hygiene note: `user_settings.py` is installed with mode `0775` and group `games` (gid 50), making a `/usr` config file group-writable; this is worth a second look but is not evidence of malicious or injected code.

No indicators of supply-chain attack, data exfiltration, backdoors, or execution of untrusted fetched code were found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt AUR PKGBUILD with pinned checksums and no suspicious behavior.</summary>
</security_assessment>

[6/8] Reviewing pleasenote.install, user_settings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt AUR PKGBUILD with pinned checksums and no suspicious behavior.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script that prints informational messages during package installation/upgrade. It describes how to adjust niceness limits for Wine/Proton by adding the user to the `games` group. There are no network requests, no code execution, no file modifications, no encoded or obfuscated content. The only operations are `echo` statements printing text. This is a routine, benign packaging helper that does nothing beyond providing user guidance. No evidence of malicious behavior or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard post-install informational script, no security issues.</summary>
</security_assessment>

[7/8] Reviewing user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Standard post-install informational script, no security issues.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Proton configuration template containing a Python dictionary named `user_settings`. Every key/value pair is commented out, and the dictionary itself is empty of active settings. The file contains no executable statements beyond the assignment of an empty dictionary, no imports, no subprocess or network calls, no file operations, and no obfuscated content.

All entries are standard Proton/Proton-GE environment variable flags (DXVK, Wine, vkd3d, FSR, HDR, logging, etc.) used for gaming compatibility. There is no evidence of injected malicious code, data exfiltration, backdoors, or unexpected downloads. The `&quot;` and `&apos;` sequences are merely HTML/XML entity representations of quote characters from the file view and do not indicate encoded or obfuscated code.
</details>
<evidence>
</evidence>
<summary>
Benign commented Proton settings template; no malicious behavior detected.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed user_settings.py. Status: SAFE -- Benign commented Proton settings template; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,494
  Completion Tokens: 4,967
  Total Tokens: 33,461
  Total Cost: $0.003497
  Execution Time: 40.59 seconds

Final Status: SAFE


No issues found.
