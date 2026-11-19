---
package: stable-diffusion-webui-git
pkgver: 1.9.4.r0.gfeee37d
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15552
completion_tokens: 8532
total_tokens: 24084
cost: 0.002968056
execution_time: 52.96
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T15:09:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for stable-diffusion-webui; no malicious behavior found.
  - file: stable-diffusion-webui.service
    status: safe
    summary: Legitimate systemd service launching stable-diffusion-webui; no malicious or suspicious behavior found.
  - file: webui.conf
    status: safe
    summary: Risky app flags, but ordinary config; no malicious behavior found.
  - file: stable-diffusion-webui-git.install
    status: safe
    summary: Benign AUR install script; downloads official model and runs upstream setup only.
---

Materializing stable-diffusion-webui-git from local mirror...
Materialized stable-diffusion-webui-git
Analyzing stable-diffusion-webui-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code consists only of static variable assignments and array definitions with no command substitutions, backticks, or other execution triggers. The source array uses a git+https URL with a variable expansion that resolves to the package name, which is standard for AUR VCS packages. No dangerous operations (downloads, exfiltrations, evals, etc.) are present in the global scope that could execute during `makepkg --printsrcinfo`. The pkgver() and package() functions are not called during this command and are irrelevant for this gate.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope; safe to run</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope; safe to run
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, stable-diffusion-webui-git.install...
[0/5] Reviewing .SRCINFO, stable-diffusion-webui-git.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `stable-diffusion-webui-git`. It declares the upstream Git repository as the source, along with two regular files (`stable-diffusion-webui.service`, `webui.conf`) that have proper SHA-1 checksums. The `sha1sums = SKIP` entry for the `git+` source is normal and required for VCS sources in AUR packaging. The `noextract` entry refers to a model file expected by the application and is not itself evidence of malicious behavior. Nothing here exfiltrates data, downloads executable code from unexpected hosts, or deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious behavior detected.
</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, stable-diffusion-webui-git.install, PKGBUILD, stable-diffusion-webui.service...
[1/5] Reviewing stable-diffusion-webui-git.install, PKGBUILD, stable-diffusion-webui.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for the AUTOMATIC1111 stable-diffusion-webui git package. It clones the official upstream GitHub repository, installs a systemd service unit and a default config file, and copies the application source into /opt/stable-diffusion-webui. The rm -rf commands are scoped to the package build directory and the packaged application directory, which is normal cleanup during packaging. No network requests beyond the declared upstream git source, no encoded/obfuscated commands, no execution of downloaded scripts, and no access to sensitive host data are present.

The `SKIP` checksum on the git source is expected for VCS packages, and the mutable branch/tag tracking is normal for a `-git` package. The systemd service and configuration file handling are consistent with the package's stated purpose. There is no evidence of injected malicious behavior or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD for stable-diffusion-webui; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing stable-diffusion-webui-git.install, PKGBUILD, stable-diffusion-webui.service, webui.conf...
[2/5] Reviewing stable-diffusion-webui-git.install, stable-diffusion-webui.service, webui.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for stable-diffusion-webui; no malicious behavior found.
LLM auditresponse for stable-diffusion-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service unit is a standard launcher for stable-diffusion-webui. It copies a model from the package's installed model directory into the configured data directory and then starts the application from the package virtualenv with `accelerate launch launch.py`. All operations are confined to the application's own package paths and user-writable data directory.

No network requests, code downloads, obfuscation, eval-like constructs, or exfiltration of sensitive data are present. The use of an EnvironmentFile and shell parameter expansion (e.g., DATA_DIR, WEBUI_FLAGS) is normal for configurable services and does not constitute malicious behavior. The file is consistent with legitimate AUR packaging.
</details>
<evidence>
</evidence>
<summary>Legitimate systemd service launching stable-diffusion-webui; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing stable-diffusion-webui-git.install, webui.conf...
+ Reviewed stable-diffusion-webui.service. Status: SAFE -- Legitimate systemd service launching stable-diffusion-webui; no malicious or suspicious behavior found.
LLM auditresponse for webui.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for stable-diffusion-webui. It sets command-line flags for `accelerate launch` and the webui itself, plus a data directory. There is no code, no network request, no download, no obfuscation, no file tampering, and no exfiltration of local data. It is consistent with an ordinary AUR package configuration file.

The flags `--disable-safe-unpickle` and `--enable-insecure-extension-access` are a notable hardening concern because they disable upstream safety protections and can increase the risk of code execution from untrusted model files or extensions. However, these are legitimate upstream webui options being configured for the application's intended functionality, not injected malicious behavior. They should be reviewed and likely removed unless explicitly required, but they do not by themselves make this file a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Risky app flags, but ordinary config; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing stable-diffusion-webui-git.install...
+ Reviewed webui.conf. Status: SAFE -- Risky app flags, but ordinary config; no malicious behavior found.
LLM auditresponse for stable-diffusion-webui-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a normal AUR package install script for stable-diffusion-webui. It creates a dedicated system user, sets up directories and permissions, runs the upstream environment preparation step as that user, installs a config file, and downloads the official v1.5 model from huggingface.co into the package's model directory. I see no exfiltration, obfuscation, backdoor, or execution of code from an unexpected host. The downloaded model is the project's own upstream asset and is used as data by the application.

A few hygiene/bug notes that do not change the decision: the line `mkdir -p "$/etc/${_appname}"` appears to be a typo for `/etc/${_appname}` and will create an unintended relative path; the model's SHA1 is only compared when the file already exists, not after a fresh download, so the declared hash does not actually verify new downloads; and `post_remove` deletes `/opt/stable-diffusion-webui` with `rm -rf`, which is within the package's own install scope. None of these indicate malicious intent.
</details>
<evidence>
</evidence>
<summary>
Benign AUR install script; downloads official model and runs upstream setup only.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed stable-diffusion-webui-git.install. Status: SAFE -- Benign AUR install script; downloads official model and runs upstream setup only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,552
  Completion Tokens: 8,532
  Total Tokens: 24,084
  Total Cost: $0.002968
  Execution Time: 52.96 seconds

Final Status: SAFE


No issues found.
