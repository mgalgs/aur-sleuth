---
package: google-earth-pro
pkgver: 7.3.7.1155
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 148064
completion_tokens: 3689
total_tokens: 151753
cost: 0.01398978
execution_time: 43.64
files_reviewed: 6
files_skipped: 0
date: 2026-06-19T09:11:44Z
file_verdicts:
  - file: Google-Privacy-Policy.html
    status: safe
    summary: HTML redirect to official Google Privacy Policy; no malicious code detected.
  - file: google-earth-pro.install
    status: safe
    summary: Informational post-install script with no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for an upstream binary package; no malicious behavior found.
  - file: Google-Earth-Additional-Terms-of-Service.html
    status: safe
    summary: Static legal HTML, no malicious content found.
  - file: Google-Terms-of-Service.html
    status: safe
    summary: Benign Google Terms redirect page, no malicious behavior found.
  - file: Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html
    status: safe
    summary: Static legal notice HTML, no malicious code.
---

Cloning https://aur.archlinux.org/google-earth-pro.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tbkh2uwr...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tbkh2uwr
Analyzing google-earth-pro AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tbkh2uwr) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code execution in its global scope or in a `pkgver()` function (which is absent). All `source` entries point to official Google domains (`dl.google.com` and `www.google.com`), which is the expected upstream for this package. The only checksummed file (the `.deb`) has a fixed `b2sum`, and the remaining SKIP entries are for live policy HTML files—a common and non-malicious practice. No `eval`, `base64`, `curl|bash`, or other obfuscated/encoded commands are present. Functions `prepare()`, `build()`, and `package()` are defined but are **not executed** by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands solely to fetch sources and source the PKGBUILD is safe.
</details>
<summary>No malicious global code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious global code; safe to fetch sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing google-earth-pro.install...
[0/3] Reviewing google-earth-pro.install, PKGBUILD...
[0/3] Reviewing google-earth-pro.install, PKGBUILD, Google-Privacy-Policy.html...
LLM auditresponse for Google-Privacy-Policy.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward HTML redirect page that forwards users to Google's official privacy policy at policies.google.com. The JavaScript code constructs the privacy policy URL based on the user's locale and language settings, and then redirects the browser. There is no obfuscation, no suspicious network requests, no execution of downloaded content, and no exfiltration of data. The file serves its stated purpose of providing access to the privacy policy and contains no malicious or supply-chain attack indicators.
</details>
<summary>HTML redirect to official Google Privacy Policy; no malicious code detected.</summary>
</security_assessment>

[1/3] Reviewing google-earth-pro.install, PKGBUILD...
+ Reviewed Google-Privacy-Policy.html. Status: SAFE -- HTML redirect to official Google Privacy Policy; no malicious code detected.
LLM auditresponse for google-earth-pro.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `google-earth-pro.install` is a standard Arch Linux `.install` script that runs after package installation or upgrade. It defines helper functions for colored terminal output (using `tput`) and a `post_install` function that prints informational notes to the user about running the application under Wayland and clearing a local cache directory if graphical corruption occurs. There are no network requests, no calls to `curl`, `wget`, `eval`, `base64` decoding, or any file operations beyond printing to stdout. The script does not execute downloaded code, modify system files, or exfiltrate data. It is exactly what a post-install script is expected to do: provide user guidance. No malicious or suspicious behavior is present.
</details>
<summary>
Informational post-install script with no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed google-earth-pro.install. Status: SAFE -- Informational post-install script with no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package (Google Earth Pro).  
- The source tarball is fetched from the official Google Earth download server (`dl.google.com`), which is the legitimate upstream.  
- The HTML license files are also fetched from official Google URLs, with `SKIP` checksums — a common choice for non-stable or dynamically-served content, not a supply-chain threat.  
- The `prepare()` function merely extracts the `.deb` archive (via `bsdtar`), and `package()` installs the extracted files, sets up icons, and removes the upstream&#8217;s cron job and a vendored library (standard hygiene).  
- The `chmod -R &#039;a-s&#039;` line removes any SGID bits from the package&#8217;s files, a hardening measure, not a malicious act.  

There is no obfuscated code, no unexpected network connections, no execution of downloaded scripts (no `curl|bash` or similar), no data exfiltration, and no modification of files outside the package&#8217;s own installation directory. All operations are confined to the expected packaging workflow for a binary Google Earth Pro installation on Arch Linux.
</details>
<summary>
Standard PKGBUILD for an upstream binary package; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for an upstream binary package; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: Google-Terms-of-Service.html, Google-Earth-Additional-Terms-of-Service.html, Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing Google-Terms-of-Service.html...
[0/3] Reviewing Google-Terms-of-Service.html, Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html...
[0/3] Reviewing Google-Terms-of-Service.html, Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html, Google-Earth-Additional-Terms-of-Service.html...
LLM auditresponse for Google-Earth-Additional-Terms-of-Service.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static HTML document containing the Google Maps Additional Terms of Service. It references standard Google assets (fonts.googleapis.com, gstatic.com, google.com) for styling and analytics. No suspicious commands, obfuscated code, or network requests to unexpected hosts are present. The file serves its intended purpose as a legal notice and contains no malicious or supply-chain attack indicators.
</details>
<summary>
Static legal HTML, no malicious content found.
</summary>
</security_assessment>

[1/3] Reviewing Google-Terms-of-Service.html, Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html...
+ Reviewed Google-Earth-Additional-Terms-of-Service.html. Status: SAFE -- Static legal HTML, no malicious content found.
LLM auditresponse for Google-Terms-of-Service.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple HTML redirect page that navigates the browser to Google's official terms of service (`https://policies.google.com/terms`). The JavaScript dynamically adjusts the redirect URL based on the user's locale, language, and country code to show the correct localized version. There is no obfuscated code, no suspicious network requests (only a standard `window.location.href` change to a legitimate Google domain), no execution of external commands, and no system modification. This is a standard, benign front-end script bundled with Google Earth Pro to provide a convenient link to the terms of service. No supply-chain attack indicators are present.
</details>
<summary>
Benign Google Terms redirect page, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html...
+ Reviewed Google-Terms-of-Service.html. Status: SAFE -- Benign Google Terms redirect page, no malicious behavior found.
LLM auditresponse for Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static HTML document containing legal notices for Google Maps/Google Earth and its APIs. It is an upstream document from Google (copyright and trademark notices, country-specific data attributions, software acknowledgments, and business listing data sources). The truncated portions and the suspicious-pattern matches (lines with `curl`, `wget`, etc.) are simply `<a href="...">` tags pointing to legitimate government open-data portals and license pages (e.g., `data.humdata.org`, `creativecommons.org`, various `.gov` domains). There is no executable code, no obfuscated or encoded payloads, no network requests to unexpected hosts, and no system-modifying operations. The file is purely informational and serves as a bundled legal notice for the application. No supply-chain attack indicators are present.
</details>
<summary>Static legal notice HTML, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html. Status: SAFE -- Static legal notice HTML, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 148,064
  Completion Tokens: 3,689
  Total Tokens: 151,753
  Total Cost: $0.013990
  Execution Time: 43.64 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-google-earth-pro.txt
Final Status: SAFE


No issues found.
