---
package: wechat-universal-bwrap
pkgver: 4.1.13.26
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 42326
completion_tokens: 16818
total_tokens: 59144
cost: 0.0221026736
execution_time: 127.77
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T03:05:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for packaging artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file with pinned checksums and official Tencent sources; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging using official WeChat deb; no malicious behavior found.
  - file: fetch_tencent_wechat_release.sh
    status: safe
    summary: Legitimate maintenance script for upstream fetch.
  - file: libuosdevicea.Makefile
    status: safe
    summary: Standard Makefile for building a shared library; no malicious behavior found.
  - file: wechat-license
    status: safe
    summary: License notice only; no malicious content or suspicious behavior found.
  - file: fetch_uos_wechat_release.py
    status: safe
    summary: Benign upstream release fetcher that verifies hashes and caches debs only.
  - file: wechat-universal.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious behavior or suspicious content found.
  - file: wechat-universal.install
    status: safe
    summary: Install script only prints localized warnings; no malicious behavior found.
  - file: libuosdevicea.c
    status: safe
    summary: Safe static UOS licensing stub; no malicious operations or injected code.
  - file: wechat-universal.sh
    status: safe
    summary: "Safe: standard sandbox launcher with no malicious, hidden, or injected behavior."
---

Materializing wechat-universal-bwrap from local mirror...
Materialized wechat-universal-bwrap
Analyzing wechat-universal-bwrap AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of standard variable definitions, dependency arrays, source URL construction, and checksum arrays. There is no top-level command substitution, no execution of downloaded content, no network fetch, and no obfuscated or encoded payload. The conditional `if` block only appends a dependency when `CARCH` is `loong64`, which is normal packaging logic.

The `prepare()`, `build()`, and `package()` functions contain the actual extraction, compilation, and installation logic, but those are not executed by `makepkg --printsrcinfo`. No malicious behavior is present in the global scope, so this command is safe to run.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and arrays; no dangerous execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and arrays; no dangerous execution during printsrcinfo.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, .gitignore...
[0/11] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch packaging repository. It excludes generated package artifacts (`/*.pkg.tar*`), downloaded Debian packages (`/*.deb`), and local build/virtual environment directories (`/pkg`, `/src`, `/.venv`). There is no malicious behavior, no network activity, no code execution, and no system modification. It is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for packaging artifacts; no security concerns.</summary>
</security_assessment>

[0/11] Reviewing .SRCINFO, .gitignore, PKGBUILD, fetch_tencent_wechat_release.sh...
[1/11] Reviewing .SRCINFO, PKGBUILD, fetch_tencent_wechat_release.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for packaging artifacts; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is pure package metadata and contains no executable code, no obfuscation, no suspicious URLs, and no dangerous operations. All five local source files (launcher script, desktop entry, C source, Makefile, license) have pinned sha256sums. The three architecture-specific `.deb` packages are fetched from `dldir1v6.qq.com`, which is Tencent's official CDN and the legitimate upstream for the WeChat Linux client, and each `.deb` also has a pinned sha256sum. There are no `SKIP` checksums, no `curl|bash`-style fetching, and no references to unrelated or unexpected hosts.

The dependency list (`bubblewrap`, `flatpak-xdg-utils`, `xdg-desktop-portal`, audio libs, X11 libs, `nss`) is consistent with the package's stated purpose: running the official WeChat client inside a bwrap sandbox. The `noextract` options on the `.deb` files and `!strip`/`!debug`/`emptydirs` options are ordinary practices when repackaging a prebuilt vendor binary. The `libuosdevicea.c` source is worth reviewing in the PKGBUILD context since it appears to be a device-identification shim, but its presence in the source array alone is not evidence of malice — it is a declared, checksum-pinned file built locally, not downloaded and executed from an untrusted host. Overall, this file conforms to expected AUR packaging practices for a sandboxed repackaging of an official vendor binary.
</details>
<evidence>
</evidence>
<summary>
Metadata-only file with pinned checksums and official Tencent sources; no malicious behavior found.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, PKGBUILD, fetch_tencent_wechat_release.sh, fetch_uos_wechat_release.py...
[2/11] Reviewing PKGBUILD, fetch_tencent_wechat_release.sh, fetch_uos_wechat_release.py...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file with pinned checksums and official Tencent sources; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for wrapping the official WeChat Universal Linux client in a bubblewrap sandbox. It downloads the upstream `.deb` from Tencent's official `dldir1v6.qq.com` domain, pins each architecture's checksum, and extracts only the expected application and icon files for packaging. The `prepare()` function performs routine transformations: extracting from the `.deb`, stripping executable permissions from non-ELF files, patching rpaths with `patchelf`, and removing a bundled `libuosdevicea.so` in favor of a locally built stub. The `build()` function simply runs `make`, and `package()` installs files into `$pkgdir` using standard `install`/`cp` commands.

