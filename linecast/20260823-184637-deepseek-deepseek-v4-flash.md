---
package: linecast
pkgver: 1.15.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 39596
completion_tokens: 6174
total_tokens: 45770
cost: 0.00253798384
execution_time: 95.77
files_reviewed: 8
files_skipped: 1
files_unauditable: 1
unpinned_sources: 0
date: 2026-08-23T18:46:37Z
file_verdicts:
  - file: linecast-1.15.1.tar.gz
    status: skipped
    summary: "Skipping binary file: linecast-1.15.1.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content found.
  - file: src/linecast-1.15.1/src/linecast/_radar_source.py
    status: safe
    summary: Upstream radar data fetching module, no malicious code.
  - file: src/linecast-1.15.1/src/linecast/_radar_sources.py
    status: safe
    summary: Standard weather data source, no malicious code.
  - file: src/linecast-1.15.1/src/linecast/_elevation.py
    status: safe
    summary: Standard upstream elevation data module; no security issues.
  - file: src/linecast-1.15.1/src/linecast/_radar_tiles.py
    status: safe
    summary: Normal tile-fetching module, no malicious content.
  - file: src/linecast-1.15.1/src/linecast/_live.py
    status: safe
    summary: Standard terminal UI code, no security issues found.
  - file: src/linecast-1.15.1/src/linecast/_config.py
    status: safe
    summary: Standard config handler; no malicious behavior found.
  - file: src/linecast-1.15.1/src/linecast/_http.py
    status: safe
    summary: Routine HTTP fetching helper; no security concerns.
---

