---
package: gaze-omarchy-bin
pkgver: 0.3.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10125
completion_tokens: 2598
total_tokens: 12723
cost: 0.000428988
execution_time: 35.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T19:08:16Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary wrapper package with verified checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no issues found.
  - file: gaze-omarchy-bin.install
    status: safe
    summary: "Safe: informational and safety scripts, no malicious code."
---

Materializing gaze-omarchy-bin from local mirror...
Materialized gaze-omarchy-bin
Analyzing gaze-omarchy-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of static variable assignments and a function definition. No command substitutions, backticks, `eval`, `curl`, `wget`, or any other code execution constructs appear outside of the `package()` function. Since `makepkg --printsrcinfo` only sources the top-level scope and does not run any of the packaging functions, there is no risk of executing malicious code during this step.
</details>
<evidence>
</evidence>
<summary>No dangerous code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, gaze-omarchy-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary wrapper package for the gaze-omarchy application. It downloads a prebuilt `.pkg.tar.zst` archive from the project's official domain (`packages.gundulabs.com`) over HTTPS, verifies it with a pinned SHA-256 checksum, and extracts it into the package directory. The `package()` function then removes pacman metadata files (`.PKGINFO`, `.MTREE`, `.INSTALL`) that are part of the upstream binary package, which is expected hygiene for a wrapper package that re-declares its own install script via `install=`. No obfuscation, no unexpected network destinations, no dangerous commands like `eval`, `curl`, or `wget` outside of standard `bsdtar` extraction. The checksum is not `SKIP`, so the source is verified. There are no supply-chain red flags or injected malicious behaviors.
</details>
<evidence></evidence>
<summary>Standard binary wrapper package with verified checksums.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, gaze-omarchy-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary wrapper package with verified checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file describing the `gaze-omarchy-bin` package. It contains typical fields: package description, version, dependencies (including `gaze` and `jq`), license, and source information. The source is a prebuilt binary package from `packages.gundulabs.com`, which is consistent with the project's stated URL (`gaze.gundulabs.com`). The checksum (`sha256sums`) is provided and pinned, not skipped, so the download is verifiable. There are no commands, scripts, network requests, or obfuscated content in this file. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no issues found.</summary>
</security_assessment>

[2/3] Reviewing gaze-omarchy-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no issues found.
LLM auditresponse for gaze-omarchy-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` file for the `gaze-omarchy-bin` package. It contains three functions: `post_install`, `post_upgrade`, and `pre_remove`. The first two simply display a usage message via a heredoc. The `pre_remove` function checks whether the plugin symlink exists in users&#39; `~/.config/omarchy/plugins/` directories; if it does, it prints a warning and exits with an error to prevent removal while the locker is still active. This is a safety check consistent with the package&#39;s purpose. There are no network requests, downloads, execution of external code, obfuscation, exfiltration, or modifications to files outside the application&#39;s own configuration scope. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Safe: informational and safety scripts, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed gaze-omarchy-bin.install. Status: SAFE -- Safe: informational and safety scripts, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,125
  Completion Tokens: 2,598
  Total Tokens: 12,723
  Total Cost: $0.000429
  Execution Time: 35.83 seconds

Final Status: SAFE


No issues found.
