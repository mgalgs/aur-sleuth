---
package: mimo-desktop-bin
pkgver: 26.1105.50703_202
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18446
completion_tokens: 6865
total_tokens: 25311
cost: 0.002928016
execution_time: 62.32
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T00:12:16Z
file_verdicts:
  - file: envguard.c
    status: safe
    summary: Safe compatibility workaround; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, all sources pinned and official.
  - file: mimo-desktop-bin.sh
    status: safe
    summary: Benign launcher script using package-local LD_PRELOAD guard; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate packaging of official binary, no malicious code.
  - file: mimo-desktop-bin.install
    status: safe
    summary: Routine sandbox setuid and AppArmor profile management; no malicious behavior found.
---

Materializing mimo-desktop-bin from local mirror...
Materialized mimo-desktop-bin
Analyzing mimo-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and function declarations at the top level. No command substitutions, evals, or backtick executions are present outside of the `build()` and `package()` functions, which are not invoked by `makepkg --printsrcinfo`. All assignments (e.g., `pkgver`, `source`, `sha256sums`) are safe string operations. There is no risk of executing arbitrary code during the sourcing step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, envguard.c...
[0/5] Reviewing .SRCINFO, envguard.c, PKGBUILD...
LLM auditresponse for envguard.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `envguard.c` is a C source file that overrides the `execvp` function to filter out environment variables exceeding ~131 KB in length. This workaround addresses an upstream E2BIG bug in the Xiaomi MiMo Desktop application, where oversized environment strings cause `execvp` failures. The code is transparent, well-documented, and performs only environment filtering. It does not exfiltrate data, download or execute remote code, modify system files, or contain obfuscated payloads. While intercepting `execvp` is an invasive technique, it is a standard compatibility patch in this context and not malicious.
</details>
<evidence></evidence>
<summary>Safe compatibility workaround; no malicious behavior.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, envguard.c, PKGBUILD, mimo-desktop-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, mimo-desktop-bin.install...
+ Reviewed envguard.c. Status: SAFE -- Safe compatibility workaround; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file for `mimo-desktop-bin` is a standard AUR metadata file. It declaratively defines the package's name, version, dependencies, and source locations. All external source URLs point to the project's own official CDN (`mimocode-cdn.xiaomimimo.com`) using HTTPS. All provided sources are pinned with explicit SHA-256 checksums, and none are set to `SKIP`. The listed dependencies (e.g., `gtk3`, `alsa-lib`, `libsecret`) are normal system libraries expected for a proprietary desktop application. The file contains no executable instructions, obfuscated code, unexpected network destinations, or any behavior that deviates from standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, all sources pinned and official.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, mimo-desktop-bin.install, mimo-desktop-bin.sh...
[2/5] Reviewing PKGBUILD, mimo-desktop-bin.install, mimo-desktop-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, all sources pinned and official.
LLM auditresponse for mimo-desktop-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher script that sets `LD_PRELOAD` to an `envguard.so` library shipped with the package, then executes the official application binary. The path is a fixed system path in `/usr/lib/mimo-desktop-bin/`, which is consistent with legitimate packaging of a helper shim. There are no network requests, no encoded or obfuscated commands, no downloads, and no access to unrelated user data. Using `LD_PRELOAD` can always be considered a system-level trust decision, but here it appears to be an intentional environment-restriction mechanism for the package's own binary and does not exhibit malicious behavior. The script is consistent with routine AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Benign launcher script using package-local LD_PRELOAD guard; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, mimo-desktop-bin.install...
+ Reviewed mimo-desktop-bin.sh. Status: SAFE -- Benign launcher script using package-local LD_PRELOAD guard; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward repackaging of the official Xiaomi MiMo Linux build. The source is fetched from the project&#x27;s own CDN (`mimocode-cdn.xiaomimimo.com`) with a pinned version and checksums verified. The build step compiles a small shared library (`envguard.so`) from provided source code to work around an upstream environment variable size limitation — this is a legitimate workaround, not a backdoor. The package step extracts the .deb, installs the application files, icons, desktop entry, and the helper library and wrapper script. All operations are confined to the application&#x27;s own directories (`/opt`, `/usr/lib/${pkgname}`, `/usr/bin`, `/usr/share`) and follow standard packaging practices. There are no hidden network requests, obfuscated commands, or exfiltration attempts. The use of `magick` to resize icons is a standard build dependency. The checksums for all sources are provided and not skipped. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Legitimate packaging of official binary, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing mimo-desktop-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate packaging of official binary, no malicious code.
LLM auditresponse for mimo-desktop-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs two routine, package-scoped tasks:

1. It conditionally sets the setuid bit on the bundled Chromium sandbox helper (`/opt/Xiaomi MiMo/chrome-sandbox`) only when unprivileged user namespaces are unavailable, and otherwise sets it to 0755. This is standard practice for Electron/Chromium-based applications and matches upstream Debian packaging; it does not download or execute anything.

2. It installs a bundled AppArmor profile into `/etc/apparmor.d/` and loads it with `apparmor_parser` when AppArmor is enabled and the profile passes a dry-run parse. On removal it deletes the profile. This is a normal system-integration step for the application and is not outside the package's declared scope.

There is no obfuscation, no network access, no eval/base64, no credential access, and no modification of unrelated files. The only elevated-privilege operation is the setuid bit on the application's own sandbox helper, which is expected behavior for Chromium-based software. The unconditional `|| true` guards mean failures do not silently alter unrelated state. This is SAFE.
</details>
<evidence>
</evidence>
<summary>
Routine sandbox setuid and AppArmor profile management; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed mimo-desktop-bin.install. Status: SAFE -- Routine sandbox setuid and AppArmor profile management; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,446
  Completion Tokens: 6,865
  Total Tokens: 25,311
  Total Cost: $0.002928
  Execution Time: 62.32 seconds

Final Status: SAFE


No issues found.
