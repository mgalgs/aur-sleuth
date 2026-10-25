---
package: qemu-apple-t8030-git
pkgver: 1.0.0rc1.r125695.gcc4302a991
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 38013
completion_tokens: 7884
total_tokens: 45897
cost: 0.004894071
execution_time: 82.85
files_reviewed: 10
files_skipped: 2
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T23:07:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no executable or malicious content.
  - file: 0001-mt-spi-middle-click-home.patch
    status: safe
    summary: Harmless upstream patch adding input mapping.
  - file: 0002-boot-splash-env-override.patch
    status: safe
    summary: "Safe: user-configurable boot splash with validation."
  - file: LICENSE.MIT
    status: safe
    summary: Standard MIT license, no malicious content.
  - file: boot-splash.png
    status: skipped
    summary: "Skipping binary file: boot-splash.png"
  - file: README.md
    status: safe
    summary: README.md contains only documentation, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD. No supply chain risk evident.
  - file: qemu-apple-t8030-set-boot-splash
    status: safe
    summary: Safe utility script for setting boot splash image.
  - file: qemu-apple-t8030.svg
    status: skipped
    summary: "Skipping binary file: qemu-apple-t8030.svg"
  - file: qemu-apple-t8030.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: vm-args.example.sh
    status: safe
    summary: Benign example configuration file for QEMU launcher.
  - file: qemu-apple-t8030
    status: safe
    summary: Standard QEMU launcher script, no malicious behavior.
---

