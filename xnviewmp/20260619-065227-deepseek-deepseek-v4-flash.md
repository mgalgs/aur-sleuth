---
package: xnviewmp
pkgver: 1.11.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: af83c8ecbd0b8272d6c9200f7baf40324851f319
prompt_tokens: 135457
completion_tokens: 8197
total_tokens: 143654
cost: 0.01366659
execution_time: 73.06
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T06:52:27Z
file_verdicts:
  - file: XnView.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, safe operations.
  - file: src/XnView/UI/toolbar.ini
    status: safe
    summary: Minimal configuration file with no security issues.
  - file: src/XnView/xnview.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: src/XnView/qt.conf
    status: safe
    summary: Standard Qt config file, no security issues.
  - file: src/XnView/AddOn/lib/Image/ExifTool/Writer.pl
    status: safe
    summary: Legitimate ExifTool writer module, no malicious code.
  - file: src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl
    status: safe
    summary: Legitimate ExifTool PNG writing code, no security issues.
  - file: src/XnView/AddOn/lib/Image/ExifTool/AES.pm
    status: safe
    summary: No malicious code; standard AES library for ExifTool.
  - file: src/XnView/AddOn/lib/File/RandomAccess.pm
    status: safe
    summary: Standard Perl I/O buffer module, no security issues.
  - file: src/XnView/AddOn/exiftool
    status: safe
    summary: Standard exiftool script, no malicious code.
  - file: src/XnView/AddOn/lib/Image/ExifTool/Shift.pl
    status: safe
    summary: Standard ExifTool module, no malicious code.
  - file: src/XnView/AddOn/lib/Image/ExifTool.pm
    status: safe
    summary: Legitimate ExifTool library; no malicious code found.
---

