---
package: google-earth-pro
pkgver: 7.3.7.1155
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 148075
completion_tokens: 3363
total_tokens: 151438
cost: 0.01393209
execution_time: 55.48
files_reviewed: 6
files_skipped: 0
date: 2026-06-19T06:25:29Z
file_verdicts:
  - file: google-earth-pro.install
    status: safe
    summary: Standard install script with informational notes only.
  - file: Google-Privacy-Policy.html
    status: safe
    summary: Benign HTML redirect script to Google Privacy Policy.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
  - file: Google-Earth-Additional-Terms-of-Service.html
    status: safe
    summary: Static legal HTML, no malicious or dangerous behavior.
  - file: Google-Terms-of-Service.html
    status: safe
    summary: Benign redirect page; no malicious behavior detected.
  - file: Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html
    status: safe
    summary: Benign legal notices HTML, no security concerns.
---

Cloning https://aur.archlinux.org/google-earth-pro.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e4iytiho...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e4iytiho
Analyzing google-earth-pro AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-e4iytiho) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `source` array pointing to official Google URLs (`.deb` from `dl.google.com` and legal/terms pages from `www.google.com`). No code executes in the global scope or `pkgver()` (which is not defined). The `prepare()`, `build()`, and `package()` functions are not run during the `--nobuild --noprepare` step. The SKIP checksums for the HTML sources are a hygiene concern but not evidence of malice. No obfuscated commands, unexpected network targets, or executable code in the top-level scope.
</details>
<summary>Safe: only standard variable definitions and official sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: only standard variable definitions and official sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, google-earth-pro.install...
[0/3] Reviewing PKGBUILD, google-earth-pro.install, Google-Privacy-Policy.html...
LLM auditresponse for google-earth-pro.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (.install) for `google-earth-pro`. It defines colored output helper functions and then provides informational notes to the user during installation/upgrade. The notes mention the launcher name, a Wayland workaround, and a suggestion to clear the application's cache if graphical corruption occurs. All operations are purely informational—there are no network requests, no execution of downloaded code, no obfuscated commands, no system file modifications, and no exfiltration of data. The `rm -r ~/.googleearth/Cache/` line is printed as text only and not executed. The file is consistent with normal, safe packaging practices.
</details>
<summary>Standard install script with informational notes only.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, Google-Privacy-Policy.html...
+ Reviewed google-earth-pro.install. Status: SAFE -- Standard install script with informational notes only.
LLM auditresponse for Google-Privacy-Policy.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an HTML redirect page pointing to Google's official privacy policy at https://policies.google.com/privacy. The JavaScript code performs locale detection based on the current URL (language and region parameters) and redirects accordingly. There is no obfuscation, no system commands, no data exfiltration, and no unexpected network destinations. The code only interacts with the browser's location API and the official Google policies domain, which is expected for a privacy policy link bundled with a Google application. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>
Benign HTML redirect script to Google Privacy Policy.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed Google-Privacy-Policy.html. Status: SAFE -- Benign HTML redirect script to Google Privacy Policy.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages Google Earth Pro from the official Google `.deb` release. The source URL points to `dl.google.com`, the checksum for the `.deb` is pinned (`b2sums`), and the remaining sources (license HTML files) correctly use `SKIP` as they are expected to change. The `prepare()` and `package()` functions perform standard extraction, file relocation, icon installation, and cleanup (removing an upstream cron job, vendored libraries, and SGID bits). There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no exfiltration of local data. The comment suggesting `curl` is only informational and not executed within the build. All operations are consistent with normal AUR packaging practices.
</details>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html, Google-Earth-Additional-Terms-of-Service.html, Google-Terms-of-Service.html
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html...
[0/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html, Google-Earth-Additional-Terms-of-Service.html...
[0/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html, Google-Earth-Additional-Terms-of-Service.html, Google-Terms-of-Service.html...
LLM auditresponse for Google-Earth-Additional-Terms-of-Service.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static HTML document containing the Google Maps/Google Earth Additional Terms of Service. It includes standard web elements such as links to Google-hosted CSS, JavaScript (Google Analytics, cookie notification bar), and SVG icons. There are no shell commands, obfuscated code, or network requests to unexpected or suspicious hosts. All external resources are from Google's own domains (gstatic.com, google.com, google-analytics.com) and are consistent with a legal notice page distributed with the package. The file performs no system modifications, data exfiltration, or execution of untrusted code; it is purely informational content.
</details>
<summary>Static legal HTML, no malicious or dangerous behavior.</summary>
</security_assessment>

[1/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html, Google-Terms-of-Service.html...
+ Reviewed Google-Earth-Additional-Terms-of-Service.html. Status: SAFE -- Static legal HTML, no malicious or dangerous behavior.
LLM auditresponse for Google-Terms-of-Service.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard HTML redirect page for Google's Terms of Service. It uses JavaScript to determine the user's locale via URL parameters or browser hostname and redirects to the appropriate localized version of https://policies.google.com/terms. This is typical legal page behavior and does not involve any unexpected network requests, data exfiltration, or system modification. The code is transparent and contains no obfuscation, dangerous commands, or malicious payloads. As part of the google-earth-pro AUR package, it is an innocuous included reference document, not a supply-chain attack vector.
</details>
<summary>
Benign redirect page; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html...
+ Reviewed Google-Terms-of-Service.html. Status: SAFE -- Benign redirect page; no malicious behavior detected.
LLM auditresponse for Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard HTML document containing legal notices for Google Maps/Google Earth and related APIs. It includes only benign HTML markup, inline CSS, and JavaScript references to legitimate Google-owned domains (e.g., gstatic.com, google.com, fonts.googleapis.com). No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, `exec`, or obfuscated code are present. The content serves solely as documentation and does not perform any network requests or system modifications beyond loading standard resources hosted by Google. There is no evidence of a supply-chain attack or malicious injection.
</details>
<summary>Benign legal notices HTML, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html. Status: SAFE -- Benign legal notices HTML, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 148,075
  Completion Tokens: 3,363
  Total Tokens: 151,438
  Total Cost: $0.013932
  Execution Time: 55.48 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-google-earth-pro.txt
Final Status: SAFE


No issues found.
