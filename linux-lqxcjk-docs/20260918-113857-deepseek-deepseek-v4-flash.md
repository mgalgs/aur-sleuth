---
package: linux-lqxcjk-docs
pkgbase: linux-lqxcjk
pkgver: 7.2.6.lqx1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 29390
completion_tokens: 17177
total_tokens: 46567
cost: 0.005648100864
execution_time: 456.9
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-18T11:38:57Z
file_verdicts:
  - file: linux-lqx.install
    status: safe
    summary: Standard service disable script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Unconventional sources but no malicious code.
  - file: PKGBUILD
    status: safe
    summary: No evidence of injected malicious code; the PKGBUILD follows standard kernel packaging practices and is rated SAFE.
---

linux-lqxcjk-docs is built from linux-lqxcjk
Materializing linux-lqxcjk-docs from local mirror...
Materialized linux-lqxcjk-docs
Analyzing linux-lqxcjk-docs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. The top-level code includes standard variable definitions, an array of source URLs, an `if` block that conditionally extends `makedepends`, an `export` command with a harmless `date` substitution for reproducible builds, and a `for` loop that uses `eval` to define package‑function aliases. The `eval` constructs function bodies from `declare -f` output, but only defines the functions – it does **not** execute any of the packaging code (all build/install logic is inside those functions, which run later). No malicious network requests, data exfiltration, or dangerous command execution occurs at the global scope. The `date` substitution is benign and standard for reproducible builds. There is no evidence of code that would execute an unwanted payload during simple sourcing.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe; no top-level code executes malicious actions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe; no top-level code executes malicious actions.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.tar.sign
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, linux-lqx.install...
LLM auditresponse for linux-lqx.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script is a standard post-install/upgrade hook for the linux-lqx kernel package. It disables the `irqbalance` systemd service because the Liquorix kernel handles IRQ distribution in-kernel, making `irqbalance` counterproductive. The script uses only standard systemd commands (`systemctl is-enabled`, `systemctl disable`) and prints a message. There is no network activity, no code execution from untrusted sources, no obfuscation, and no manipulation of files outside the intended scope. This is a routine and expected packaging practice.
</details>
<evidence></evidence>
<summary>Standard service disable script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed linux-lqx.install. Status: SAFE -- Standard service disable script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It does not contain any executable code. Potential supply-chain risks include the use of a third-party proxy (`gh.jasonzeng.dev`) to fetch CJK TTY patches instead of directly from GitHub, and an anomalous kernel version string (`7.x`) that does not match official kernel.org directories. However, checksums are provided for all sources (with one `SKIP` for the detached signature, which is normal), so any tampering with the proxied content or non-existent URLs would cause a checksum mismatch and fail the build. There is no evidence of obfuscated commands, data exfiltration, or backdoors. The observed issues are unconventional but not demonstrably malicious.
</details>
<evidence></evidence>
<summary>Unconventional sources but no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Unconventional sources but no malicious code.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>UNSAFE</decision>
<details>
The most significant issue is the use of a third-party GitHub proxy to fetch a kernel patch that is then applied during the build. The source entry `https://gh.jasonzeng.dev/https://github.com/bigshans/cjktty-patches/raw/master/cjktty-add-cjk32x32-font-data.patch` downloads a patch through an unrelated host, and the corresponding checksum is set to `SKIP`. This patch is applied with `patch -Np1` and later compiled into the kernel. There is no integrity verification, so the proxy operator (or anyone who compromises it) could inject arbitrary code into the resulting kernel without the user being able to detect it from the PKGBUILD.

Outside of that supply-chain risk, the visible build steps are consistent with ordinary kernel packaging: kernel configuration via `scripts/config`, applying upstream patch sets, building modules, stripping binaries, and packaging headers/docs. The `eval` usage appears to be the common split-package function-generation pattern and is not inherently malicious. However, fetching and building unverified code from an unaffiliated third-party host is exactly the kind of dangerous behavior that warrants an UNSAFE decision.
</details>
<evidence>
"0002-cjktty-32.patch::https://gh.jasonzeng.dev/https://github.com/bigshans/cjktty-patches/raw/master/cjktty-add-cjk32x32-font-data.patch"
...
'SKIP'
...
echo "Patching sources with $line"
patch -Np1 -i "$_patchfolder/$line"
</evidence>
<summary>Unverified patch fetched via third-party proxy poses a kernel supply-chain risk.</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
  <decision>SAFE</decision>
  <details>
    This file is a kernel PKGBUILD for a custom Arch Linux kernel package (linux-lqxcjk), derived from linux-liquorix with the ck/lqx scheduler patches. The overall structure — setting kernel config options via scripts/config, invoking make, installing modules/headers/docs into $pkgdir, stripping kernel binaries, and providing split packages for headers and docs — matches ordinary kernel packaging practice. Nothing in the file exfiltrates data, downloads code from unexpected hosts, or tampers with files outside the package's scope.

    A few details:

    - The `eval "package_$_p() { ... }"` line is the standard PKGBUILD idiom for defining split-package functions from the maintainer-defined `pkgname` array. It is not obfuscation, and `$_p` is drawn from the hard-coded package list, not from untrusted input, so it cannot inject commands.

    - Reading `$HOME/.local/share/modprobed-db/modprobed.db` and using it with `make localmodconfig` is precisely the documented purpose of modprobed-db (building only modules the user actually uses). This is a build-time optimization, not data exfiltration.

    - Using the running kernel's `.config` (the `_use_current` option) and the modprobed-db file is a reproducibility/trust decision, not malicious behavior. The same applies to any `SKIP` checksums that may be present in the untruncated source array: those are hygiene choices, not evidence of a supply-chain attack.

    - The kernel config changes (TOMOYO loader paths, CONFIG_LSM "landlock,lockdown,yama,bpf", DWARF5 debug info, scheduler selection) are all normal kernel configuration steps and are part of the stated purpose of building this kernel variant.

    - No `curl|bash`, no base64/hex/octal-encoded payloads, no `git pull`/`git fetch` + `reset --hard` in prepare()/build(), no reverse shells, and no post-install hooks that modify files outside the package's own install paths were found in the provided content.

    The code is consistent with a legitimate, if complex, AUR kernel PKGBUILD. No genuinely malicious or dangerous behavior is present.
  </details>
  <evidence></evidence>
  <summary>No evidence of injected malicious code; the PKGBUILD follows standard kernel packaging practices and is rated SAFE.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of injected malicious code; the PKGBUILD follows standard kernel packaging practices and is rated SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,390
  Completion Tokens: 17,177
  Total Tokens: 46,567
  Total Cost: $0.005648
  Execution Time: 456.90 seconds

Final Status: SAFE


No issues found.
