---
package: mpv-git
pkgver: 0.41.0_769_g2d5dfb343a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 54384
completion_tokens: 9229
total_tokens: 63613
cost: 0.00655578
execution_time: 102.54
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T07:28:39Z
file_verdicts:
  - file: mpv.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: find-deps.py
    status: safe
    summary: Legitimate dependency resolution script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for mpv-git, no malware indicators.
  - file: src/mpv/TOOLS/gen-osd-font.sh
    status: safe
    summary: Legitimate font generation script, no security issues.
  - file: src/mpv/TOOLS/gen-mpv-desktop.py
    status: safe
    summary: Helper script updating desktop entry protocols; no security issues.
  - file: src/mpv/TOOLS/file2string.py
    status: safe
    summary: Standard build utility; no security issues.
  - file: src/mpv/etc/mpv.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: src/mpv/TOOLS/dylib_unhell.py
    status: safe
    summary: Standard macOS library bundling script, no malicious behavior.
  - file: src/mpv/TOOLS/gen-fluent-glyphs.py
    status: safe
    summary: "Safe: pinned Microsoft repo icons, no downloaded code execution or exfiltration."
  - file: src/mpv/TOOLS/osxbundle/meson.build
    status: safe
    summary: Standard build system snippet for macOS icon bundling.
  - file: src/mpv/TOOLS/gen-interface-changes.py
    status: safe
    summary: Standard script for mpv documentation generation, no security issues.
  - file: src/mpv/player/lua/ytdl_hook.lua
    status: safe
    summary: Standard mpv ytdl hook, no malicious behavior found.
  - file: src/mpv/TOOLS/docutils-wrapper.py
    status: safe
    summary: Legitimate build helper; no suspicious activity.
---

