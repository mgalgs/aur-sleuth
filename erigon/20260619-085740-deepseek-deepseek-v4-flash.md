---
package: erigon
pkgver: 3.4.4
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 41051
completion_tokens: 10454
total_tokens: 51505
cost: 0.00557631
execution_time: 85.29
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T08:57:40Z
file_verdicts:
  - file: v3.4.4.tar.gz
    status: skipped
    summary: "Skipping binary file: v3.4.4.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and official source.
  - file: src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json
    status: safe
    summary: Standard package.json, no malicious content.
  - file: src/erigon-3.4.4/Makefile
    status: safe
    summary: Standard upstream Makefile; no malicious indicators.
  - file: src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js
    status: safe
    summary: Standard EVM tracer script, no security issues.
  - file: src/erigon-3.4.4/cmd/evm/transition-test.sh
    status: safe
    summary: Documentation/test script; no malicious behavior.
  - file: src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh
    status: safe
    summary: Benign compatibility check script with no malicious behavior.
  - file: src/erigon-3.4.4/cmd/downloader/recompress.sh
    status: safe
    summary: Audit confirms safe snapshot recompression script
  - file: src/erigon-3.4.4/nightly.sh
    status: safe
    summary: Simple nightly test script, no malicious behavior.
  - file: bump-version.sh
    status: safe
    summary: Standard AUR version bump helper script, no malicious behavior.
  - file: src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts
    status: safe
    summary: Safe TypeScript utility for Ethereum trace test generation.
  - file: src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh
    status: safe
    summary: Maintainer helper script for snapshot hash updates.
---

Cloning https://aur.archlinux.org/erigon.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dc04z3qx...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dc04z3qx
Analyzing erigon AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dc04z3qx) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only sets package metadata and defines source/download items, plus standard build/package functions that are not executed during `--nobuild --noprepare`. The source is a single tarball from the official project GitHub repository (`github.com/erigontech/erigon`). No `pkgver()` function is defined, so no code runs during sourcing. There are no top-level commands, obfuscated operations, or network redirections. The only downloads are the expected upstream archive, which is safe to fetch.
</details>
<summary>Legitimate PKGBUILD from official repository.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Legitimate PKGBUILD from official repository.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, v3.4.4.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed v3.4.4.tar.gz. Status: SKIPPED -- Skipping binary file: v3.4.4.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard and contains no malicious or suspicious behavior. It downloads the source tarball from the official upstream GitHub releases page (`https://github.com/erigontech/erigon/archive/refs/tags/v3.4.4.tar.gz`), uses a hardcoded BLAKE2b checksum to verify integrity, and builds using the project's own Makefile targets. The `package()` function installs the resulting binaries with standard `install -Dm755` commands. There are no unexpected network requests, obfuscated code, dangerous command invocations (eval, base64, curl|bash, etc.), or file operations outside the package's own destination. The use of `for binary in build/bin/*` and conditional naming is normal packaging practice. No evidence of a supply-chain attack is present.
</details>
<summary>Standard PKGBUILD with pinned checksum and official source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and official source.
Reviewed all required files.
Deciding which files to review next...
Note: 7364 files available for selection; offering the 50 highest-priority to the model. 5284 lower-priority file(s) were not offered.
LLM response for file selection:
bump-version.sh
src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json
src/erigon-3.4.4/Makefile
src/erigon-3.4.4/cmd/downloader/recompress.sh
src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh
src/erigon-3.4.4/cmd/evm/transition-test.sh
src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts
src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js
src/erigon-3.4.4/nightly.sh
src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh
Decided to review 10 additional files: bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing bump-version.sh...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh...
[0/10] Reviewing bump-version.sh, src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Node.js `package.json` file for a project named `gha-test-report`. It declares dependencies on well-known npm packages (`@actions/core`, `@actions/github`, `adm-zip`) and uses normal build scripts (`tsc`). There is no obfuscated code, no suspicious network requests, no dangerous commands, and no deviation from standard project configuration. The content is consistent with a legitimate GitHub Actions utility package and does not contain any malicious elements.
</details>
<summary>Standard package.json, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing bump-version.sh, src/erigon-3.4.4/Makefile, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh...
+ Reviewed src/erigon-3.4.4/.github/workflows/scripts/test_report/package.json. Status: SAFE -- Standard package.json, no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is the upstream build system for the erigon Ethereum client. It contains standard build targets (Go compilation, Docker builds, test runners, protobuf generation, etc.). All network operations (downloads of `protoc` from `github.com/protocolbuffers/protobuf`, `git clone` of `ethereum/hive` for testing) go to legitimate upstream sources and are part of normal development workflows. There is no obfuscated code, no data exfiltration, no execution of untrusted scripts, and no backdoors. The use of mutable refs (e.g., `git clone` without a pinned commit) is a reproducibility concern but not evidence of a supply-chain attack. The file is typical for a Go-based blockchain project and does not contain any malicious or suspicious behavior.
</details>
<summary>Standard upstream Makefile; no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh...
+ Reviewed src/erigon-3.4.4/Makefile. Status: SAFE -- Standard upstream Makefile; no malicious indicators.
LLM auditresponse for 4byte_tracer_legacy.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript tracer for the Ethereum Virtual Machine (EVM), part of the go-ethereum / Erigon project. It collects 4-byte method identifiers from contract calls during transaction execution. The code is straightforward, non-obfuscated, and contains no network requests, file operations, or system modifications. All operations (string comparisons, arithmetic, memory access, object manipulation) are normal for an EVM tracer. No supply-chain attack indicators are present. The file only implements the expected tracer interface (`step`, `fault`, `result`) to aggregate data for post-processing.
</details>
<summary>Standard EVM tracer script, no security issues.</summary>
</security_assessment>

