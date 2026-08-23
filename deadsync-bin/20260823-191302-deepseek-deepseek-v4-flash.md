---
package: deadsync-bin
pkgver: 0.5.751
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 43054
completion_tokens: 4809
total_tokens: 47863
cost: 0.00257355392
execution_time: 69.21
files_reviewed: 12
files_skipped: 0
files_unauditable: 39
unpinned_sources: 0
date: 2026-08-23T19:13:02Z
file_verdicts:
  - file: deadsync-bin.install
    status: safe
    summary: Standard install script; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksums, no malicious activity.
  - file: src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua
    status: safe
    summary: Standard game animation sprite, no malicious code.
  - file: src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua
    status: safe
    summary: Standard game asset script, no malicious code.
  - file: src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua
    status: safe
    summary: Benign game asset script, no security issues.
  - file: src/deadsync/assets/graphics/step_stats_gifs/Dancing Duck.lua
    status: safe
    summary: Legitimate game animation script, no malicious content.
  - file: src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua
    status: safe
    summary: Standard sprite animation asset, no security issues.
  - file: src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua
    status: safe
    summary: Benign sprite animation data file.
  - file: src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua
    status: safe
    summary: Asset animation file, no security concerns.
  - file: src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua
    status: safe
    summary: Standard game asset script, no malicious behavior.
  - file: src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua
    status: safe
    summary: Benign randomiser script for theme GIFs.
  - file: src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua
    status: safe
    summary: Innocuous game animation script, no security issues.
---