Cloning https://aur.archlinux.org/mpv-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fc1kqcny...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fc1kqcny
Analyzing mpv-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fc1kqcny) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging constructs. Top-level code iterates over an array of feature flags to set dependencies and meson flags — no command execution or external network requests beyond accessing the declared variables. The `pkgver()` function runs `git describe` inside the (already cloned) source directory, which is expected behavior for a VCS package and does not fetch or execute untrusted content. The `source` array points to the official mpv-player/mpv GitHub repository via git, and a single `find-deps.py` file with a valid SHA-256 checksum. No obfuscated code, unusual encodings, or suspicious network destinations are present. Running the requested commands is safe.
</details>
<summary>Standard AUR git package, no malicious code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR git package, no malicious code found.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, mpv.install...
[0/3] Reviewing PKGBUILD, mpv.install, find-deps.py...
LLM auditresponse for mpv.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.install` script that only prints informational messages during pre-install and pre-upgrade steps. `pre_install()` informs users about optional features. `pre_upgrade()` warns about a missing optional dependency (`libxpresent`) under specific conditions. There are no network requests, no commands that execute external code, no file modifications, no obfuscation, and no deviation from normal packaging practices. The content is entirely benign and serves only to communicate with the user.
</details>
<summary>
Informational install script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, find-deps.py...
+ Reviewed mpv.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for find-deps.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard dependency resolution helper that uses `ldd`, `pacman`, and `pactree` to find package dependencies for given binaries. It unsets `LD_LIBRARY_PATH` and `LD_PRELOAD` to avoid interference from fakeroot — this is a normal precaution in packaging contexts. There are no network requests, no obfuscated code, no execution of untrusted content, and no manipulation of system files outside of standard query commands. The script performs only local queries and does not introduce any supply-chain attack vectors.
</details>
<summary>Legitimate dependency resolution script with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed find-deps.py. Status: SAFE -- Legitimate dependency resolution script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for building `mpv` from its upstream git repository. The source is `git+https://github.com/mpv-player/mpv`, which is the official upstream. The only other source is a local helper script `find-deps.py` with a valid sha256 checksum, used to auto-detect dynamic library dependencies after installation. No obfuscated code, remote code execution, data exfiltration, or unexpected network requests are present. The `pkgver()` function uses `git describe` from the cloned repo, which is normal for VCS packages. The build and install steps use `meson` and standard `meson install`, with no unusual commands. The dependency auto-detection via `find-deps.py` is a pragmatic but uncommon practice; however, the script is bundled with the package (not fetched at build time) and its checksum is pinned, so this does not introduce a supply-chain risk. All behavior aligns with legitimate packaging for a -git variant.
</details>
<summary>
Standard AUR PKGBUILD for mpv-git, no malware indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for mpv-git, no malware indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 931 files available for selection; offering the 50 highest-priority to the model. 816 lower-priority file(s) were not offered.
LLM response for file selection:
src/mpv/TOOLS/osxbundle/meson.build
src/mpv/etc/mpv.desktop
src/mpv/player/lua/ytdl_hook.lua
src/mpv/TOOLS/gen-osd-font.sh
src/mpv/TOOLS/file2string.py
src/mpv/TOOLS/gen-mpv-desktop.py
src/mpv/TOOLS/gen-fluent-glyphs.py
src/mpv/TOOLS/gen-interface-changes.py
src/mpv/TOOLS/dylib_unhell.py
src/mpv/TOOLS/docutils-wrapper.py
Decided to review 10 additional files: src/mpv/TOOLS/osxbundle/meson.build, src/mpv/etc/mpv.desktop, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/TOOLS/file2string.py, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py...
[0/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/TOOLS/gen-osd-font.sh, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py...
LLM auditresponse for gen-osd-font.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `gen-osd-font.sh` is a standard build helper that generates an OpenType font from a FontForge source directory. It calls `fontforge` with a simple Python command to open the source file (`TOOLS/mpv-osd-symbols.sfdir`) and generate the output (`sub/osd_font.otf`). There is no obfuscation, no network activity, no execution of untrusted code, and no deviation from normal packaging practices. All paths are relative and local to the project tree. No security concerns.
</details>
<summary>Legitimate font generation script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-mpv-desktop.py, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/gen-osd-font.sh. Status: SAFE -- Legitimate font generation script, no security issues.
LLM auditresponse for gen-mpv-desktop.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward build helper that modifies the `X-KDE-Protocols` field in an mpv desktop file based on the output of `mpv --list-protocols`. It only performs local file I/O (reading two input files and writing one output file), basic string manipulation, and set operations. There are no network requests, no execution of external commands (aside from the implicit assumption that the protocol list file was pre-generated by mpv), no obfuscation, and no suspicious file operations. The script follows standard packaging practices for updating desktop entry files.
</details>
<summary>
Helper script updating desktop entry protocols; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/file2string.py, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/gen-mpv-desktop.py. Status: SAFE -- Helper script updating desktop entry protocols; no security issues.
LLM auditresponse for file2string.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward utility that converts a binary file into a C string literal for embedding into source code. It is part of the mpv project's build system (upstream, not injected). The script only reads a local input file, writes to a local output file, and uses standard library modules (`os`, `sys`). There are no network requests, no obfuscated code, no execution of external binaries, and no operations that could be considered malicious. It follows typical packaging and build practices.

No evidence of a supply-chain attack or malicious behavior. The script is safe.
</details>
<summary>Standard build utility; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/etc/mpv.desktop, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/file2string.py. Status: SAFE -- Standard build utility; no security issues.
LLM auditresponse for mpv.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the mpv media player. It contains localized names, generic names, comments, MIME type associations, and an `Exec` line that launches `mpv` with `--player-operation-mode=pseudo-gui` and passes any opened files or URLs (`%U`). There is no obfuscated code, no network requests, no file operations, and nothing that deviates from normal desktop entry practices. The file conforms entirely to expected packaging conventions.
</details>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/dylib_unhell.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/etc/mpv.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for dylib_unhell.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard macOS library bundling helper. It collects all linked dynamic libraries of a binary, copies them into a local `lib` directory, and updates their install names using `install_name_tool` to make the binary self‑contained.  
It also handles Swift libraries via `swift-stdlib-tool` and bundles Vulkan loader configuration (MoltenVK_icd.json, VkLayer_khronos_synchronization2.json) from well‑known system or Homebrew paths.  

There are no network requests, no obfuscated code, no exfiltration of sensitive data, and no execution of untrusted content from remote sources. All operations are confined to the binary being processed and its local dependencies. This is normal macOS packaging practice and does not exhibit any supply‑chain attack indicators.
</details>
<summary>Standard macOS library bundling script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/gen-fluent-glyphs.py, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/dylib_unhell.py. Status: SAFE -- Standard macOS library bundling script, no malicious behavior.
LLM auditresponse for gen-fluent-glyphs.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script downloads SVG icons from Microsoft's official Fluent UI System Icons repository at a pinned commit hash (`9a4a2db2df7f0067b4ef43c5ae5bfcae3759a5a0`). This is a trusted upstream source and a standard practice for reproducibility. The downloaded SVGs are imported into a local font file using FontForge's Python interface — no code from the SVGs is executed, only vector outlines are ingested. The generated FontForge script is static except for the SVG file paths and transform flags, which are derived from the script's own hardcoded `ICONS` dictionary and contain no dynamic content from the network. There are no suspicious network requests (only to `raw.githubusercontent.com/microsoft/fluentui-system-icons`), no encoded/obfuscated commands, no exfiltration of local data, and no execution of arbitrary downloaded code. This is a legitimate and well-structured font generation component of the mpv build system.
</details>
<summary>Safe: pinned Microsoft repo icons, no downloaded code execution or exfiltration.</summary>
</security_assessment>

[6/10] Reviewing src/mpv/TOOLS/osxbundle/meson.build, src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/gen-fluent-glyphs.py. Status: SAFE -- Safe: pinned Microsoft repo icons, no downloaded code execution or exfiltration.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Meson build snippet for macOS bundling in the mpv project. It uses a custom_target to convert an icon file (`icon.icns`) into a C include file via the `file2string` utility, which is part of mpv's own build infrastructure. There are no network requests, obfuscated commands, dangerous operations (eval, curl, wget), or data exfiltration. The behavior is expected upstream packaging practice.
</details>
<summary>Standard build system snippet for macOS icon bundling.</summary>
</security_assessment>

[7/10] Reviewing src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/gen-interface-changes.py, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/osxbundle/meson.build. Status: SAFE -- Standard build system snippet for macOS icon bundling.
LLM auditresponse for gen-interface-changes.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintainer tool for the mpv project that regenerates the `interface-changes.rst` documentation file from individual change entries stored in the `DOCS/interface-changes` directory. It uses `git log` to timestamp entries, sorts them, and writes them into the RST file. All file operations are confined to the project's own `DOCS` directory. There is no network access, no obfuscated code, no execution of downloaded content, and no modification of system files or user data outside the project scope. The use of `subprocess.check_output` to call `git` is standard for a tool that relies on git metadata. No malicious or suspicious behavior is present.
</details>
<summary>
Standard script for mpv documentation generation, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/mpv/player/lua/ytdl_hook.lua, src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/TOOLS/gen-interface-changes.py. Status: SAFE -- Standard script for mpv documentation generation, no security issues.
LLM auditresponse for ytdl_hook.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard mpv Lua hook that integrates yt-dlp/youtube-dl into the player. It runs yt-dlp as a subprocess with the user's URL, parses the returned JSON, and constructs EDL streams, sets HTTP headers, cookies, chapters, subtitles, and thumbnails. There is no obfuscated code, no unexpected network requests (all network activity goes through yt-dlp, which is the intended external tool), no file exfiltration, and no modification of system files outside mpv's normal operation. The script only uses mpv's own API (`mp.command_native`, `mp.set_property`, `mp.add_hook`, etc.) and calls yt-dlp via subprocess. It does not execute any fetched code or download anything directly—it only processes JSON output from yt-dlp. The use of `memory://` for in-memory cookie and subtitle data is a harmless optimization. The script's behavior is consistent with its purpose: enabling mpv to play videos from YouTube, Twitch, etc. via yt-dlp.
</details>
<summary>Standard mpv ytdl hook, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/mpv/TOOLS/docutils-wrapper.py...
+ Reviewed src/mpv/player/lua/ytdl_hook.lua. Status: SAFE -- Standard mpv ytdl hook, no malicious behavior found.
LLM auditresponse for docutils-wrapper.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a build helper that wraps docutils commands and rewrites dependency file paths to absolute ones for meson/ninja. It uses only standard Python modules (`os`, `subprocess`, `sys`) and performs no network operations, no obfuscation, and no execution of untrusted code. File operations are limited to reading/writing the depfile and removing output files on failure, which is standard for build tools. No genuine malicious behavior is present.
</details>
<summary>Legitimate build helper; no suspicious activity.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/mpv/TOOLS/docutils-wrapper.py. Status: SAFE -- Legitimate build helper; no suspicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,384
  Completion Tokens: 9,229
  Total Tokens: 63,613
  Total Cost: $0.006556
  Execution Time: 102.54 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mpv-git.txt
Final Status: SAFE


No issues found.
