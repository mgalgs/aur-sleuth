---
package: ttf-google-fonts-git
pkgver: r13968.3f5eb2afc
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 49553
completion_tokens: 7092
total_tokens: 56645
cost: 0.00573633
execution_time: 194.71
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T09:20:54Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Google Fonts; no malicious behavior.
  - file: src/fonts/.ci/run.py
    status: safe
    summary: Standard font QA script; no malicious behavior found.
  - file: src/fonts/ofl/nanummyeongjo/hotfix-space.py
    status: safe
    summary: Routine font glyph patching script; no security issues.
  - file: src/fonts/axisregistry/pyproject.toml
    status: safe
    summary: Standard Python project config, no security issues.
  - file: src/fonts/axisregistry/build.rs
    status: safe
    summary: Standard Rust build script, no security issues.
  - file: src/fonts/tags/all/stats.py
    status: safe
    summary: Benign Python stats script, no malicious code found.
  - file: src/fonts/axisregistry/src/lib.rs
    status: safe
    summary: Standard Rust font library – no security issues detected.
  - file: src/fonts/tags/all/lowtags.py
    status: safe
    summary: Safe utility script for analyzing font tag counts.
  - file: src/fonts/axisregistry/Cargo.toml
    status: safe
    summary: Standard Rust manifest, no suspicious content.
  - file: src/fonts/lang/snippets/fix-exemplars-bases.py
    status: safe
    summary: Safe data-processing script for language exemplar character sets.
  - file: src/fonts/.ci/whatchanged.py
    status: safe
    summary: Routine git diff analysis script, no malicious behavior.
---

Cloning https://aur.archlinux.org/ttf-google-fonts-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ru0dkvnd...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ru0dkvnd
Analyzing ttf-google-fonts-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ru0dkvnd) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a git repository from the official Google Fonts project (`https://github.com/google/fonts.git`), which is standard and expected for a VCS package. The top-level scope contains only variable assignments and arrays; no commands are executed. The `pkgver()` function runs `git rev-list` and `git rev-parse` on the cloned repository to generate a version string—these are local git operations and do not involve any external network requests or code execution beyond the expected build process. The base64-encoded string in a contributor comment is not executed and poses no risk. There is no malicious code in the global scope or `pkgver()` that would exfiltrate data, download payloads, or execute untrusted commands during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<summary>Standard VCS PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard VCS PKGBUILD with no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for the Google Fonts project. It clones the official Google Fonts repository from `https://github.com/google/fonts.git`, which is the legitimate upstream source. The `sha512sums` are set to `SKIP`, which is normal for VCS (git) sources.