Cloning https://aur.archlinux.org/deadsync-bin.git...
Cloned deadsync-bin
Analyzing deadsync-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and function definitions (`package()`). No top-level command substitutions, `eval`, `curl`, or other code that executes during sourcing. The `source` array uses HTTPS URLs to the official GitHub releases of the `deadsync` project, and SHA256 checksums are provided. Fetching and extracting these archives is safe because the archive content is not executed during the requested commands (`--nobuild` and `--noprepare` prevent execution of `prepare()`, `build()`, and `package()`). There is no `pkgver()` function. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source and fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source and fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, deadsync-bin.install...
LLM auditresponse for deadsync-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `deadsync-bin` package. It only outputs informational messages to the user during `post_install` and `post_upgrade`, including version-aware notices about data migration and in-app updates. The only dynamic content is the version string used to construct a changelog URL pointing to the official GitHub releases page. There are no network requests, file operations, system modifications, obfuscated code, or any other dangerous commands. The script performs no actions beyond printing text and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script; no malicious content found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed deadsync-bin.install. Status: SAFE -- Standard install script; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release of the DeadSync rhythm game engine. It downloads the official upstream release tarball from GitHub with a pinned SHA-256 checksum for each architecture. The package() function installs the binary, creates a wrapper script, desktop entry, icons, and license file. No obfuscation, suspicious network requests, data exfiltration, or execution of untrusted code is present. The removal of `portable.txt` is an expected packaging adjustment to ensure proper user data directory behavior. All operations are confined to the expected package installation paths.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with pinned checksums, no malicious activity.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksums, no malicious activity.
Reviewed all required files.
Deciding which files to review next...
Note: 39 compiled/archived file(s) cannot be audited as text and were not reviewed (deadsync-bin-0.5.751-x86_64.tar.gz, src/deadsync/deadsync, src/deadsync/assets/graphics/visual_styles/srpg9/background_video.mp4 and 36 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 341 files available for selection; offering the 50 highest-priority to the model. 87 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787512344-PFeBooL0UjaafWudTTKA', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD and deadsync-bin.install, so we should focus on remaining files.\n\nThe listing shows many Lua files under assets/graphics/step_stats_gifs/ and assets/noteskins/. These are asset files (Lua scripts for StepMania noteskins and graphics). They are likely part of the upstream package (deadsync is a tool for StepMania, presumably). Given that this is a binary package (deadsync-bin), the source is prebuilt. The PKGBUILD likely just downloads a prebuilt binary and installs it, and the install hook may set up permissions. The Lua files are part of the upstream release bundle. They are not written by the AUR maintainer; they come from the upstream artifact. Therefore, they are deprioritized as vendored upstream bundle content.\n\nThe only files that could be AUR maintainer written (beyond PKGBUILD and install hook) might be patches or modifications, but none are listed here. The listing only contains Lua files from the bundle. The package name is deadsync-bin, so it\'s a binary package, meaning the AUR maintainer likely just packages a prebuilt binary from upstream releases. The source code (Lua files) are part of that binary\'s asset pack. They are not modified by the maintainer.\n\nGiven the budget rule: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents." This exactly applies here. The Lua files are bundle contents. They are not likely to be malicious (they ... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787512344-PFeBooL0UjaafWudTTKA', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD and deadsync-bin.install, so we should focus on remaining files.\n\nThe listing shows many Lua files under assets/graphics/step_stats_gifs/ and assets/noteskins/. These are asset files (Lua scripts for StepMania noteskins and graphics). They are likely part of the upstream package (deadsync is a tool for StepMania, presumably). Given that this is a binary package (deadsync-bin), the source is prebuilt. The PKGBUILD likely just downloads a prebuilt binary and installs it, and the install hook may set up permissions. The Lua files are part of the upstream release bundle. They are not written by the AUR maintainer; they come from the upstream artifact. Therefore, they are deprioritized as vendored upstream bundle content.\n\nThe only files that could be AUR maintainer written (beyond PKGBUILD and install hook) might be patches or modifications, but none are listed here. The listing only contains Lua files from the bundle. The package name is deadsync-bin, so it\'s a binary package, meaning the AUR maintainer likely just packages a prebuilt binary from upstream releases. The source code (Lua files) are part of that binary\'s asset pack. They are not modified by the maintainer.\n\nGiven the budget rule: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents." This exactly applies here. The Lua files are bundle contents. They are not likely to be malicious (they ... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua, src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/Dancing Duck.lua, src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua, src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua, src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua, src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua...
[0/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua...
[0/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua, src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua...
LLM auditresponse for Bocchi.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua script defining a sprite animation for a rhythm game (likely StepMania or similar). It loads a texture, defines frame timings, and sets visual properties in the `OnCommand`. There are no network requests, no obfuscated code, no system commands, and no file operations outside of loading a local texture. The content is entirely standard for a game asset and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard game animation sprite, no malicious code.</summary>
</security_assessment>

LLM auditresponse for BrodyQuest.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua script defining a sprite animation for the game "deadsync". It loads a texture ("brodyquest 7x12.gif") and specifies a sequence of frames with delays. The `OnCommand` adjusts cropping, alignment, and position based on the player number and screen width. There are no network requests, encoded commands, file operations, or any other suspicious behavior. The file is a standard asset configuration for a game's graphical interface.
</details>
<evidence></evidence>
<summary>Standard game asset script, no malicious code.</summary>
</security_assessment>

[0/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua, src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua...
LLM auditresponse for AmongUs.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua script for a rhythm game engine (likely StepMania/OutFox) that defines a sprite animation using a texture image. It contains only standard actor definitions, frame delays, and an `OnCommand` that adjusts cropping and zoom. There are no network requests, obfuscation, dangerous commands, or any behavior that deviates from normal game asset scripting. The code is purely cosmetic and serves the package's stated purpose.
</details>
<evidence></evidence>
<summary>Benign game asset script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/Bocchi.lua. Status: SAFE -- Standard game animation sprite, no malicious code.
[1/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua...
[2/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/BrodyQuest.lua. Status: SAFE -- Standard game asset script, no malicious code.
[2/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua, src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/Dancing Duck.lua...
[3/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/Dancing Duck.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/AmongUs.lua. Status: SAFE -- Benign game asset script, no security issues.
LLM auditresponse for Dancing Duck.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua-based animation definition for a sprite (a dancing duck) from the StepMania-based game "deadsync". It simply defines a sprite actor with a texture, frame indices, and delays for a sprite sheet animation. The OnCommand sets cropping parameters. There are no network requests, system calls, encoded payloads, or any behavior that deviates from standard game asset scripting. No signs of malicious code or supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate game animation script, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/Dancing Duck.lua. Status: SAFE -- Legitimate game animation script, no malicious content.
[4/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua, src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua...
LLM auditresponse for CatJAM.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `CatJAM.lua` is a Lua script defining a sprite animation for the game deadsync. It contains only frame indices and delay values for a sprite texture. There are no network requests (curl/wget), no system commands, no obfuscation, and no data exfiltration. The content is entirely benign and consistent with standard asset definition files used in rhythm games based on StepMania.
</details>
<evidence></evidence>
<summary>Standard sprite animation asset, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/CatJAM.lua. Status: SAFE -- Standard sprite animation asset, no security issues.
[5/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua, src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua...
LLM auditresponse for CrabPls.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua sprite animation definition for the StepMania/Deadsync application. It defines frame indices and delays for an animated sprite using a texture named "CrabPls 8x8.png". There are no network requests, file operations, code execution, or obfuscated content. The OnCommand applies straightforward visual properties (cropping, zoom). This is standard application data, not a security threat.
</details>
<evidence></evidence>
<summary>Benign sprite animation data file.</summary>
</security_assessment>

[5/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua, src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua, src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua, src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua...
[6/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua, src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua, src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/CrabPls.lua. Status: SAFE -- Benign sprite animation data file.
LLM auditresponse for DonChan.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Lua script defining an animated sprite for a game or application (likely StepMania or similar). It references a local texture file, sets frame delays, and applies cropping commands. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from standard asset definition. This is a purely declarative animation file with no potential for supply-chain attack.
</details>
<evidence></evidence>
<summary>Asset animation file, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua, src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua, src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua, src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua...
[7/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua, src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua, src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/DonChan.lua. Status: SAFE -- Asset animation file, no security concerns.
LLM auditresponse for Nyan Cat.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua script defining an animated sprite for the game StepMania (or a compatible rhythm game engine). It declares an `ActorFrame` containing a `Sprite` with a texture (`NyanCat 4x3.png`), frame animation timings, and visual adjustments (cropping, zoom, effect clock binding). There are no network operations, no execution of external commands, no obfuscated code, no file system modifications beyond what is expected for a game asset definition. It is purely declarative and graphical in nature, consistent with standard packaging practices for such a package.
</details>
<evidence></evidence>
<summary>Standard game asset script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua, src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/Nyan Cat.lua. Status: SAFE -- Standard game asset script, no malicious behavior.
LLM auditresponse for Randomizer.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `Randomizer.lua` is a simple Lua script that randomly selects another Lua file from a local GIFs directory and loads it as an actor. It performs no network requests, no file operations beyond reading the directory listing, and no execution of untrusted code. The `findFiles` function is a standard StepMania API call to enumerate files in a given directory. There is no evidence of obfuscation, data exfiltration, or any behavior beyond normal gameplay asset randomisation. This is a legitimate part of the application's theming system.
</details>
<evidence></evidence>
<summary>Benign randomiser script for theme GIFs.</summary>
</security_assessment>

[9/10] Reviewing src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/Randomizer.lua. Status: SAFE -- Benign randomiser script for theme GIFs.
LLM auditresponse for Rin Cat.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua script for the StepMania/NotITG engine, defining a sprite animation with a texture and frame timing. It contains only standard actor setup code (ActorFrame, Sprite, OnCommand with effectclock and zoom). There is no network access, code execution, file manipulation, or obfuscation. The content is consistent with an upstream game asset and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Innocuous game animation script, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/deadsync/assets/graphics/step_stats_gifs/Rin Cat.lua. Status: SAFE -- Innocuous game animation script, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,054
  Completion Tokens: 4,809
  Total Tokens: 47,863
  Total Cost: $0.002574
  Execution Time: 69.21 seconds

Final Status: SAFE


No issues found.
