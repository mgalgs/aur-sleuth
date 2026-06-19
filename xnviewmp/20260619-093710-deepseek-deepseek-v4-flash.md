---
package: xnviewmp
pkgver: 1.11.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 192095
completion_tokens: 10699
total_tokens: 202794
cost: 0.01921437
execution_time: 112.11
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T09:37:10Z
file_verdicts:
  - file: XnView.desktop
    status: safe
    summary: Standard desktop entry file, no signs of malice.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: src/XnView/xnview.sh
    status: safe
    summary: Standard launcher script, no security concerns.
  - file: src/XnView/qt.conf
    status: safe
    summary: Standard Qt config file, no suspicious content.
  - file: src/XnView/AddOn/exiftool
    status: safe
    summary: Standard ExifTool script, no malicious code found.
  - file: src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl
    status: safe
    summary: Legitimate ExifTool module; no security issues.
  - file: src/XnView/AddOn/lib/File/RandomAccess.pm
    status: safe
    summary: Standard Perl I/O module, no malicious behavior.
  - file: src/XnView/AddOn/lib/Image/ExifTool/Writer.pl
    status: safe
    summary: Standard ExifTool writer module, no malicious code found.
  - file: src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl
    status: safe
    summary: Legitimate ExifTool PDF writing module; no security issues.
  - file: src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl
    status: safe
    summary: Genuine ExifTool module; no malicious code detected.
  - file: src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl
    status: safe
    summary: Standard ExifTool library code; no malicious indicators.
  - file: src/XnView/AddOn/lib/Image/ExifTool.pm
    status: safe
    summary: Standard ExifTool Perl module, no malicious content.
---