The `package()` function iterates over `.ttf` font files in the source directory, uses `fc-query` to determine the font family, and installs them into `$pkgdir/usr/share/fonts/` along with licenses. It also intentionally omits certain font families that are already provided by other Arch packages. The only non-standard element is a contributor comment containing a base64-encoded email address, but this is never executed and exists only as a static comment in the PKGBUILD. All commands (`git`, `fc-query`, `install`, `find`, `mv`) are standard tools used in font packaging, and there are no network requests, obfuscated code, or unexpected system modifications beyond the intended installation of font files.
</details>
<summary>Standard AUR PKGBUILD for Google Fonts; no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Google Fonts; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 13086 files available for selection; offering the 50 highest-priority to the model. 2286 lower-priority file(s) were not offered.
LLM response for file selection:
src/fonts/.ci/run.py
src/fonts/.ci/whatchanged.py
src/fonts/axisregistry/build.rs
src/fonts/axisregistry/src/lib.rs
src/fonts/tags/all/lowtags.py
src/fonts/tags/all/stats.py
src/fonts/lang/snippets/fix-exemplars-bases.py
src/fonts/ofl/nanummyeongjo/hotfix-space.py
src/fonts/axisregistry/Cargo.toml
src/fonts/axisregistry/pyproject.toml
Decided to review 10 additional files: src/fonts/.ci/run.py, src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/build.rs, src/fonts/axisregistry/src/lib.rs, src/fonts/tags/all/lowtags.py, src/fonts/tags/all/stats.py, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/ofl/nanummyeongjo/hotfix-space.py, src/fonts/axisregistry/Cargo.toml, src/fonts/axisregistry/pyproject.toml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/fonts/.ci/whatchanged.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/ofl/nanummyeongjo/hotfix-space.py...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/ofl/nanummyeongjo/hotfix-space.py, src/fonts/axisregistry/Cargo.toml...
[0/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/.ci/run.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/ofl/nanummyeongjo/hotfix-space.py, src/fonts/axisregistry/Cargo.toml, src/fonts/axisregistry/pyproject.toml...
LLM auditresponse for run.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CI/QA script from the Google Fonts repository. It uses `subprocess.run` to call known tools (`gftools`, `pytest`) for font quality assurance. There is no obfuscated code, no suspicious network requests (the `--pr-url-body` only constructs a URL for reports, not fetching), no file exfiltration, and no unexpected system modifications. All operations are consistent with the package's stated purpose of managing and testing Google Fonts. No supply-chain attack indicators are present.
</details>
<summary>
Standard font QA script; no malicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/ofl/nanummyeongjo/hotfix-space.py, src/fonts/axisregistry/Cargo.toml, src/fonts/axisregistry/pyproject.toml...
+ Reviewed src/fonts/.ci/run.py. Status: SAFE -- Standard font QA script; no malicious behavior found.
LLM auditresponse for hotfix-space.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a routine font maintenance utility that adds a space glyph (U+0020 and U+00A0) to TrueType fonts by manipulating font tables using the `fontTools` library. It iterates over `.ttf` files in the current directory, appends a "space" glyph to the glyph order, and sets version metadata. There are no network requests, no execution of external code, no obfuscation, and no operations outside the intended scope of font patching. It performs exactly what its filename and comments describe: a hotfix for missing space characters in font files.</details>
<summary>Routine font glyph patching script; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/axisregistry/Cargo.toml, src/fonts/axisregistry/pyproject.toml...
+ Reviewed src/fonts/ofl/nanummyeongjo/hotfix-space.py. Status: SAFE -- Routine font glyph patching script; no security issues.
LLM auditresponse for pyproject.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `pyproject.toml` configuration for a Python package called `axisregistry` from Google Fonts. It defines build system requirements (setuptools), project metadata, dependencies, and tool settings. There are no suspicious network requests, obfuscated code, dangerous commands, or any deviations from normal packaging practices. All dependencies point to known Python packages. The content is entirely benign and consistent with the package's stated purpose.
</details>
<summary>Standard Python project config, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/build.rs, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/axisregistry/Cargo.toml...
+ Reviewed src/fonts/axisregistry/pyproject.toml. Status: SAFE -- Standard Python project config, no security issues.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) that generates Rust source code from `.textproto` files at compile time. It reads files from a hardcoded glob pattern (`Lib/axisregistry/data/*.textproto`) within the crate's source tree, parses them using the `gf_metadata` library (a legitimate dependency), and produces a static `BTreeMap` of `AxisProto` objects. The generated code is written to `OUT_DIR/data.rs`, which is standard for Rust build scripts. There are no network requests, no execution of external binaries, no obfuscation, and no dangerous operations. All file operations are confined to the build environment and source tree. No supply chain attack indicators are present.
</details>
<summary>Standard Rust build script, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/tags/all/stats.py, src/fonts/tags/all/lowtags.py, src/fonts/axisregistry/Cargo.toml...
+ Reviewed src/fonts/axisregistry/build.rs. Status: SAFE -- Standard Rust build script, no security issues.
LLM auditresponse for stats.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward utility for computing tag statistics from a local CSV file. It uses only standard Python libraries (collections, csv, pathlib, statistics) and performs no network operations, no external command execution, and no file writes. There is no obfuscation, no use of dangerous functions like `eval`, `exec`, `base64`, `curl`, or `wget`. The file simply reads `families.csv` and prints statistics. This is consistent with a harmless development or analysis tool, not a supply-chain attack.
</details>
<summary>
Benign Python stats script, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/axisregistry/src/lib.rs, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/tags/all/lowtags.py, src/fonts/axisregistry/Cargo.toml...
+ Reviewed src/fonts/tags/all/stats.py. Status: SAFE -- Benign Python stats script, no malicious code found.
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust library module (lib.rs) that implements font metadata processing for Google Fonts - specifically building and modifying OpenType font name tables, STAT tables, and fvar instances. The code is clean, well-structured, and contains no obfuscation, network requests, system command execution, or data exfiltration. All operations are local font file manipulation using the `fontations` crate.

