---
package: tradingview
pkgver: 3.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 107414
completion_tokens: 1793
total_tokens: 109207
cost: 0.00999000
execution_time: 31.51
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T08:19:01Z
file_verdicts:
  - file: tradingview-3.2.0-71-eula.html
    status: safe
    summary: No malicious code; standard TradingView terms page.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package for TradingView desktop app.
  - file: .nvchecker.toml
    status: safe
    summary: Simple version checker configuration, no security threat.
---

Cloning https://aur.archlinux.org/tradingview.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a40ohrgv...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a40ohrgv
Analyzing tradingview AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a40ohrgv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are downloaded from official upstream locations: a Snap package from snapcraft.io and a terms-of-use page from tradingview.com. No code executes during the `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` commands beyond variable assignments and sourcing the file. There is no `pkgver()` function, and the functions that could perform dangerous operations (prepare, build, package) are skipped by the flags. The global scope contains only variable definitions and assignments, which are safe.
</details>
<summary>Fetching and parsing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Fetching and parsing this PKGBUILD is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, tradingview-3.2.0-71-eula.html...
LLM auditresponse for tradingview-3.2.0-71-eula.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static copy of the TradingView Terms of Service page. It contains standard HTML, CSS, and JavaScript used to render the page. All inline scripts are either data initialization, feature toggles, analytics (GA, Snowplow, etc.), or WebSocket connection logic that connects to official TradingView subdomains (e.g., `static.tradingview.com`, `data.tradingview.com`, `telemetry.tradingview.com`). There are no suspicious commands (curl, wget, eval, base64), obfuscated code, or attempts to exfiltrate local system data. All network destinations are legitimate TradingView services. The file appears to be a normal, unmodified EULA page bundled with the package for reference during installation.
</details>
<summary>No malicious code; standard TradingView terms page.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed tradingview-3.2.0-71-eula.html. Status: SAFE -- No malicious code; standard TradingView terms page.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron-based desktop application. It downloads the application from the official Snapcraft API using a specific snap ID and revision, and fetches the terms of use from TradingView's official website. No unexpected network destinations, obfuscated code, or dangerous commands are present. The launcher script reads optional flags from a user configuration file and runs Electron with the packaged app.asar, which is a common pattern for Electron apps. Checksum is skipped for the terms of use HTML because it is a dynamic webpage, which is a common and acceptable practice. No evidence of supply chain attacks, data exfiltration, or backdoors.
</details>
<summary>Standard AUR package for TradingView desktop app.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package for TradingView desktop app.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new upstream versions of software. It defines a regex source that scrapes the version string from the official Snapcraft page for TradingView. The URL is legitimate (`snapcraft.io/tradingview`), and the regex is straightforward. The file contains no executable code, no network requests of its own, no obfuscation, and no commands. It is purely descriptive metadata for version tracking. There is no evidence of malicious behavior.
</details>
<summary>Simple version checker configuration, no security threat.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Simple version checker configuration, no security threat.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 107,414
  Completion Tokens: 1,793
  Total Tokens: 109,207
  Total Cost: $0.009990
  Execution Time: 31.51 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-tradingview.txt
Final Status: SAFE


No issues found.
