---
package: proton-ge-custom-bin
pkgver: GE_Proton11_8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28400
completion_tokens: 8362
total_tokens: 36762
cost: 0.004106284
execution_time: 55.62
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:04:34Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config checking upstream Git tags. No malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums and official upstream sources; no malicious behavior found.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM nice limit for games group; no malicious behavior found.
  - file: pleasenote.install
    status: safe
    summary: Informational messages only, no suspicious behavior.
  - file: launcher.sh
    status: safe
    summary: Benign Proton launcher script; no malicious or suspicious behavior found.
  - file: user_settings.py
    status: safe
    summary: Inert commented configuration template; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior detected; standard pinned PKGBUILD with minor permission note.
---

Materializing proton-ge-custom-bin from local mirror...
Cloning https://aur.archlinux.org/proton-ge-custom-bin.git...
Cloned proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD is safe. All top-level content consists of variable assignments, arrays, and function definitions. There are no command substitutions, no `eval`, no `curl`/`wget` invocations, no encoded/obfuscated payloads, and no top-level file modifications or network activity. The `build()` and `package()` functions contain file operations, but those functions are not executed during `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate.

The source URLs point to the project's own GitHub releases, and checksums are provided; even if checksums were skipped, that would not make this command unsafe because no sources are fetched or verified during `--printsrcinfo`. Based on the top-level scope only, there is no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
No top-level execution risk; printsrcinfo safely sources only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; printsrcinfo safely sources only variable definitions.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR packaging repositories. It lists common build artifacts (`pkg/`, `src/`, `*.tar.zst`, `*.tar.gz`, `*.tar.gz.part`) and editor/IDE directories (`.trunk/`, `.vscode/`, `.idea`), as well as a shellcheck configuration file. There are no executable commands, network requests, encoded payloads, or any other suspicious content. The file serves its intended purpose of excluding irrelevant files from version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used by AUR helpers to determine the latest upstream version of a package. It instructs nvchecker to query the package's own upstream Git repository (`https://github.com/GloriousEggroll/proton-ge-custom.git`) and parse release tags matching a specific `GE-Proton` version pattern. This is normal, routine packaging metadata for a `-bin` package that tracks upstream releases.

There are no network fetches of executable code, no obfuscated commands, no file system manipulation, and no exfiltration. The configuration simply defines how to check for the latest upstream tag. The tag pattern is unpinned (tracking latest tags), which is a reproducibility/hygiene consideration, but it is not malicious and is common for packages that intend to track upstream releases.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config checking upstream Git tags. No malicious behavior.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, launcher.sh...
[2/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config checking upstream Git tags. No malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file, not an executable script. It declares package metadata, dependencies, options, backup paths, and source entries with pinned sha512 checksums. The two downloaded tarballs come directly from the project's official GitHub releases page (`https://github.com/GloriousEggroll/proton-ge-custom/releases/download/`), which is the expected upstream source for this package.

There is no obfuscated code, no suspicious network behavior, no `eval`, `curl`, `wget`, or base64 usage, and no file operations beyond standard packaging metadata. The checksums are provided rather than skipped, and the package dependencies and optdepends are consistent with a Proton compatibility tool for Steam. No evidence of injected malicious code or supply-chain attack behavior exists in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with pinned checksums and official upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh, pam_limits.conf...
[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums and official upstream sources; no malicious behavior found.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PAM limits configuration snippet granting the `games` group a negative nice value limit (-11), allowing game processes to run with elevated scheduler priority. This is a standard and expected tuning for a gaming-oriented package such as proton-ge-custom-bin. It does not modify unrelated system files, exfiltrate data, download or execute code, or contain any obfuscation or suspicious commands. The change is limited to the stated purpose of supporting gaming workloads and is consistent with routine packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard PAM nice limit for games group; no malicious behavior found.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, launcher.sh...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM nice limit for games group; no malicious behavior found.
[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` contains only informational echo statements in the `post_install()` and `post_upgrade()` functions. It advises the user about configuring niceness limits for Wine/Proton and suggests adding themselves to the `games` group. There are no commands that modify system files, fetch external resources, execute arbitrary code, or perform any other potentially malicious actions. The content is entirely benign and consistent with standard packaging practices for such a package.
</details>
<evidence></evidence>
<summary>Informational messages only, no suspicious behavior.</summary>
</security_assessment>

[5/8] Reviewing PKGBUILD, launcher.sh...
+ Reviewed pleasenote.install. Status: SAFE -- Informational messages only, no suspicious behavior.
[5/8] Reviewing PKGBUILD, launcher.sh, user_settings.py...
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Proton launcher helper script. It sets environment variables commonly required by Proton (such as `STEAM_COMPAT_DATA_PATH`, `STEAM_COMPAT_CLIENT_INSTALL_PATH`, and `DXVK_STATE_CACHE_PATH`), creates the associated user-local directories with `install -d`, prints help/environment information, and then invokes the configured Proton binary with the user-supplied arguments.

No malicious behavior was found. There are no network requests, no downloads, no `eval`, `base64`, obfuscated commands, credential access, or unexpected file operations. The script only operates within user-controlled prefix and cache directories and executes the package's own Proton binary. The default `_proton=echo` is clearly a placeholder that is expected to be replaced during packaging, and the runtime behavior is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign Proton launcher script; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, user_settings.py...
+ Reviewed launcher.sh. Status: SAFE -- Benign Proton launcher script; no malicious or suspicious behavior found.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Proton GE. It contains a Python dictionary named `user_settings` where every entry is commented out. The entries are documented environment variables used to configure Proton, DXVK, Wine, and related components (for example `PROTON_NO_D3D12`, `WINE_FULLSCREEN_FSR`, `DXVK_HUD`, `WINEDEBUG`). No code is executed: the settings are inert comments and a single empty placeholder dictionary.

There are no network requests, no downloads, no obfuscated or encoded commands, no file manipulation, and no references to external hosts. The content is entirely consistent with standard Proton GE user configuration documentation. All variable names and default value descriptions match legitimate upstream Proton/Wine/DXVK options. No supply-chain attack indicators were found.
</details>
<evidence>
</evidence>
<summary>
Inert commented configuration template; no malicious behavior detected.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed user_settings.py. Status: SAFE -- Inert commented configuration template; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The upstream Proton-Ge tarballs are downloaded from the project's official GitHub releases using pinned versions, and every source has a sha512 checksum (no `SKIP` entries). The `build()` and `package()` functions only perform normal operations: patching a launcher script and `.vdf` file with `sed`, stripping bundled Wine binaries, moving files into `$pkgdir`, and installing configuration files.

There is no obfuscated code, no `eval`/`base64`/`curl | bash`, no unexpected network access, and no exfiltration or backdoor behavior. The installation of `pam_limits.conf` into `/etc/security/limits.d/` is a routine resource-limit configuration for a gaming package. One minor packaging consideration is that `user_settings.py` is installed with mode `0775` and group `50` (`games`), making it group-writable under `/usr/share`; on a multi-user system this could allow local `games` group members to modify Proton settings, but this is a hygiene/permission concern rather than evidence of an injected supply-chain attack. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior detected; standard pinned PKGBUILD with minor permission note.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior detected; standard pinned PKGBUILD with minor permission note.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,400
  Completion Tokens: 8,362
  Total Tokens: 36,762
  Total Cost: $0.004106
  Execution Time: 55.62 seconds

Final Status: SAFE


No issues found.