There is no obfuscated code, no `eval`, `base64`, `curl|bash`, or unexpected network destination. The `rm -rf` operations are scoped to the build directory and are part of normal packaging cleanup. The referenced `.install` script and helper shell scripts are not part of the provided content, but nothing in this PKGBUILD itself shows signs of an injected supply-chain attack or behavior outside standard packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR packaging using official WeChat deb; no malicious behavior found.</summary>
</security_assessment>

[2/11] Reviewing PKGBUILD, fetch_tencent_wechat_release.sh, fetch_uos_wechat_release.py, libuosdevicea.Makefile...
[3/11] Reviewing fetch_tencent_wechat_release.sh, fetch_uos_wechat_release.py, libuosdevicea.Makefile...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging using official WeChat deb; no malicious behavior found.
LLM auditresponse for fetch_tencent_wechat_release.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper used to fetch the latest upstream Tencent WeChat `.deb` binaries from the official Tencent distribution domain (`dldir1v6.qq.com`). It downloads each architecture's package, extracts the version from the `control` metadata, computes SHA‑256 checksums, and outputs the necessary PKGBUILD variables (`pkgver`, `sources_*`, `sha256sums_*`). All operations are limited to the package's declared upstream source; there are no unexpected network destinations (the URL pattern is official), no obfuscation, no code execution of downloaded content (only metadata extraction and checksumming), and no attempts to exfiltrate data or modify system files. The use of `curl` to download the package's own upstream binaries is a normal packaging practice, and the dynamic version discovery is consistent with the purpose of a fetcher script. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate maintenance script for upstream fetch.</summary>
</security_assessment>

