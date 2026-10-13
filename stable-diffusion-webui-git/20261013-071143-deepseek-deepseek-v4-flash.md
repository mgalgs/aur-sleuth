---
package: stable-diffusion-webui-git
pkgver: 1.9.4.r0.gfeee37d
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15552
completion_tokens: 8365
total_tokens: 23917
cost: 0.0113774912
execution_time: 51.97
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T07:11:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious or suspicious behavior found.
  - file: stable-diffusion-webui.service
    status: safe
    summary: "Benign systemd unit: copies default model, launches webui. No malicious behavior."
  - file: webui.conf
    status: safe
    summary: Configuration file with risky but legitimate webui flags; no injected malicious behavior.
  - file: stable-diffusion-webui-git.install
    status: safe
    summary: Install hook does expected setup; no malicious behavior found.
---

Materializing stable-diffusion-webui-git from local mirror...
Materialized stable-diffusion-webui-git
Analyzing stable-diffusion-webui-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any top-level code that executes during `makepkg --printsrcinfo`. All variable assignments, source arrays, and checksum arrays are static. No command substitutions, backticks, or dangerous operations (curl, wget, eval) appear in the global scope. The `pkgver()` and `package()` functions are defined but not invoked during this gate. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, stable-diffusion-webui-git.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for AUTOMATIC1111's stable-diffusion-webui. It clones the package's own upstream GitHub repository, installs a systemd service unit and config file, and copies the application source into `/opt/stable-diffusion-webui`. The `SKIP` checksum on the VCS source is expected for `-git` packages, and the service/config checksums are normal pinned checksums. The `noextract` entry for `v1-5-pruned-emaonly.safetensors` is inconsistent because that file is not listed in `source`, but this appears to be a harmless leftover and does not cause any malicious behavior.

There are no suspicious network operations beyond fetching the declared upstream repo, no encoded/obfuscated commands, no execution of downloaded scripts, and no attempts to exfiltrate data or manipulate files outside the application's own scope. The `chmod 775` and `chmod -R gu+rwX,go+r` permissions are broad but consistent with a self-contained web application directory under `/opt` and are not malicious by themselves. Overall, this file follows ordinary AUR packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, stable-diffusion-webui-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package; no malicious behavior found.
[1/5] Reviewing .SRCINFO, stable-diffusion-webui-git.install, stable-diffusion-webui.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR VCS package. The main source is the upstream project repository `git+https://github.com/AUTOMATIC1111/stable-diffusion-webui.git`, plus two local packaging files (`stable-diffusion-webui.service` and `webui.conf`). `sha1sums = SKIP` for the git source is expected and normal for VCS packages; the two local files have pinned checksums.

There are no suspicious commands, no hidden network requests, no obfuscated code, no attempts to exfiltrate data, and no unexpected file operations. The `noextract = v1-5-pruned-emaonly.safetensors` entry is slightly inconsistent because that filename is not listed in the `source` array, but this is at most a packaging metadata inconsistency and does not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/5] Reviewing stable-diffusion-webui-git.install, stable-diffusion-webui.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious or suspicious behavior found.
[2/5] Reviewing stable-diffusion-webui-git.install, stable-diffusion-webui.service, webui.conf...
LLM auditresponse for stable-diffusion-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for running the Stable Diffusion Web UI. It defines a dedicated user/group (`sdwebui`), sets working directory and environment file, and launches the application via the project's own virtualenv. The inline bash logic is benign: it creates a data-directory `models/Stable-diffusion` structure and copies a default model file from the package-installed location to the user data directory on first run, then starts the webui via `accelerate launch`. There are no network fetches, no execution of downloaded content, no obfuscated code, no data exfiltration, and no operations outside the application's own scope (its data and model directories). The service uses standard hardening-ish options such as `UMask=007` and a dedicated non-root user. No security issues identified.
</details>
<evidence>
</evidence>
<summary>
Benign systemd unit: copies default model, launches webui. No malicious behavior.
</summary>
</security_assessment>

[3/5] Reviewing stable-diffusion-webui-git.install, webui.conf...
+ Reviewed stable-diffusion-webui.service. Status: SAFE -- Benign systemd unit: copies default model, launches webui. No malicious behavior.
LLM auditresponse for webui.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain runtime configuration file for stable-diffusion-webui. It defines shell variables containing flags for the application and a data directory path. There is no obfuscation, no embedded code, no network exfiltration, and no attempt to download or execute anything outside the application's normal operation.

The `WEBUI_FLAGS` setting is notable from a security perspective: `--listen` exposes the web UI on the network, `--disable-safe-unpickle` disables protections against malicious pickle model files, and `--enable-insecure-extension-access` permits installing extensions from arbitrary URLs. These are upstream application options and are visible, non-obfuscated configuration choices rather than injected malicious behavior. They weaken the default security posture, so anyone deploying this package should understand the risks, but the file itself does not meet the threshold of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Configuration file with risky but legitimate webui flags; no injected malicious behavior. </summary>
</security_assessment>

[4/5] Reviewing stable-diffusion-webui-git.install...
+ Reviewed webui.conf. Status: SAFE -- Configuration file with risky but legitimate webui flags; no injected malicious behavior.
LLM auditresponse for stable-diffusion-webui-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.install` helper script. It creates a dedicated `sdwebui` system user, configures application directories under `/opt`, `/var/opt`, and `/etc`, and sets ownership/permissions for the package. It downloads the Stable Diffusion v1.5 model from `huggingface.co/runwayml/stable-diffusion-v1-5`, which is the conventional upstream source for this model, using `wget` over HTTPS. The downloaded artifact is a `.safetensors` model file written to `/usr/share/stable-diffusion-webui/models/Stable-diffusion`, not an executable script. The script also invokes the already-installed application's own `modules.launch_utils.prepare_environment()` to set up the Python virtual environment, which is application functionality rather than an injected supply-chain action.

There are hygiene concerns but no evidence of genuinely malicious behavior. The model download is from an unpinned mutable `main` ref, and the stored hash is only used to decide whether to re-download, not verified after download. The line `mkdir -p "$/etc/${_appname}"` is a typo that would create a literal `$` directory relative to the current working directory instead of `/etc/stable-diffusion-webui`. The `post_remove` function removes only `/opt/stable-diffusion-webui`, leaving data under `/var/opt` and configuration under `/etc`. These are packaging flaws, not backdoors, exfiltration, obfuscated commands, or execution of attacker-supplied scripts.
</details>
<evidence></evidence>
<summary>Install hook does expected setup; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed stable-diffusion-webui-git.install. Status: SAFE -- Install hook does expected setup; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,552
  Completion Tokens: 8,365
  Total Tokens: 23,917
  Total Cost: $0.011377
  Execution Time: 51.97 seconds

Final Status: SAFE


No issues found.