Cloning https://aur.archlinux.org/xnviewmp.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ppke7fow...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ppke7fow
Analyzing xnviewmp AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ppke7fow) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution, no `pkgver()` function, and no command substitutions or backticks that could execute during sourcing. All source URLs point to the official upstream domain (download.xnview.com) and include pinned SHA256 checksums. The only operations that will occur when running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` are fetching the specified tarball and a local .desktop file (which is part of the AUR source), then extracting the archive. No dangerous commands, obfuscated content, or unexpected network destinations are present.
</details>
<summary>Standard PKGBUILD with pinned checksums; no top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with pinned checksums; no top-level code execution.[/]
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
This is a standard .desktop file for the XnViewMP image viewer application. It defines the execution command, icon, categories, and supported MIME types. There is no embedded code, no network requests, and no suspicious operations. The file is exactly what one would expect for a legitimate desktop entry in an AUR package.
</details>
<summary>Standard desktop entry file, no signs of malice.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed XnView.desktop. Status: SAFE -- Standard desktop entry file, no signs of malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for the xnviewmp binary application. It downloads the precompiled tarball from the official xnview.com domain over HTTPS and validates it with a pinned SHA-256 checksum. The build and install steps are limited to copying files into the package directory, creating a symlink, and setting proper permissions—no network requests, code execution from untrusted sources, obfuscation, or data exfiltration. The only external source is the upstream download URL, which is expected and legitimate. No unusual or dangerous commands (curl, wget, eval, base64) are present. The file is consistent with standard packaging practices and contains no evidence of a supply chain attack.
</details>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 255 files available for selection; offering the 50 highest-priority to the model. 198 lower-priority file(s) were not offered.
LLM response for file selection:
src/XnView/xnview.sh
src/XnView/AddOn/exiftool
src/XnView/AddOn/lib/Image/ExifTool.pm
src/XnView/AddOn/lib/Image/ExifTool/Writer.pl
src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl
src/XnView/AddOn/lib/File/RandomAccess.pm
src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl
src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl
src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl
src/XnView/qt.conf
Decided to review 10 additional files: src/XnView/xnview.sh, src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl, src/XnView/qt.conf
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/XnView/AddOn/exiftool...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/qt.conf...
[0/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/xnview.sh, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/qt.conf, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
LLM auditresponse for xnview.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `xnview.sh` is a standard launcher script for the XnView MP application. It resolves its own directory using `readlink` and `dirname`, then exports `LD_LIBRARY_PATH` and `QT_PLUGIN_PATH` to point to the bundled libraries and plugins. Finally, it executes the main `XnView` binary with any arguments passed to the script. There is no obfuscated code, no network requests, no execution of untrusted content, and no unexpected system modifications. This is a routine and non-malicious packaging shell script.
</details>
<summary>Standard launcher script, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/qt.conf, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/xnview.sh. Status: SAFE -- Standard launcher script, no security concerns.
LLM auditresponse for qt.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Qt configuration file (`qt.conf`) that sets the relative paths for plugins and libraries. It contains no executable code, network requests, obfuscation, or any operations beyond defining two path variables. This is a normal and expected configuration for Qt applications distributed via the AUR (e.g., xnviewmp). There is no evidence of malicious behavior.
</details>
<summary>Standard Qt config file, no suspicious content.</summary>
</security_assessment>

[2/10] Reviewing src/XnView/AddOn/exiftool, src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/qt.conf. Status: SAFE -- Standard Qt config file, no suspicious content.
LLM auditresponse for exiftool:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard ExifTool Perl script (version 12.67), a well-known metadata manipulation tool. All suspicious patterns (eval, base64, system, etc.) are used for legitimate purposes: `eval` evaluates user-provided `-if` conditions and loads modules; `base64` encodes binary data for XML/JSON/CSV output; `system` sets the console window title on Windows; and file operations (glob, truncate, Win32::FindFile) are normal for the tool's functionality. No obfuscated code, unexpected network requests, or data exfiltration is present. The file is consistent with the upstream ExifTool distribution and does not contain any injected malicious behavior.
</details>
<summary>Standard ExifTool script, no malicious code found.</summary>
</security_assessment>

[3/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/AddOn/exiftool. Status: SAFE -- Standard ExifTool script, no malicious code found.
LLM auditresponse for WriteExif.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ExifTool module for writing EXIF metadata. It contains `eval` expressions, but these are part of ExifTool's documented mechanism for evaluating dynamic tag properties (offsets, base values, write conditions) from tag definitions—not obfuscated or injected code. No network requests (curl, wget), base64 decoding, file exfiltration, or other suspicious operations are present. The code is well-structured and serves only its intended purpose of processing EXIF data. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<summary>Legitimate ExifTool module; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/File/RandomAccess.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/WriteExif.pl. Status: SAFE -- Legitimate ExifTool module; no security issues.
LLM auditresponse for RandomAccess.pm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Perl module (`File::RandomAccess`) providing buffered random-access I/O for sequential files or scalar references. The code performs normal file operations (seek, read, tell, binmode, close) and does not contain any of the following:  
- Obfuscated or encoded commands  
- Network requests (curl, wget, socket connections) to unexpected hosts  
- Execution of downloaded code or external binaries  
- Exfiltration of local data or system files  
- Backdoors, reverse shells, or credential theft  

The DEBUG mode prints diagnostic output to stdout, but this is only enabled explicitly by calling the `Debug()` method and is consistent with the module's intended debugging functionality. No behavior deviates from ordinary packaging or upstream utility code.
</details>
<summary>Standard Perl I/O module, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/Writer.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/AddOn/lib/File/RandomAccess.pm. Status: SAFE -- Standard Perl I/O module, no malicious behavior.
LLM auditresponse for Writer.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard ExifTool Writer.pl module, which is a core component of the Image::ExifTool library used for reading and writing metadata. The suspicious patterns flagged (eval, require, etc.) are all normal and expected in this Perl module. The `eval` statements are used for dynamic evaluation of tag conversion expressions (e.g., `PrintConvInv`, `ValueConv`, `RawConv`), which is a documented feature of ExifTool. The `require` calls are for optional Perl modules (e.g., Win32::API, Win32API::File, Time::Piece) that are conditionally loaded when needed. There is no obfuscated code, no network requests (curl/wget), no base64 decoding, and no unexpected system modifications. All file operations (chmod, chown, rename, unlink) are legitimate metadata-writing actions. The file shows no signs of malicious injection or supply-chain attack; it is consistent with the upstream ExifTool source.
</details>
<summary>Standard ExifTool writer module, no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl, src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/Writer.pl. Status: SAFE -- Standard ExifTool writer module, no malicious code found.
LLM auditresponse for WritePDF.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `WritePDF.pl` is a standard Perl module from the well-known Image::ExifTool library, used for writing PDF metadata. The code is clear, well-documented, and performs only legitimate operations such as reading PDF data, modifying metadata dictionaries, and appending incremental updates to PDF files. There are no suspicious network requests, obfuscated code, dangerous system commands, or any behavior that deviates from standard packaging practices. The module does not exfiltrate data, download or execute code from external sources, or contain backdoors. All operations are confined to the PDF file being processed.
</details>
<summary>Legitimate ExifTool PDF writing module; no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/WritePDF.pl. Status: SAFE -- Legitimate ExifTool PDF writing module; no security issues.
LLM auditresponse for QuickTimeStream.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `QuickTimeStream.pl` is a standard Perl module from the ExifTool project (`Image::ExifTool::QuickTime::Stream`). It contains subroutines for extracting embedded metadata (e.g., GPS, accelerometer, camera settings) from QuickTime media data. The code performs binary data parsing, type conversions, and Tag handling via ExifTool's API. No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, `exec`, or other dangerous system calls are present. All network references are documentation URLs. The file does not exfiltrate data, download or execute code, or perform any system modifications beyond its stated purpose of metadata extraction. This is a legitimate upstream library, not a supply-chain attack.

The truncated portion (omitted 1706 lines) was not shown, but the head and tail contain only standard Perl writing and ExifTool-specific code. The absence of any matches for the flagged patterns (curl, wget, eval, base64, exec) in the full file further supports that no malicious code is present.
</details>
<summary>Genuine ExifTool module; no malicious code detected.</summary>
</security_assessment>

[8/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm, src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/QuickTimeStream.pl. Status: SAFE -- Genuine ExifTool module; no malicious code detected.
LLM auditresponse for WriteXMP.pl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream Image::ExifTool library, a legitimate Perl module for writing XMP metadata. All operations—including XMP validation, property capture, serialization, and base64 encoding—are standard for the ExifTool application's functionality. There is no evidence of obfuscated code, unexpected network requests, or data exfiltration. The file uses conventional Perl practices and only references modules within the ExifTool library (e.g., `Image::ExifTool::XMP`). No malicious behavior indicative of a supply-chain attack was found.
</details>
<summary>Standard ExifTool library code; no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/XnView/AddOn/lib/Image/ExifTool.pm...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool/WriteXMP.pl. Status: SAFE -- Standard ExifTool library code; no malicious indicators.
LLM auditresponse for ExifTool.pm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard `Image::ExifTool` Perl module (version 12.67), a well-known and widely used metadata library maintained by Phil Harvey for the exiftool project. The head, tail, and pattern-matched lines shown are all consistent with its normal operation: defining tag tables for hundreds of file formats, handling file I/O, parsing binary data, loading optional Perl modules (e.g., `Win32API::File`, `Time::HiRes`, `Cwd`, `POSIX`) via `eval { require ... }`, and evaluating dynamic conversion expressions like `PrintConv` and `Condition`.  

There is no evidence of:
- Fetching or executing code from an unexpected or unrelated host
- Exfiltrating sensitive system data (e.g., `/etc/shadow`, SSH keys, tokens)
- Obfuscated/encoded payloads intended to hide malicious intent
- Backdoors, reverse shells, or tampering with unrelated system files  

All `eval` usage is standard Perl practice for conditional module loading and runtime expression evaluation in tag-processing logic, which is a core feature of the ExifTool library. The file is consistent with ordinary packaging of the ExifTool module and does not contain injected malicious code.
</details>
<summary>Standard ExifTool Perl module, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/XnView/AddOn/lib/Image/ExifTool.pm. Status: SAFE -- Standard ExifTool Perl module, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 192,095
  Completion Tokens: 10,699
  Total Tokens: 202,794
  Total Cost: $0.019214
  Execution Time: 112.11 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-xnviewmp.txt
Final Status: SAFE


No issues found.