Cloning https://aur.archlinux.org/linecast.git...
Cloned linecast
Analyzing linecast AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, a commented-out source line, and function definitions (`build()`, `package()`) that are **not** executed during `makepkg --nobuild --nodeps --noprepare`. No code runs at top-level or in `pkgver()` (which is absent) that could execute malicious commands, download untrusted payloads, or exfiltrate data. The source array fetches a tarball from the official GitHub repository over HTTPS with a pinned SHA256 checksum. There is no obfuscation, encoded commands, or dangerous top-level operations.
</details>
<evidence></evidence>
<summary>PKGBUILD is safe for source-fetching and parsing step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is safe for source-fetching and parsing step.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, linecast-1.15.1.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed linecast-1.15.1.tar.gz. Status: SKIPPED -- Skipping binary file: linecast-1.15.1.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward, standard Arch packaging script for a Python application. It fetches source from the official GitHub repository at a pinned version tag with a verified checksum. The build and package functions use standard Python build tools (`python -m build`, `python -m installer`) and install documentation and license files appropriately. There are no suspicious operations: no obfuscated or encoded commands, no unexpected network requests, no dangerous shell constructs, and no modifications to system files outside the package directory. The commented-out line is simply an alternative source URL, which is harmless. The file follows typical AUR packaging practices and does not contain any indicators of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (src/linecast-1.15.1/src/linecast/data/basemap.json.gz). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 171 files available for selection; offering the 50 highest-priority to the model. 120 lower-priority file(s) were not offered.
LLM response for file selection:
get.sh
release.sh
release-homebrew.sh
src/linecast-1.15.1/src/linecast/_http.py
src/linecast-1.15.1/src/linecast/_radar_source.py
src/linecast-1.15.1/src/linecast/_radar_sources.py
src/linecast-1.15.1/src/linecast/_radar_tiles.py
src/linecast-1.15.1/src/linecast/_elevation.py
src/linecast-1.15.1/src/linecast/_live.py
src/linecast-1.15.1/src/linecast/_config.py
! Note: the model selected 3 path(s) not present in the package; these do not exist and were not reviewed: get.sh, release.sh, release-homebrew.sh
Decided to review 7 additional files: src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_source.py, src/linecast-1.15.1/src/linecast/_radar_sources.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_elevation.py, src/linecast-1.15.1/src/linecast/_live.py, src/linecast-1.15.1/src/linecast/_config.py
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py...
[0/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_source.py...
[0/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_source.py, src/linecast-1.15.1/src/linecast/_radar_sources.py...
LLM auditresponse for _radar_source.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an upstream application module that fetches NEXRAD radar composite images from the Iowa State Mesonet WMS service. It uses standard Python libraries (`urllib.request`, `datetime`) and constructs HTTP requests to the legitimate IEM service. The code includes local disk caching, error handling with fallback to stale cache, and logging. There is no obfuscation, no unexpected network destinations (the URL is hardcoded to the IEM WMS endpoint), no execution of external commands, no eval or base64 decoding, and no exfiltration of local data. The module's behavior is entirely consistent with the stated purpose of fetching radar frames for display/use in the linecast application.
</details>
<evidence></evidence>
<summary>Upstream radar data fetching module, no malicious code.</summary>
</security_assessment>

[0/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_source.py, src/linecast-1.15.1/src/linecast/_radar_sources.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py...
[1/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_sources.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_radar_source.py. Status: SAFE -- Upstream radar data fetching module, no malicious code.
LLM auditresponse for _radar_sources.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a pluggable radar source system for the linecast weather application. It defines three source classes (IEMSource, RainViewerSource, LibreWXRSource) that fetch weather radar data from well-known public APIs (Iowa Environmental Mesonet, RainViewer, LibreWXR). The code uses standard HTTP requests via the internal `_radar_tiles` module and applies color palettes via `_radar_palettes`. There is no obfuscation, no unexpected network destinations, no file system manipulation outside the application's scope, and no execution of untrusted code. The fallback logic in `get_source` is a standard resilience pattern. All operations are consistent with the application's stated purpose of providing weather radar imagery.
</details>
<evidence></evidence>
<summary>Standard weather data source, no malicious code.</summary>
</security_assessment>

[1/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_sources.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_elevation.py...
[2/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_elevation.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_radar_sources.py. Status: SAFE -- Standard weather data source, no malicious code.
LLM auditresponse for _elevation.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_elevation.py` is part of the upstream Linecast application and handles fetching elevation data from the AWS Open Data Terrain Tiles service. It uses standard Python libraries (`urllib.request`, `os`) to download PNG tiles over HTTPS, caches them locally, and decodes RGB values to elevation. The network destination is a legitimate AWS S3 bucket (`s3.amazonaws.com/elevation-tiles-prod`) and the URL can be overridden via an environment variable, which is a normal configuration pattern. There is no obfuscated code, no execution of arbitrary commands, no exfiltration of sensitive data, and no unexpected system modifications. The file performs only the tasks expected of an elevation data module for a mapping application. All operations are consistent with the application's stated purpose.
</details>
<evidence></evidence>
<summary>Standard upstream elevation data module; no security issues.</summary>
</security_assessment>

[2/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_elevation.py, src/linecast-1.15.1/src/linecast/_live.py...
[3/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_live.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_elevation.py. Status: SAFE -- Standard upstream elevation data module; no security issues.
LLM auditresponse for _radar_tiles.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python module for fetching and processing radar/satellite tile data from public APIs (RainViewer, LibreWXR). It performs HTTP requests to known endpoints, caches tiles to disk, and reprojects them. All network destinations are the providers' own APIs; no unexpected or untrusted hosts are contacted. The code is clean, well-documented, and performs no obfuscated operations, no data exfiltration, no execution of downloaded code, and no system modifications beyond caching. Reading an environment variable for an optional custom URL (`LINECAST_LIBREWXR_URL`) is a standard configuration pattern. There is no evidence of malicious injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Normal tile-fetching module, no malicious content.</summary>
</security_assessment>

[3/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_radar_tiles.py, src/linecast-1.15.1/src/linecast/_live.py, src/linecast-1.15.1/src/linecast/_config.py...
[4/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_live.py, src/linecast-1.15.1/src/linecast/_config.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_radar_tiles.py. Status: SAFE -- Normal tile-fetching module, no malicious content.
LLM auditresponse for _live.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream source code for linecast, a terminal application. It implements a live terminal rendering loop with keyboard and mouse input handling, terminal color probing, and signal-safe resize handling. All operations are confined to standard terminal I/O (stdin/stdout), and the only external interaction is reading the `TERM_PROGRAM` environment variable and importing from another module in the same package (`linecast._theme`). There are no network requests, no downloads, no obfuscated code, and no system commands that go beyond normal terminal UI behavior. The signal handlers and terminal cleanup are proper and expected for this kind of application. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard terminal UI code, no security issues found.</summary>
</security_assessment>

[5/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py, src/linecast-1.15.1/src/linecast/_config.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_live.py. Status: SAFE -- Standard terminal UI code, no security issues found.
LLM auditresponse for _config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements persistent user settings for the linecast application, reading and writing a JSON configuration file at `~/.config/linecast/config.json`. It uses standard Python libraries (`json`, `os`, `pathlib`) and an internal atomic write utility (`linecast._cache.write_bytes_atomic`). There are no network requests, obfuscated code, dangerous command execution, or any behavior that deviates from normal configuration management. The file does exactly what its docstring and function names suggest: store and retrieve user preferences (units, location). No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard config handler; no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing src/linecast-1.15.1/src/linecast/_http.py...
+ Reviewed src/linecast-1.15.1/src/linecast/_config.py. Status: SAFE -- Standard config handler; no malicious behavior found.
LLM auditresponse for _http.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard helper module for fetching JSON over HTTP and caching responses. It uses only built-in Python `urllib.request` and imports from the package&#x27;s own `_cache` and `_runtime` modules. There is no obfuscated code, no suspicious network destinations (the URL is supplied as a parameter), and no dangerous operations like `eval`, `curl`, or `wget`. The caching logic reads and writes local cache files, which is normal application behavior. Nothing in this file introduces a supply-chain attack vector.
</details>
<evidence>
</evidence>
<summary>Routine HTTP fetching helper; no security concerns.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/linecast-1.15.1/src/linecast/_http.py. Status: SAFE -- Routine HTTP fetching helper; no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: linecast-1.15.1.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,596
  Completion Tokens: 6,174
  Total Tokens: 45,770
  Total Cost: $0.002538
  Execution Time: 95.77 seconds

Final Status: SAFE


No issues found.


Audit Skips:

linecast-1.15.1.tar.gz: [SKIPPED] Skipping binary file: linecast-1.15.1.tar.gz