[3/11] Reviewing fetch_tencent_wechat_release.sh, fetch_uos_wechat_release.py, libuosdevicea.Makefile, libuosdevicea.c...
[4/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.Makefile, libuosdevicea.c...
+ Reviewed fetch_tencent_wechat_release.sh. Status: SAFE -- Legitimate maintenance script for upstream fetch.
LLM auditresponse for libuosdevicea.Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal Makefile that builds a shared library named `libuosdevicea.so` from `libuosdevicea.c`. It uses standard Make variables such as `${CC}`, `${CFLAGS}`, `${LDFLAGS}`, and `${STRIP}`. The build and strip steps are ordinary compilation/linking operations.

There are no network accesses, downloads, encoded commands, suspicious file operations, or execution of untrusted content. The Makefile does exactly what a normal packaging build step is expected to do.
</details>
<evidence>
</evidence>
<summary>
Standard Makefile for building a shared library; no malicious behavior found.
</summary>
</security_assessment>

[4/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.Makefile, libuosdevicea.c, wechat-license...
[5/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.c, wechat-license...
+ Reviewed libuosdevicea.Makefile. Status: SAFE -- Standard Makefile for building a shared library; no malicious behavior found.
LLM auditresponse for wechat-license:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a license notice for the WeChat/Weixin application. It contains only plain-text references to official upstream license terms and their URLs (weixin.qq.com and wechat.com). There is no executable code, no download commands, no obfuscation, and no suspicious behavior. It is consistent with standard packaging documentation.
</details>
<evidence>
</evidence>
<summary>
License notice only; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[6/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.c...
+ Reviewed wechat-license. Status: SAFE -- License notice only; no malicious content or suspicious behavior found.
[6/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.c, wechat-universal.desktop...
LLM auditresponse for fetch_uos_wechat_release.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper for the `wechat-universal-bwrap` AUR package. It queries the official Uniontech (UOS) appstore repository over HTTPS, fetches `Packages.gz` metadata for `com.tencent.wechat`, parses the version, filename, size, and checksums, then prints PKGBUILD-style `source` and checksum arrays. It can also download and cache the `.deb` files, verifying SHA256, SHA1, and MD5 against the repository metadata before saving them.

No malicious behavior is present. There is no obfuscated code, no `eval`/`base64`/`curl|bash`, no data exfiltration, no backdoor, and no system modification. The only file writes are the cached `.deb` files into the current directory, using the basename of the remote filename. The network destination is the package's own upstream distribution host. A minor trust caveat is that the checksums come from the same repository as the files themselves, but that is normal for this kind of fetcher and is not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign upstream release fetcher that verifies hashes and caches debs only.</summary>
</security_assessment>

[6/11] Reviewing fetch_uos_wechat_release.py, libuosdevicea.c, wechat-universal.desktop, wechat-universal.install...
[7/11] Reviewing libuosdevicea.c, wechat-universal.desktop, wechat-universal.install...
+ Reviewed fetch_uos_wechat_release.py. Status: SAFE -- Benign upstream release fetcher that verifies hashes and caches debs only.
LLM auditresponse for wechat-universal.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the WeChat Universal application. It defines the application name, icon, category, and launch command via `/usr/lib/wechat-universal/start.sh %u`, plus a desktop action that runs `/usr/lib/wechat-universal/stop.sh`. These are ordinary launcher entries that invoke the package's own installed scripts. There is no network activity, obfuscated code, suspicious file operations, or behavior outside the package's intended purpose.

No security issues are present in the file itself. As with any launcher, the referenced shell scripts would need separate review, but nothing in this desktop entry indicates malicious behavior.
</details>
<evidence>

</evidence>
<summary>
Standard desktop launcher file; no malicious behavior or suspicious content found.</summary>
</security_assessment>

[7/11] Reviewing libuosdevicea.c, wechat-universal.desktop, wechat-universal.install, wechat-universal.sh...
[8/11] Reviewing libuosdevicea.c, wechat-universal.install, wechat-universal.sh...
+ Reviewed wechat-universal.desktop. Status: SAFE -- Standard desktop launcher file; no malicious behavior or suspicious content found.
LLM auditresponse for wechat-universal.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an Arch Linux package install script (`wechat-universal.install`). It only defines a `post_install()` function that prints localized informational messages to the user. It does not download or execute any code, does not read or exfiltrate sensitive data, does not modify system files, and contains no obfuscated or encoded commands. The use of `$LANG` is read-only and only determines which informational message is displayed. This is standard packaging behavior and presents no supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Install script only prints localized warnings; no malicious behavior found.</summary>
</security_assessment>

[9/11] Reviewing libuosdevicea.c, wechat-universal.sh...
+ Reviewed wechat-universal.install. Status: SAFE -- Install script only prints localized warnings; no malicious behavior found.
LLM auditresponse for libuosdevicea.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small C compatibility stub meant to satisfy calls to `libuosdevicea` (Union Tech OS device-auth library) for WeChat inside a bwrap sandbox. Every exported function merely copies a hardcoded constant into a caller-provided buffer: a fake MAC address, fake disk serial, fake board serial, fake OS version, a hardcoded license token, and `uos_is_active()` returning `0`. There are no file operations, subprocess or network calls, dynamic code loading, or encoded/obfuscated execution.

Supplying fabricated device/license values may circumvent upstream licensing or DRM expectations, which is a legal/terms-of-service concern, but it is not the kind of supply-chain attack this audit targets: no local data is exfiltrated, no remote code is fetched or executed, and nothing outside the application's own license check is modified. The file is consistent with a minimal static shim library, so it should be considered SAFE from a security perspective.
</details>
<evidence>
</evidence>
<summary>
Safe static UOS licensing stub; no malicious operations or injected code.</summary>
</security_assessment>

[10/11] Reviewing wechat-universal.sh...
+ Reviewed libuosdevicea.c. Status: SAFE -- Safe static UOS licensing stub; no malicious operations or injected code.
LLM auditresponse for wechat-universal.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a launcher and sandbox wrapper for WeChat Universal. It creates WeChat data directories, locates a running instance over D-Bus, optionally applies user-configured bind mounts, and finally executes `bwrap` to run `/opt/wechat-universal/wechat`. The script contains no network downloads, no `curl`/`wget`, no `eval`, no base64/obfuscated payloads, and no credential or system-file exfiltration.

The `pdfjsfix` applet is the most notable helper because it disables WeChat's web-resource signature verification, but it is an explicitly invoked helper that only modifies WeChat's own MMKV configuration and asks the user to manually review a generated zip file. This is application-scoped behavior, not hidden malicious code. The custom bind feature is user-driven and documented; default mounts are limited to WeChat data, fonts, X11, D-Bus, PulseAudio, and similar expected paths.
</details>
<evidence></evidence>
<summary>
Safe: standard sandbox launcher with no malicious, hidden, or injected behavior.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed wechat-universal.sh. Status: SAFE -- Safe: standard sandbox launcher with no malicious, hidden, or injected behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,326
  Completion Tokens: 16,818
  Total Tokens: 59,144
  Total Cost: $0.022103
  Execution Time: 127.77 seconds

Final Status: SAFE


No issues found.