[3/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/cmd/evm/transition-test.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh...
+ Reviewed src/erigon-3.4.4/execution/tracing/tracers/js/internal/tracers/4byte_tracer_legacy.js. Status: SAFE -- Standard EVM tracer script, no security issues.
LLM auditresponse for transition-test.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a test and documentation helper for the `evm t8n` tool. It prints markdown-formatted documentation, runs local invocations of `./evm t8n` with testdata from relative paths (`./testdata/...`), and displays results. There are no network requests, no obfuscated code, no use of dangerous commands like `eval`, `curl`, `wget`, or `base64` decoding. All file operations are local and limited to test data that ships with the package. The script does not exfiltrate data, download or execute untrusted code, or modify system files outside the expected test environment. This is standard packaging behavior for documenting and validating the functionality of the bundled binary.
</details>
<summary>Documentation/test script; no malicious behavior.</summary>
</security_assessment>

LLM auditresponse for silkworm_compat_check.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script performs a compatibility check for the Silkworm library within the Erigon package. It reads `/etc/os-release` to determine the Linux distribution and version, checks the minor version of glibc via `ldd --version`, and checks the version of libstdc++ via `ldconfig -p` and `readlink`. All operations are confined to reading standard system paths and executing benign, built-in commands. No network access, file writes, obfuscated code, or execution of untrusted content occurs. The script's logic is transparent and serves only to verify that the environment meets minimum dependency requirements (Debian >=12, Ubuntu >=22, glibc >=2.34, glibcpp >= 30). There are no supply-chain attack indicators.
</details>
<summary>Benign compatibility check script with no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh, src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh...
+ Reviewed src/erigon-3.4.4/cmd/evm/transition-test.sh. Status: SAFE -- Documentation/test script; no malicious behavior.
[5/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/recompress.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh...
+ Reviewed src/erigon-3.4.4/node/silkworm/silkworm_compat_check.sh. Status: SAFE -- Benign compatibility check script with no malicious behavior.
LLM auditresponse for recompress.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `recompress.sh` is a utility for recompressing erigon snapshot files using two local binaries (`erigon_old` and `erigon`) located under `./build/bin/`. It iterates over snapshot files in a specified directory, decompresses them via the old binary, compresses them via the new binary, and renames the output in place. No network requests, downloads, evals, obfuscated commands, or data exfiltration are present. The use of `ls` parsing for file selection is a style concern but not malicious. All operations are confined to the local snapshot directory and the package's own built binaries, consistent with ordinary packaging maintenance tasks.
</details>
<summary>Audit confirms safe snapshot recompression script</summary>
</security_assessment>

[6/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts, src/erigon-3.4.4/nightly.sh...
+ Reviewed src/erigon-3.4.4/cmd/downloader/recompress.sh. Status: SAFE -- Audit confirms safe snapshot recompression script
LLM auditresponse for nightly.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward CI test runner: it builds the `geth` binary from the project source, runs it in the background for 5 hours, then kills the process and captures its exit status. All commands (`make`, `sleep`, `kill`, `wait`) are standard and serve the intended purpose of validating the build and runtime stability. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, and no modification of system files outside the build/working directory. The script does not contain any hidden or malicious operations; it behaves exactly as a nightly test script should.
</details>
<summary>Simple nightly test script, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing bump-version.sh, src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts...
+ Reviewed src/erigon-3.4.4/nightly.sh. Status: SAFE -- Simple nightly test script, no malicious behavior.
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper that automates version bumps. It downloads the upstream source tarball from the official GitHub releases URL (`https://github.com/ledgerwatch/erigon/archive/refs/tags/v${pkgver}.tar.gz`), computes a BLAKE2b checksum, and updates the PKGBUILD accordingly. All operations are standard packaging tasks: fetching the source, generating checksums, updating metadata, and regenerating `.SRCINFO`. There is no obfuscation, no suspicious network destinations, no execution of unchecked content, and no exfiltration or backdoor code.
</details>
<summary>Standard AUR version bump helper script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh, src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts...
+ Reviewed bump-version.sh. Status: SAFE -- Standard AUR version bump helper script, no malicious behavior.
LLM auditresponse for index.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `index.ts` is a straightforward TypeScript utility for generating Ethereum transaction trace test cases. It accepts command-line arguments for an RPC URL, transaction hash, trace configuration, and output file path. It then connects to the specified RPC endpoint, fetches transaction and block data using standard Ethereum JSON-RPC methods (including `debug_traceTransaction`), and writes a formatted JSON result to the user-specified output file.

No obfuscated code, suspicious network requests (the only network calls are to the user-provided RPC URL), or dangerous system operations are present. The script does not download or execute any external code, exfiltrate local data, or modify system files. It is consistent with an upstream development/testing tool for the Erigon Ethereum client, and no malicious behavior indicative of a supply-chain attack was found.
</details>
<summary>Safe TypeScript utility for Ethereum trace test generation.</summary>
</security_assessment>

[9/10] Reviewing src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh...
+ Reviewed src/erigon-3.4.4/execution/tracing/tracers/internal/tracetest/testgenerator/src/index.ts. Status: SAFE -- Safe TypeScript utility for Ethereum trace test generation.
LLM auditresponse for torrent_hashes_update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintainer helper for updating torrent hashes in the erigon-snapshot repository. It pulls from the upstream erigon-snapshot repo, runs a Go program from the erigon source to generate hashes, commits, and pushes using SSH. There is no evidence of malicious code injection, data exfiltration, or execution of untrusted code. The use of a mutable branch and hardcoded SSH key path are not security threats in this context.
</details>
<summary>Maintainer helper script for snapshot hash updates.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/erigon-3.4.4/cmd/downloader/torrent_hashes_update.sh. Status: SAFE -- Maintainer helper script for snapshot hash updates.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: v3.4.4.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,051
  Completion Tokens: 10,454
  Total Tokens: 51,505
  Total Cost: $0.005576
  Execution Time: 85.29 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-erigon.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dc04z3qx/v3.4.4.tar.gz: [SKIPPED] Skipping binary file: v3.4.4.tar.gz
