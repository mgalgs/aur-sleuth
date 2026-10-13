---
package: stable-diffusion-webui-git
pkgver: 1.9.4.r0.gfeee37d
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15552
completion_tokens: 6254
total_tokens: 21806
cost: 0.002553460
execution_time: 46.95
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T19:09:18Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for upstream VCS package; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD with no malicious or suspicious behavior detected.
  - file: stable-diffusion-webui.service
    status: safe
    summary: Standard systemd unit for launching Stable Diffusion Web UI; no malicious behavior found.
  - file: webui.conf
    status: safe
    summary: Benign config file; insecure optional flags noted as hardening concern only.
  - file: stable-diffusion-webui-git.install
    status: safe
    summary: No malicious behavior; ordinary model installation script with minor packaging hygiene issues.
---

Materializing stable-diffusion-webui-git from local mirror...
Materialized stable-diffusion-webui-git
Analyzing stable-diffusion-webui-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, depends, source, sha1sums, etc.) and defines functions (pkgver, package) that are not executed during `makepkg --printsrcinfo`. There are no command substitutions, external command invocations, or any code that would run when the file is sourced. The `source` array uses a git+ URL, which is normal for a -git package. No malicious top-level activity is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code detected.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, stable-diffusion-webui-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `stable-diffusion-webui-git` package. It declares the package metadata, dependencies, and sources in the normal format. The primary source is the project's own upstream Git repository (`git+https://github.com/AUTOMATIC1111/stable-diffusion-webui.git`), which is expected for a `-git` package. The other sources are local files (`stable-diffusion-webui.service` and `webui.conf`) with pinned SHA-1 checksums. The `SKIP` checksum for the Git source is required and normal for VCS sources. The dependency on `wget` may be used by the application itself for downloading models, but no malicious network behavior, obfuscation, or unexpected file/system operations appear in this packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for upstream VCS package; no malicious indicators.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, stable-diffusion-webui-git.install, stable-diffusion-webui.service...
[1/5] Reviewing PKGBUILD, stable-diffusion-webui-git.install, stable-diffusion-webui.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for upstream VCS package; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package. It clones the package's own upstream repository from `https://github.com/AUTOMATIC1111/stable-diffusion-webui.git`, installs a systemd service file and config file, and copies the upstream source into `/opt/stable-diffusion-webui`. The `SKIP` checksum applies to the VCS source and is normal for `-git` packages. The other two checksums are fixed hashes for the service and config files.

No dangerous behavior is present: there are no unexpected network requests, no obfuscated code, no execution of downloaded content, no exfiltration of local data, and no modification of files outside the package's own application paths. The `chmod` and `rm -rf .git` operations are confined to the package installation directory and are consistent with preparing the application for use.
</details>
<evidence>
</evidence>
<summary>
Standard AUR -git PKGBUILD with no malicious or suspicious behavior detected.
</summary>
</security_assessment>

[2/5] Reviewing stable-diffusion-webui-git.install, stable-diffusion-webui.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD with no malicious or suspicious behavior detected.
[2/5] Reviewing stable-diffusion-webui-git.install, stable-diffusion-webui.service, webui.conf...
LLM auditresponse for stable-diffusion-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd unit file is a standard service definition for launching the Stable Diffusion Web UI. The ExecStart command copies a packaged model file from the read-only system share directory into a configured data directory if it is missing, then launches the application via the project's virtualenv `accelerate` binary. The `DATA_DIR` and `WEBUI_FLAGS` variables come from the standard environment file, and the logic is straightforward.

There is no evidence of malicious behavior: no suspicious network downloads, no obfuscated/encoded commands, no exfiltration of local data, and no tampering with files outside the application's expected data directory. The service runs as a dedicated unprivileged user and the file operations are confined to the package-provided model and the application's own data directory. This is consistent with normal AUR packaging and service configuration.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit for launching Stable Diffusion Web UI; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing stable-diffusion-webui-git.install, webui.conf...
+ Reviewed stable-diffusion-webui.service. Status: SAFE -- Standard systemd unit for launching Stable Diffusion Web UI; no malicious behavior found.
LLM auditresponse for webui.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for stable-diffusion-webui. It sets flags for `accelerate launch`, command-line arguments for the web UI, and a data directory. There is no executable code, no network download, no obfuscation, and no file system manipulation beyond defining the intended data path.

The `WEBUI_FLAGS` include security-relevant upstream options: `--disable-safe-unpickle` and `--enable-insecure-extension-access`, combined with `--listen`. These settings reduce the application's built-in protections and are worth flagging as a hardening concern, especially on an exposed network interface. However, they are legitimate upstream configuration flags and appear to be intentional deployment choices rather than injected malicious behavior. They do not exfiltrate data, execute attacker-controlled code by themselves, or tamper with unrelated system files. Therefore, this file is not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign config file; insecure optional flags noted as hardening concern only.</summary>
</security_assessment>

[4/5] Reviewing stable-diffusion-webui-git.install...
+ Reviewed webui.conf. Status: SAFE -- Benign config file; insecure optional flags noted as hardening concern only.
LLM auditresponse for stable-diffusion-webui-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This .install script is a standard AUR package installation script for stable-diffusion-webui. It creates a dedicated system user, creates application directories under /opt, /var/opt and /etc, runs the upstream project's own `prepare_environment()` function as that user, installs a default config file, and downloads the default Stable Diffusion v1.5 model from huggingface.co using wget. These actions are consistent with the application's stated purpose and the package's declared upstream, not evidence of a supply-chain attack.

A few hygiene issues deserve note, but none are malicious: the freshly downloaded model is not verified against the declared sha1 hash, because the hash is only checked when the file already exists; the apparent typo `mkdir -p "$/etc/${_appname}"` creates an unintended `$/etc/...` directory rather than `/etc/...`; and `post_remove` deletes only /opt/stable-diffusion-webui while leaving other created directories behind. These are packaging quality concerns, not signs of exfiltration, backdoors, obfuscation, or execution of attacker-controlled code.
</details>
<evidence></evidence>
<summary>No malicious behavior; ordinary model installation script with minor packaging hygiene issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed stable-diffusion-webui-git.install. Status: SAFE -- No malicious behavior; ordinary model installation script with minor packaging hygiene issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,552
  Completion Tokens: 6,254
  Total Tokens: 21,806
  Total Cost: $0.002553
  Execution Time: 46.95 seconds

Final Status: SAFE


No issues found.