The use of `include!(concat!(env!("OUT_DIR"), "/data.rs"));` is a standard Rust pattern for including build-script-generated code at compile time, not a security concern. The test binaries embedded via `include_bytes!` are test fixtures from the project's own test data directory and pose no risk.

There are no unconventional or dangerous patterns. The code is consistent with legitimate font processing utilities and does not deviate from standard Rust packaging practices.
</details>
<summary>Standard Rust font library – no security issues detected.</summary>
</security_assessment>

[6/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/tags/all/lowtags.py, src/fonts/axisregistry/Cargo.toml...
+ Reviewed src/fonts/axisregistry/src/lib.rs. Status: SAFE -- Standard Rust font library – no security issues detected.
LLM auditresponse for lowtags.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `lowtags.py` is a utility that lists Google Font families with fewer than a specified number of tags. It reads a local CSV file (`families.csv`) and fetches a list of all public font families from the official Google Fonts API (`https://fonts.google.com/metadata/fonts`). The network request is to a legitimate, expected endpoint and retrieves only metadata (JSON). There is no obfuscated code, no use of dangerous commands (eval, base64, curl, wget, exec), and no file operations beyond reading the local CSV. The script does not exfiltrate data, install backdoors, or perform any system modifications. It is a standard helper tool for analyzing tag counts and poses no security risk.
</details>
<summary>Safe utility script for analyzing font tag counts.</summary>
</security_assessment>

[7/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/lang/snippets/fix-exemplars-bases.py, src/fonts/axisregistry/Cargo.toml...
+ Reviewed src/fonts/tags/all/lowtags.py. Status: SAFE -- Safe utility script for analyzing font tag counts.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust `Cargo.toml` manifest file for the `google-fonts-axisregistry` crate. It declares package metadata, dependencies (bytes, serde, fontations, etc.), and build dependencies (glob, proc-macro2, etc.) fetched from the official crates.io registry or GitHub repository as indicated by the `repository` field. There are no embedded scripts, network requests outside of normal cargo behavior, encoded payloads, or any suspicious operations. The file conforms to typical Rust packaging practices and does not exhibit any malicious or anomalous content.
</details>
<summary>Standard Rust manifest, no suspicious content.</summary>
</security_assessment>

[8/10] Reviewing src/fonts/.ci/whatchanged.py, src/fonts/lang/snippets/fix-exemplars-bases.py...
+ Reviewed src/fonts/axisregistry/Cargo.toml. Status: SAFE -- Standard Rust manifest, no suspicious content.
LLM auditresponse for fix-exemplars-bases.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script processes language exemplar character data from protobuf-format files. It reads language definitions, adjusts the classification of characters between "bases" and "marks", and writes the updated data back. The script performs no network requests, no exfiltration of system data, no execution of external commands, and no obfuscated or encoded operations. It is a standard data-processing utility for font/language character set maintenance.

The only file operations are reading and writing the same local protobuf files (passed as arguments). The logic is purely character-category manipulation based on Unicode categories. There is no evidence of malicious behavior such as backdoors, credential theft, or supply-chain attack injection.
</details>
<summary>
Safe data-processing script for language exemplar character sets.</summary>
</security_assessment>

[9/10] Reviewing src/fonts/.ci/whatchanged.py...
+ Reviewed src/fonts/lang/snippets/fix-exemplars-bases.py. Status: SAFE -- Safe data-processing script for language exemplar character sets.
LLM auditresponse for whatchanged.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python utility script for analyzing git diff output in the Google Fonts repository. It only runs `git diff` on a specified branch, parses the output to categorize changes, and returns a list of directory/check-type pairs. There is no network access, no obfuscated code, no unexpected file operations, and no execution of downloaded content. The script does not exfiltrate data, install backdoors, or perform any supply-chain attack. It is a normal maintainer helper for tracking font repository changes.
</details>
<summary>Routine git diff analysis script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/fonts/.ci/whatchanged.py. Status: SAFE -- Routine git diff analysis script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,553
  Completion Tokens: 7,092
  Total Tokens: 56,645
  Total Cost: $0.005736
  Execution Time: 194.71 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-ttf-google-fonts-git.txt
Final Status: SAFE


No issues found.