Materializing qemu-apple-t8030-git from local mirror...
Materialized qemu-apple-t8030-git
Analyzing qemu-apple-t8030-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions. There are no command substitutions, backtick executions, eval calls, network requests, or any other code execution at the global scope that would be invoked when `makepkg --printsrcinfo` sources the file. The potentially dangerous operations (git commands, patching, building, installing) are contained within the `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not executed during this step. The SHA256SUMS entries with 'SKIP' are standard for VCS sources and do not execute any code.
</details>
<evidence></evidence>
<summary>No top-level code execution; all operations scoped to functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; all operations scoped to functions.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, 0002-boot-splash-env-override.patch...
[0/12] Reviewing .SRCINFO, 0002-boot-splash-env-override.patch, 0001-mt-spi-middle-click-home.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata descriptor for the AUR package `qemu-apple-t8030-git`. It contains only declarative information: package name, version, dependencies, sources, and checksums. There is no executable code, no network requests beyond the declared upstream source URLs (GitHub, GitLab), and no obfuscated or suspicious content. The SHA-256 checksums are set to SKIP for the VCS (git) sources, which is standard and expected for `-git` packages. The remaining non-VCS source files have pinned checksums. There is no evidence of malicious behavior such as data exfiltration, backdoors, or code injection. The file is consistent with normal AUR packaging practices and is safe.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata, no executable or malicious content.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, 0002-boot-splash-env-override.patch, 0001-mt-spi-middle-click-home.patch, LICENSE.MIT...
[1/12] Reviewing 0002-boot-splash-env-override.patch, 0001-mt-spi-middle-click-home.patch, LICENSE.MIT...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no executable or malicious content.
LLM auditresponse for 0001-mt-spi-middle-click-home.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the Apple Silicon multi-touch SPI controller in a QEMU fork to map the middle mouse button to the Home key (F6). It uses standard QEMU input APIs (`qemu_input_event_send_key_qcode`) and bottom halves for asynchronous execution. There is no obfuscation, no network access, no file system manipulation, and no execution of external code. The change is purely functional, implementing expected emulated device behavior. No security concerns are present.
</details>
<evidence></evidence>
<summary>Harmless upstream patch adding input mapping.</summary>
</security_assessment>

[1/12] Reviewing 0002-boot-splash-env-override.patch, 0001-mt-spi-middle-click-home.patch, LICENSE.MIT, PKGBUILD...
[2/12] Reviewing 0002-boot-splash-env-override.patch, LICENSE.MIT, PKGBUILD...
+ Reviewed 0001-mt-spi-middle-click-home.patch. Status: SAFE -- Harmless upstream patch adding input mapping.
LLM auditresponse for 0002-boot-splash-env-override.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a benign feature that allows the user to override the QEMU boot splash image by setting the `QEMU_T8030_BOOT_SPLASH` environment variable to a PNG file path. It validates that the file exists and is a regular file, and checks that the image is an 8-bit RGBA non-interlaced PNG before drawing it. There is no network activity, no execution of arbitrary code, no exfiltration of data, and no deviation from normal QEMU functionality. The change is purely a convenience for users who want a custom boot splash.
</details>
<evidence></evidence>
<summary>Safe: user-configurable boot splash with validation.</summary>
</security_assessment>

[2/12] Reviewing 0002-boot-splash-env-override.patch, LICENSE.MIT, PKGBUILD, README.md...
[3/12] Reviewing LICENSE.MIT, PKGBUILD, README.md...
+ Reviewed 0002-boot-splash-env-override.patch. Status: SAFE -- Safe: user-configurable boot splash with validation.
LLM auditresponse for LICENSE.MIT:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no instructions. It is a static license file commonly found in open-source packages. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard MIT license, no malicious content.</summary>
</security_assessment>

[3/12] Reviewing LICENSE.MIT, PKGBUILD, README.md, boot-splash.png...
[4/12] Reviewing PKGBUILD, README.md, boot-splash.png...
+ Reviewed LICENSE.MIT. Status: SAFE -- Standard MIT license, no malicious content.
[4/12] Reviewing PKGBUILD, README.md, boot-splash.png, qemu-apple-t8030...
[5/12] Reviewing PKGBUILD, README.md, qemu-apple-t8030...
! Reviewed boot-splash.png. Status: SKIPPED -- Skipping binary file: boot-splash.png
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plaintext README.md that documents the package purpose, usage, and build differences. It contains no executable code, no scripts, no network requests, no obfuscation, and no system modifications. It only provides informational text about the emulator and how to use it. There are no indicators of malicious behavior.
</details>
<evidence></evidence>
<summary>README.md contains only documentation, no security concerns.</summary>
</security_assessment>

[5/12] Reviewing PKGBUILD, README.md, qemu-apple-t8030, qemu-apple-t8030-set-boot-splash...
[6/12] Reviewing PKGBUILD, qemu-apple-t8030, qemu-apple-t8030-set-boot-splash...
+ Reviewed README.md. Status: SAFE -- README.md contains only documentation, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR build script for an unofficial git version of a QEMU fork targeting Apple t8030 (iPhone 11) emulation. It contains no malicious elements.

The file strictly performs standard packaging operations:
- All source downloads (`git+https`) are from the project's officially declared upstream repositories (GitHub/GitLab).
- The `prepare()` function patches the source and removes upstream branding as explicitly required by the upstream's branding notice, which aligns with the package's stated purpose.
- The `build()` and `package()` functions use standard build systems (`configure`, `ninja`, `install`) and carefully disable network downloads (`--disable-download`).
- There are no commands that exfiltrate data, download and execute code from unexpected hosts, use obfuscated/encoded routines (no `eval`, `base64`, `curl`, or `wget`), or tamper with system files outside the package scope.

Standard AUR practices such as `SKIP` checksums for VCS sources and an unpinned `master` branch are present, but these are explicitly described as expected for `-git` packages in the audit criteria and are not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD. No supply chain risk evident.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, qemu-apple-t8030, qemu-apple-t8030-set-boot-splash, qemu-apple-t8030.desktop...
[7/12] Reviewing qemu-apple-t8030, qemu-apple-t8030-set-boot-splash, qemu-apple-t8030.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD. No supply chain risk evident.
LLM auditresponse for qemu-apple-t8030-set-boot-splash:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a utility for setting a custom boot splash image for the qemu-apple-t8030 emulator. It provides expected functionality: processing an image with ImageMagick, downloading a GitHub avatar when `--github` is used, and managing the splash file in the user's data directory. All operations are reasonable for the stated purpose:

- Network requests fetch only from `github.com/USER.png`, which is a standard public GitHub avatar URL, not an unexpected or malicious host.
- Image processing uses `magick` (ImageMagick) for legitimate resizing and formatting.
- Temporary files are cleaned up via a trap.
- No obfuscated code, hidden commands, or data exfiltration is present.
- The script does not execute downloaded content; it only processes it as an image file.

The unpinned download from GitHub (mutable avatar URL) is a minor supply‑chain hygiene consideration but is not malicious—the avatar is an image, not an executable, and it aligns with the script’s documented feature. The script passes a brief `-h` help and does nothing beyond its intended purpose.
</details>
<evidence></evidence>
<summary>Safe utility script for setting boot splash image.</summary>
</security_assessment>

[7/12] Reviewing qemu-apple-t8030, qemu-apple-t8030-set-boot-splash, qemu-apple-t8030.desktop, qemu-apple-t8030.svg...
[8/12] Reviewing qemu-apple-t8030, qemu-apple-t8030.desktop, qemu-apple-t8030.svg...
+ Reviewed qemu-apple-t8030-set-boot-splash. Status: SAFE -- Safe utility script for setting boot splash image.
[9/12] Reviewing qemu-apple-t8030, qemu-apple-t8030.desktop...
! Reviewed qemu-apple-t8030.svg. Status: SKIPPED -- Skipping binary file: qemu-apple-t8030.svg
[9/12] Reviewing qemu-apple-t8030, qemu-apple-t8030.desktop, vm-args.example.sh...
LLM auditresponse for qemu-apple-t8030.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a QEMU emulator. It contains no executable code, network requests, obfuscated content, or unexpected system operations. The `Exec` line runs the `qemu-apple-t8030` binary, which is the package's own emulator. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[10/12] Reviewing qemu-apple-t8030, vm-args.example.sh...
+ Reviewed qemu-apple-t8030.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for vm-args.example.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an example configuration file for a QEMU-based iOS emulator (iPhone 11 / n104ap). It simply defines placeholder paths and constructs QEMU command-line arguments via a local shell function `ns`. There are no network requests, no encoded or obfuscated commands, no unexpected file operations, and no system modifications. The file is intended to be copied and edited by the user, and all operations are standard for launching a QEMU VM with custom firmware dumps. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>
Benign example configuration file for QEMU launcher.
</summary>
</security_assessment>

[11/12] Reviewing qemu-apple-t8030...
+ Reviewed vm-args.example.sh. Status: SAFE -- Benign example configuration file for QEMU launcher.
LLM auditresponse for qemu-apple-t8030:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard QEMU launcher for the Apple t8030 emulator. It sources user-provided configuration files (`vm-args.sh` and optionally `companion.sh`) and starts a QEMU instance with appropriate arguments. There are no network requests (`curl`/`wget`), obfuscated code (`eval`/`base64`), file exfiltration, or unexpected system modifications. The Python one-liners used for socket checks and window positioning are benign and operate exclusively on local data. The companion script and VM args are intended to be user-supplied (not shipped by the package) and are executed as part of the normal workflow; this is not a supply-chain injection. All behavior is consistent with the package&#39;s stated purpose.
</details>
<evidence></evidence>
<summary>Standard QEMU launcher script, no malicious behavior.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed qemu-apple-t8030. Status: SAFE -- Standard QEMU launcher script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: boot-splash.png, qemu-apple-t8030.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 38,013
  Completion Tokens: 7,884
  Total Tokens: 45,897
  Total Cost: $0.004894
  Execution Time: 82.85 seconds

Final Status: SAFE


No issues found.


Audit Skips:

boot-splash.png: [SKIPPED] Skipping binary file: boot-splash.png

qemu-apple-t8030.svg: [SKIPPED] Skipping binary file: qemu-apple-t8030.svg
