---
package: xnviewmp-system-libs
pkgver: 1.11.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23410
completion_tokens: 4208
total_tokens: 27618
cost: 0.00212534028
execution_time: 159.32
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T07:28:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR package builds.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with official upstream source and pinned checksums; no malicious behavior found.
  - file: qt5_std_fun_forwarder.S
    status: safe
    summary: Ordinary ABI compatibility stub, no security issues.
  - file: XnView.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: gen_qt5_forwarders.sh
    status: safe
    summary: Packaging helper script; no malicious behavior
  - file: qt5_std_fun_forwarder.lds
    status: safe
    summary: Static linker script, no security issues.
  - file: xnview.sh
    status: safe
    summary: Standard launcher script, no security issues.
---

Materializing xnviewmp-system-libs from local mirror...
Materialized xnviewmp-system-libs
Analyzing xnviewmp-system-libs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists solely of standard variable and array assignments (package name, version, dependencies, source, checksums, etc.) and function definitions (`build()` and `package()`). No command substitutions, `eval`, `curl`, `wget`, or any other code execution mechanisms are present at the top level that would run during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe for the purpose of parsing its metadata.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It simply instructs Git to ignore common archive file extensions (`*.tgz`, `*.tar`, `*.tar.xz`) and the `pkg` and `src` directories generated during the `makepkg` build process. There is no executable code, no network requests, no obfuscation, no file operations, and no deviation from expected packaging practices. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR package builds.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, PKGBUILD, .gitignore, XnView.desktop...
[1/8] Reviewing .SRCINFO, PKGBUILD, XnView.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR package builds.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary application that uses system libraries. It downloads a signed (checksummed) tarball from the official XnView MP upstream, compiles a small compatibility shim (assembler + linker script) to work around a known STL symbol versioning issue, and installs the application into `/opt/xnviewmp` with appropriate symlinks and wrapper scripts. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, no execution of unchecked content from mutable refs, and no tampering with system files outside the package's own scope. All operations are transparent and serve the stated purpose of creating an Arch package for XnView MP.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, XnView.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/8] Reviewing .SRCINFO, XnView.desktop, gen_qt5_forwarders.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata definition for the `xnviewmp-system-libs` package. It declares the package description, version, architecture, dependencies, optdepends, conflicts, sources, and SHA-256 checksums. The only downloaded source is the official XnView MP tarball from `https://download.xnview.com`, the project&#39;s own upstream domain, and it has a pinned checksum. The remaining sources are local packaging files (`xnview.sh`, desktop entry, assembler/lds files), all with fixed checksums.

There is no evidence of injected malicious code: no suspicious network endpoints, no downloads from unrelated hosts, no encoded or obfuscated content, no eval-style commands, and no unexpected file operations. The checksums are present and pinned rather than set to `SKIP`, which is good packaging hygiene. The package conflicts with `xnviewmp` and uses system libraries as described, which is consistent with its stated purpose. No security concerns are identified.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with official upstream source and pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, XnView.desktop, gen_qt5_forwarders.sh, qt5_std_fun_forwarder.S...
[3/8] Reviewing XnView.desktop, gen_qt5_forwarders.sh, qt5_std_fun_forwarder.S...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with official upstream source and pinned checksums; no malicious behavior found.
LLM auditresponse for qt5_std_fun_forwarder.S:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an assembly source that creates symbol-version forwarders for a set of C++ standard library functions (std::string methods and exception constructors). It uses the `.symver` directive to associate each function with the `Qt_5` version node, and then defines a global symbol that jumps to the unversioned PLT entry (which resolves to the system libstdc++ implementation). This is a standard ABI compatibility technique used to allow binaries compiled against older Qt 5 (which expects these symbols under the `Qt_5` version) to run on systems where libstdc++ may assign them a different version. There is no network access, obfuscation, file manipulation, or any functionality outside this narrow compatibility purpose. The code is transparent and matches common packaging practice for applications with complex system library dependencies.
</details>
<evidence>
</evidence>
<summary>Ordinary ABI compatibility stub, no security issues.</summary>
</security_assessment>

[3/8] Reviewing XnView.desktop, gen_qt5_forwarders.sh, qt5_std_fun_forwarder.S, qt5_std_fun_forwarder.lds...
[4/8] Reviewing XnView.desktop, gen_qt5_forwarders.sh, qt5_std_fun_forwarder.lds...
+ Reviewed qt5_std_fun_forwarder.S. Status: SAFE -- Ordinary ABI compatibility stub, no security issues.
LLM auditresponse for XnView.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register an application in the Linux desktop environment. It contains only metadata: encoding, terminal flag, executable path, icon path, application type, categories, startup notification, and MIME type associations. There are no embedded commands, network requests, or obfuscated code. All paths point to expected system or opt directories for the installed application. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[4/8] Reviewing XnView.desktop, gen_qt5_forwarders.sh, qt5_std_fun_forwarder.lds, xnview.sh...
[5/8] Reviewing gen_qt5_forwarders.sh, qt5_std_fun_forwarder.lds, xnview.sh...
+ Reviewed XnView.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for gen_qt5_forwarders.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper tool used during the packaging of xnviewmp-system-libs. It runs `ldd -r` on the XnView binary to detect undefined Qt5 symbols, then outputs forwarder macro definitions. It performs no network operations, no file modifications, and no execution of untrusted content. The use of `$@` passes additional arguments to ldd, which is standard. The script's purpose is entirely legitimate for generating symbol forwarders when bundling system libraries instead of bundled ones.
</details>
<evidence></evidence>
<summary>Packaging helper script; no malicious behavior</summary>
</security_assessment>

[6/8] Reviewing qt5_std_fun_forwarder.lds, xnview.sh...
+ Reviewed gen_qt5_forwarders.sh. Status: SAFE -- Packaging helper script; no malicious behavior
LLM auditresponse for qt5_std_fun_forwarder.lds:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a linker version script (`.lds` extension), used during the build process to control symbol visibility in shared libraries. The content declares a version node `Qt_5` that exports all global symbols (via the wildcard `*`) and hides symbols starting with `local_`. This is standard and harmless packaging practice for defining the ABI of a shared library. There is no executable code, no network requests, no obfuscation, and no deviation from expected behavior.
</details>
<evidence></evidence>
<summary>Static linker script, no security issues.</summary>
</security_assessment>

[7/8] Reviewing xnview.sh...
+ Reviewed qt5_std_fun_forwarder.lds. Status: SAFE -- Static linker script, no security issues.
LLM auditresponse for xnview.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for the XnView MP application, bundled with the `xnviewmp-system-libs` AUR package. It sets two environment variables: `LD_LIBRARY_PATH` to include the bundled `lib` directory, and `LD_PRELOAD` to load a compatibility shim (`qt5_std_fun_forwarder.so`). These are common practices for binary applications that need specific library versions or function overrides. The script then executes the main binary with `exec`, passing through any arguments. There are no network requests, obfuscated commands, unexpected file operations, or any code that would exfiltrate data or modify the system outside of the application's scope. The use of `LD_PRELOAD` is legitimate for ensuring compatibility with Qt5. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed xnview.sh. Status: SAFE -- Standard launcher script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,410
  Completion Tokens: 4,208
  Total Tokens: 27,618
  Total Cost: $0.002125
  Execution Time: 159.32 seconds

Final Status: SAFE


No issues found.
