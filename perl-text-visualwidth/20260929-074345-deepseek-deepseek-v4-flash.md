---
package: perl-text-visualwidth
pkgver: 0.02
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15905
completion_tokens: 7569
total_tokens: 23474
cost: 0.00434602
execution_time: 169.34
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T07:43:44Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file only; no code, no suspicious behavior, safe.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no issues.
  - file: LICENSE
    status: safe
    summary: Standard license text, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE licensing metadata file; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard CPAN Perl PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing perl-text-visualwidth from local mirror...
Materialized perl-text-visualwidth
Analyzing perl-text-visualwidth AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only global variable assignments and function definitions. No command substitutions, no eval, no download or execution of untrusted code occurs at the top level. The parameter expansions (e.g., `${_dist@L}`, `${_author::1}`) are standard bash string manipulations used to construct the CPAN source URL. All executable code is confined to the `build()`, `check()`, and `package()` functions, which are not executed during `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain ISC-style license text attributed to Arch Linux Contributors. It contains no code, no URLs, no scripts, and no executable instructions of any kind. There is no network activity, file manipulation, obfuscation, or behavior that could constitute a supply-chain risk.

The license text is standard packaging metadata and matches what would normally accompany a Perl package distributed through the AUR. No security issues are present.
</details>
<evidence></evidence>
<summary>License file only; no code, no suspicious behavior, safe.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- License file only; no code, no suspicious behavior, safe.
[1/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file for nvchecker, defining where to check for new versions of the Perl module Text-VisualWidth. It specifies the source as CPAN and the package name. There are no executable commands, no obfuscated code, no network requests beyond what is expected for version checking. No security concerns.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a Perl module package from CPAN. It contains a pinned source URL with a specific checksum (SHA-256) provided. There are no commands, scripts, or network requests. No suspicious content or obfuscation is present. The file is a standard AUR metadata file with no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text for the package. It contains no executable code, network requests, file operations, or any other behavior. There is nothing suspicious or malicious present.
</details>
<evidence></evidence>
<summary>Standard license text, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license text, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard REUSE.toml configuration used to declare copyright and license metadata for packaging files. It contains no executable code — only a version field, a list of file path patterns (PKGBUILD, README.md, .SRCINFO, install/, sysusers/, tmpfiles/, service files, etc.), and an SPDX license annotation ("SPDX-FileCopyrightText", "SPDX-License-Identifier"). All listed paths are standard AUR packaging artifacts, and "0BSD" is a normal open-source license identifier. There is no obfuscation, encoding, network activity, filesystem modification, or any behavior outside the scope of the REUSE licensing compliance tool. The file is consistent with ordinary packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Benign REUSE licensing metadata file; no malicious behavior present.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE licensing metadata file; no malicious behavior present.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard, well-formed Perl module PKGBUILD for Text::VisualWidth, an upstream CPAN distribution. The source URL correctly uses bash substring expansion (`${_author::1}` = &quot;N&quot;, `${_author::2}` = &quot;NA&quot;) to construct the standard MetaCPAN authors path `authors/id/N/NA/NANZOU/Text-VisualWidth-0.02.tar.gz` over HTTPS, and the tarball is pinned with a real-looking sha256 checksum rather than SKIP. The build/check/package functions follow the standard Perl toolchain conventions: `perl Makefile.PL`, `make`, `make test`, and `make install` with `DESTDIR="$pkgdir"`. Unsetting PERL5LIB/PERL_MM_OPT/PERL_LOCAL_LIB_ROOT is ordinary hygiene to prevent local::lib contamination during builds.

There is no obfuscated code, no base64/hex/eval, no network fetching besides the declared upstream source, no shell command injection, no file writes outside the build directory or `$pkgdir`, and no post-install hooks. Minor observations — `arch=('x86_64')` could be `any` for a pure-Perl module and `pkgver` is hardcoded — are hygiene matters at most, not security issues. The tarball content may contain the project&apos;s own test suite (`make test`), which is expected upstream behavior, not a supply-chain indicator.
</details>
<evidence></evidence>
<summary>Standard CPAN Perl PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard CPAN Perl PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,905
  Completion Tokens: 7,569
  Total Tokens: 23,474
  Total Cost: $0.004346
  Execution Time: 169.34 seconds

Final Status: SAFE


No issues found.