Cloning https://aur.archlinux.org/xnviewmp.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h832qt3s...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h832qt3s
Analyzing xnviewmp AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h832qt3s) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments in its global scope and no `pkgver()` function. The `source` array consists of a tarball fetched over HTTPS from the official XnView download site and a local desktop file, both with provided SHA256 checksums. There is no command substitution, no dangerous function calls, and no code that would execute during the sourcing of the PKGBUILD or during `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions exist but are not executed due to the `--nobuild` and `--noprepare` flags. Therefore, running the specified makepkg commands is safe.
</details>
<summary>Safe PKGBUILD with no dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe PKGBUILD with no dangerous top-level execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, XnView.desktop...
LLM auditresponse for XnView.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the XnView Multi Platform application. It contains no executable code, no network requests, no obfuscation, and no unexpected system modifications. The file merely defines desktop integration metadata: the executable path (`/usr/bin/xnviewmp`), icon, MIME type associations, and category. All paths point to standard locations under `/opt/xnviewmp/` and `/usr/bin/`, which is expected for a packaged application. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed XnView.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured package definition for xnviewmp. The source is downloaded via HTTPS from the official upstream domain (xnview.com). Both source tarballs have pinned SHA256 checksums, ensuring integrity. The `package()` function performs only routine installation steps: copying files into `/opt/xnviewmp`, creating a symlink in `/usr/bin`, installing a desktop file and license, and adjusting permissions. There are no network operations, no execution of untrusted code, no obfuscation, and no modifications outside the package's own installation paths. No malicious or suspicious patterns are present.
</details>
<summary>Standard AUR PKGBUILD with pinned checksums, safe operations.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, safe operations.
Reviewed all required files.
Deciding which files to review next...
Note: 255 files available for selection; offering the 50 highest-priority to the model. 198 lower-priority file(s) were not offered.
LLM response for file selection:
src/XnView/AddOn/exiftool
src/XnView/AddOn/lib/Image/ExifTool.pm
src/XnView/xnview.sh
src/XnView/qt.conf
src/XnView/UI/toolbar.ini
src/XnView/AddOn/lib/File/RandomAccess.pm
src/XnView/AddOn/lib/Image/ExifTool/Writer.pl
src/XnView/AddOn/lib/Image/ExifTool/Shift.pl
src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl
src/XnView/AddOn/lib/Image/ExifTool/AES.pm
Decided to review 10 additional files: src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/xnview.sh, src/XnView/qt.conf, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/XnView/AddOn/exiftool...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/UI/toolbar.ini, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
LLM auditresponse for toolbar.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `toolbar.ini` contains only a simple configuration entry specifying an icon folder and size. There is no executable code, no network operations, no file manipulation, and no suspicious content. It is a standard application configuration file with no potential for malicious behavior.
</details>
<summary>Minimal configuration file with no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/xnview.sh, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
+ Reviewed src/XnView/UI/toolbar.ini. Status: SAFE -- Minimal configuration file with no security issues.
LLM auditresponse for xnview.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard operations to set up library and plugin paths for the XnView application, then executes the application binary. There are no network requests, obfuscated code, unexpected file operations, or system modifications. The behavior is consistent with typical application launcher scripts on Linux.</details>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/qt.conf, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
+ Reviewed src/XnView/xnview.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for qt.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Qt configuration file (`qt.conf`) that sets relative paths for the `Plugins` and `lib` directories. It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions. The paths are relative and point to locations inside the package itself (`lib/plugins` and `lib`). This is benign and part of normal application configuration.
</details>
<summary>Standard Qt config file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
+ Reviewed src/XnView/qt.conf. Status: SAFE -- Standard Qt config file, no security issues.
LLM auditresponse for Writer.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate part of the Image::ExifTool distribution. All `eval` calls are used for evaluating user-defined conversion expressions and dynamic tag processing, which is standard ExifTool functionality. The `require` calls load optional Perl modules (e.g., Win32::API, Win32API::File) for platform-specific features (Windows file operations). File operations (`symlink`, `chmod`, `chown`, `rename`, `unlink`) are expected for a metadata writing tool. There is no evidence of obfuscated code, data exfiltration, or execution of code from unexpected remote sources. The code follows normal packaging and upstream development practices.
</details>
<summary>Legitimate ExifTool writer module, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/Writer.pl. Status: SAFE -- Legitimate ExifTool writer module, no malicious code.
LLM auditresponse for WritePNG.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Perl module from the well-known Image::ExifTool library, responsible for writing PNG metadata chunks (tEXt, zTXt, iTXt, iCCP, etc.). The code performs only legitimate image metadata operations: CRC calculation, hex encoding, optional zlib compression, and writing PNG chunk data to a provided output file handle. There are no network requests (curl, wget, socket), no obfuscation or encoded commands, no system calls or eval of arbitrary code, and no exfiltration of local data. The use of `eval { require Compress::Zlib }` is a normal Perl idiom for conditionally loading an optional module. All operations are consistent with the stated purpose of writing PNG metadata. No evidence of supply-chain attack or malicious injection is present.
</details>
<summary>Legitimate ExifTool PNG writing code, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl, src/XnView/AddOn/lib/Image/ExifTool/AES.pm...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/WritePNG.pl. Status: SAFE -- Legitimate ExifTool PNG writing code, no security issues.
LLM auditresponse for AES.pm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AES implementation in Perl, part of the Image::ExifTool package. It provides AES encryption/decryption with cipher-block chaining (CBC). The code contains no network requests, no obfuscated or encoded strings, no use of `eval`, and no suspicious file operations. The cryptographic lookup tables (s-box, rcon, etc.) match the published AES standard (FIPS 197). The only notable point is the weak seeding of the random number generator for the initialization vector (`srand(time() &amp; ($$ + ($$&lt;&lt;15)))`), which is a deficiency in randomness but not a supply-chain attack or backdoor — it is consistent with the module’s stated purpose and does not exfiltrate data, execute attacker-controlled code, or modify system files. No evidence of malicious injection.
</details>
<summary>No malicious code; standard AES library for ExifTool.</summary>
</security_assessment>

[6/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/AES.pm. Status: SAFE -- No malicious code; standard AES library for ExifTool.
LLM auditresponse for RandomAccess.pm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Perl module (`File::RandomAccess`) that provides buffered random-access read capabilities for sequential file handles. The code performs normal file I/O operations (`seek`, `tell`, `read`, `substr`) and manages an internal buffer to simulate random access when the underlying file handle does not support seeking. There are no network requests, no execution of external programs, no obfuscation, no encoded payloads, and no exfiltration of data. All operations are confined to the file passed to the constructor. The module also includes optional debugging code that reads and checks file content for zero-bytes, but this is clearly diagnostic and does not write or transmit data anywhere. This is a routine utility module and contains no supply-chain attack vectors.
</details>
<summary>Standard Perl I/O buffer module, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl...
+ Reviewed src/XnView/AddOn/lib/File/RandomAccess.pm. Status: SAFE -- Standard Perl I/O buffer module, no security issues.
LLM auditresponse for exiftool:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the upstream ExifTool Perl script (version 12.67), a legitimate and well-known metadata manipulation tool. All suspicious patterns (eval, base64, curl, wget) appear only in expected contexts: `eval` is used for evaluating user-specified `-if` conditions and for dynamic module loading, which is normal ExifTool behavior; `base64` is used for encoding binary data in output formats (XML, JSON, CSV) as documented; `curl` and `wget` appear only in POD documentation examples, not in executable code. There is no evidence of obfuscated code, data exfiltration, malicious network requests, or backdoors. The content is consistent with the official ExifTool distribution.
</details>
<summary>Standard exiftool script, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/Shift.pl...
+ Reviewed src/XnView/AddOn/exiftool. Status: SAFE -- Standard exiftool script, no malicious code.
LLM auditresponse for Shift.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `Shift.pl` is a standard Perl module from the ExifTool library (`Image::ExifTool::Shift.pl`) providing date/time shifting routines. It contains no obfuscated code, no network requests (no `curl`, `wget`, or remote connections), no file operations outside its module scope, and no data exfiltration logic. The `eval` statements present are either static string `eval` (for `require Time::Local`) or dynamic dispatch using tag configuration values (`eval "Shift$func(...)"` and `eval $$tagInfo{$type}`). These are standard Perl patterns within ExifTool and do not constitute a supply-chain attack; they are part of the library's intended functionality and operate on trusted tag definitions, not external user input. No modifications or injected malicious code were found—the content is consistent with the upstream ExifTool distribution.
</details>
<summary>Standard ExifTool module, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/Shift.pl. Status: SAFE -- Standard ExifTool module, no malicious code.
LLM auditresponse for ExifTool.pm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ExifTool.pm` is the core Perl library of the Image::ExifTool project (exiftool.org). The code shown is entirely consistent with the normal operation of this metadata processing tool. The file defines tag tables, file type detection, binary data parsing, and provides dynamic conversion routines using `eval`. These `eval` calls are an intended feature of ExifTool, allowing user-defined expressions in PrintConv/RawConv options – they are not injected malware. The file also loads optional modules (e.g., Win32API::File, Time::HiRes, POSIX) and a user config file from the home directory; all of these are standard ExifTool behaviors. No obfuscated code, network requests, data exfiltration, backdoors, or unexpected system modifications are present. The package simply processes metadata for images and other file formats.
</details>
<summary>Legitimate ExifTool library; no malicious code found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool.pm. Status: SAFE -- Legitimate ExifTool library; no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 135,457
  Completion Tokens: 8,197
  Total Tokens: 143,654
  Total Cost: $0.013667
  Execution Time: 73.06 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-xnviewmp.txt
Final Status: SAFE


No issues found.
