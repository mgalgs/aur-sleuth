---
package: rusty-coco-git
pkgver: r8.9c07c1f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15188
completion_tokens: 4387
total_tokens: 19575
cost: 0.002180542
execution_time: 21.98
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T04:08:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting standard AUR packaging files; no threats.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR -git metadata; only a SKIPped VCS source, no malice.
  - file: rusty-coco.install
    status: safe
    summary: Install script only prints informational messages; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust -git AUR packaging; no malicious behavior found.
  - file: rusty-coco.template.sh
    status: safe
    summary: "Simple exec launcher for the package's own binary; no malicious behavior."
---

Materializing rusty-coco-git from local mirror...
Materialized rusty-coco-git
Analyzing rusty-coco-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions, no obfuscated code, and no immediate calls to external tools such as `curl`, `wget`, `eval`, or `/bin/sh`. All operations that involve network access (git clone), compilation (cargo build), or system modification are strictly inside the `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not executed** by `makepkg --printsrcinfo`. The `source` array uses standard AUR VCS syntax pointing to the project's own upstream repository, and the `sha256sums` entry contains `SKIP` for the VCS source, which is normal and explicitly permitted by the guidelines for this gate.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution risk.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple `.gitignore` containing a whitelist pattern set typical of an AUR packaging repository: it ignores everything (`*`) then un-ignores `.gitignore`, `PKGBUILD`, `.SRCINFO`, shell scripts, and `.install` files. There is no executable code, no network access, no file manipulation outside the repo's ignore rules, and no obfuscation. This is consistent with ordinary AUR maintainer workflow.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore whitelisting standard AUR packaging files; no threats.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting standard AUR packaging files; no threats.
[1/5] Reviewing .SRCINFO, PKGBUILD, rusty-coco.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine `.SRCINFO` metadata file for an AUR `-git` package. It declares a single VCS source, `git+https://github.com/gorsat/coco.git#branch=main`, which is the package's own declared upstream repository (matching the `url` field), plus a local `rusty-coco.template.sh` source that carries a concrete sha256 checksum. No commands are executed here, no network fetches beyond the declared git source, and there is no obfuscation, encoding, or data movement.

The `sha256sums = SKIP` entry applies to the VCS git source, which is standard and expected for `-git` packages and is not by itself a security issue (it is a trust/hygiene choice, and the source should not be considered "verified"). The remaining metadata (makedepends cargo/git, depends on glibc/alsa-lib, install script reference) is consistent with an emulator package built with Cargo. Nothing in this file deviates from ordinary AUR packaging or shows signs of injected malicious behavior; note only that the referenced `rusty-coco.install` and `rusty-coco.template.sh` are not part of this file and would need separate review.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git metadata; only a SKIPped VCS source, no malice.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, rusty-coco.install, rusty-coco.template.sh...
[2/5] Reviewing PKGBUILD, rusty-coco.install, rusty-coco.template.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR -git metadata; only a SKIPped VCS source, no malice.
LLM auditresponse for rusty-coco.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rusty-coco.install` is a standard AUR package install script containing only a `post_install()` hook. It performs no file operations, no network requests, and executes no external commands.

The only actions are `echo` statements printing informational text to the user: describing the two bundled binaries (`rusty-coco` and `rusty-coco-demo`) and reminding the user to provide the required ROM files (`BASIC.ROM`, `EXTBASIC.ROM`) under `/usr/share/rusty-coco/`. This is entirely consistent with ordinary packaging practice and contains no obfuscation, no downloads, no `eval`, and no system modifications.

No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Install script only prints informational messages; no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, rusty-coco.template.sh...
+ Reviewed rusty-coco.install. Status: SAFE -- Install script only prints informational messages; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary AUR packaging conventions for a Rust `-git` package. The only remote source is the project's own declared upstream (`https://github.com/gorsat/coco.git`, branch `main`), which is a mutable ref with `SKIP` — standard and expected for VCS packages, though it means the build is not pinned to an immutable commit. The second source, `rusty-coco.template.sh`, is a locally shipped file with a real SHA-256 checksum, so it is integrity-checked.

The `prepare()` step performs routine path customization: it copies and `sed`-edits the upstream YAML config to point at `/usr/share/rusty-coco`, generates two small launcher scripts from the checksummed template via `%CONFFILE%` substitution, and runs `cargo fetch --locked`. `build()` simply runs `cargo build --frozen --release --all-features` against the package's own upstream, and `package()` installs the resulting binary, sample/ROM-adjacent `.asm` files, configs, docs, and license into `$pkgdir`. There are no calls to `curl`/`wget`, no `eval`/base64/hex-obfuscated payloads, no unexpected file writes outside `$srcdir`/`$pkgdir`, no network exfiltration, and no third-party hosts.

Minor hygiene notes (not threats): the VCS `main` branch is unpinned and the source is `SKIP`, so build reproducibility depends on upstream at fetch time. The `${coco_root//%ITEM%/lib}` construction is stylistically odd but resolves to standard `/usr/...` install paths. No malicious or supply-chain-injected behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard Rust -git AUR packaging; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing rusty-coco.template.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust -git AUR packaging; no malicious behavior found.
LLM auditresponse for rusty-coco.template.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small launcher wrapper generated from a template. It simply replaces `%CONFFILE%` (presumably at install/build time by the PKGBUILD) and `exec`s the package's own binary at `/usr/lib/rusty-coco/coco`, forwarding all command-line arguments with `"$@"`.

There are no network requests, no `eval`/`base64`/`curl`/`wget`, no file manipulation outside the package's own binary path, and no obfuscation. The `&quot;` entities are just HTML/XML-escaped quote characters from the file, and the `%CONFFILE%` token is a standard templating placeholder. This is consistent with an ordinary application launcher and shows no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Simple exec launcher for the package's own binary; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed rusty-coco.template.sh. Status: SAFE -- Simple exec launcher for the package's own binary; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,188
  Completion Tokens: 4,387
  Total Tokens: 19,575
  Total Cost: $0.002181
  Execution Time: 21.98 seconds

Final Status: SAFE


No issues found.
