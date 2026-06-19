---
package: prjoxide-nightly
pkgver: 20260619_9ab3b4e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 04f91022df66399cc45c448ff8c0391dcf3e1054
prompt_tokens: 44780
completion_tokens: 8789
total_tokens: 53569
cost: 0.00561222
execution_time: 72.52
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T08:00:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no evidence of malicious behavior.
  - file: src/prjoxide/libprjoxide/Cargo.toml
    status: safe
    summary: Standard Cargo workspace file, no security concerns.
  - file: src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs
    status: safe
    summary: Standard Rust source file, no security issues.
  - file: src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs
    status: safe
    summary: Standard Rust data structure implementation, no security issues.
  - file: src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs
    status: safe
    summary: Rust data serialization code, no malicious behavior.
  - file: src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs
    status: safe
    summary: Standard Rust serialization utility; no malicious behavior found.
  - file: src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs
    status: safe
    summary: Rust source for FPGA tile location processing, no malicious behavior.
  - file: src/prjoxide/libprjoxide/prjoxide/build.rs
    status: safe
    summary: Standard Rust build script – no security issues.
  - file: src/prjoxide/environment.sh
    status: safe
    summary: Safe environment setup script with no malicious behavior.
  - file: src/prjoxide/radiant.sh
    status: safe
    summary: Standard FPGA build script with no malicious behavior found.
  - file: src/prjoxide/radiant_cmd.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/prjoxide-nightly.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-is9auq92...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-is9auq92
Analyzing prjoxide-nightly AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-is9auq92) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope and `pkgver()` (not explicitly defined, only a static `pkgver` variable) contain no command substitution, `eval`, network calls, or any dynamic execution. The `source` array consists solely of two `git+https://` URLs pointing to the official upstream repository (`github.com/gatecat/prjoxide.git` and `github.com/gatecat/prjoxide-db.git`). Checksums are `SKIP`, which is standard for VCS sources. No malicious code can execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`; only the source fetching (git clone) and PKGBUILD sourcing occur, both of which are safe.
</details>
<summary>
No dangerous top-level code or source URLs; safe to fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code or source URLs; safe to fetch.[/]
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
The PKGBUILD follows standard AUR packaging practices. It fetches the upstream source from the official GitHub repository (`gatecat/prjoxide`) pinned to a specific commit. The submodule configuration redirects the database submodule URL to a local path (the separately fetched `prjoxide-db` source), which is a safe technique to avoid unnecessary network fetches during the build. The build uses `cargo build --release` and `install` commands to deploy the resulting binaries and license. No suspicious external network requests, obfuscation, or dangerous commands (eval, curl, base64, etc.) are present. The SKIP checksums are expected for VCS sources. Overall, this is a clean and legitimate PKGBUILD.
</details>
<summary>
Standard AUR PKGBUILD with no evidence of malicious behavior.
</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no evidence of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 553 files available for selection; offering the 50 highest-priority to the model. 350 lower-priority file(s) were not offered.
LLM response for file selection:
src/prjoxide/libprjoxide/prjoxide/build.rs
src/prjoxide/environment.sh
src/prjoxide/radiant.sh
src/prjoxide/radiant_cmd.sh
src/prjoxide/libprjoxide/Cargo.toml
src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs
src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs
src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs
src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs
src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs
Decided to review 10 additional files: src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs...
[0/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/Cargo.toml, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Cargo workspace configuration file. It declares two workspace members (`prjoxide` and `pyprjoxide`), which is normal for Rust projects with multiple crates. There is no executable code, no network requests, no obfuscation, and no unusual operations. It poses no security risk.
</details>
<summary>Standard Cargo workspace file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
+ Reviewed src/prjoxide/libprjoxide/Cargo.toml. Status: SAFE -- Standard Cargo workspace file, no security concerns.
LLM auditresponse for idstring.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `idstring.rs` is a standard Rust source file implementing an `IdStringDB` struct for managing a string-to-ID mapping. It reads a constids file from disk and writes to a BBA struct. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that deviate from normal packaging or application functionality. The file only performs local file I/O and in-memory data manipulation, consistent with its stated purpose. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard Rust source file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/src/bba/idstring.rs. Status: SAFE -- Standard Rust source file, no security issues.
LLM auditresponse for idxset.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust source file implementing two generic data structures (`IndexedSet` and `IndexedMap`). It contains only safe Rust code with no external dependencies, network requests, file operations, system modifications, obfuscation, or dangerous commands. The code is purely a data structure utility and does not exhibit any malicious behavior.
</details>
<summary>Standard Rust data structure implementation, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/src/bba/idxset.rs. Status: SAFE -- Standard Rust data structure implementation, no security issues.
LLM auditresponse for bbastruct.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Rust source file from the prjoxide project, part of the nextpnr FPGA toolchain. It defines constants and methods for serializing FPGA architecture data (bels, wires, pips, timing, etc.) into a binary format via a `BBAWriter`. There is no network access, no obfuscated code, no dangerous system commands, no exfiltration of data, and no backdoors. All operations are standard data serialization and type conversions using safe Rust. No red flags or supply-chain attack indicators are present.
</details>
<summary>Rust data serialization code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/src/bba/bbastruct.rs. Status: SAFE -- Rust data serialization code, no malicious behavior.
LLM auditresponse for bbafile.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This Rust source file defines a simple `BBAWriter` struct with methods for writing typed values (u8, u16, u32, i8, i16, i32) and strings to an output stream (a `&amp;mut dyn Write`). Each method writes a formatted text line using `writeln!`. There is no networking, code execution (other than normal Rust I/O), file system manipulation beyond the provided `Write` trait, obfuscation, or any other suspicious behavior. The code is consistent with a standard serialization or debugging utility for a binary format. No supply-chain attack indicators are present.
</details>
<summary>
Standard Rust serialization utility; no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh, src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/src/bba/bbafile.rs. Status: SAFE -- Standard Rust serialization utility; no malicious behavior found.
LLM auditresponse for tileloc.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains standard Rust source code for the prjoxide FPGA place-and-route tool. It implements tile location data structures, neighbour calculations, and BBA output generation. There are no network requests, no execution of external commands, no obfuscated or encoded strings, no attempts to access system files, and no data exfiltration. All operations are performed on in-memory chip and database structures using standard Rust collections and I/O. The regex usage is for parsing LUT input wire names, which is legitimate for FPGA tooling. No supply-chain attack indicators are present.
</details>
<summary>Rust source for FPGA tile location processing, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/prjoxide/libprjoxide/prjoxide/build.rs, src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/src/bba/tileloc.rs. Status: SAFE -- Rust source for FPGA tile location processing, no malicious behavior.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) that invokes `capnpc` to compile Cap'n Proto schema files during the build process. The files referenced (`References.capnp`, `LogicalNetlist.capnp`, `DeviceResources.capnp`) are part of the `fpga-interchange-schema` third‑party dependency, which is expected for a project dealing with FPGA interchange schemas. There are no network requests, obfuscation, dangerous command execution, or any behaviour outside normal packaging/build practices. The script performs only local, deterministic code generation consistent with the package's purpose.
</details>
<summary>Standard Rust build script – no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/prjoxide/environment.sh, src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh...
+ Reviewed src/prjoxide/libprjoxide/prjoxide/build.rs. Status: SAFE -- Standard Rust build script – no security issues.
LLM auditresponse for environment.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script sets up environment variables for the prjoxide project and optionally sources a user override file. It creates a default template file (`user_environment.sh`) if missing, which is a standard mechanism for user customization. There are no network requests, no obfuscated code, no dangerous commands, and no exfiltration attempts. The script does only what a normal environment setup script should do. Sourcing a user-provided file is a common pattern; the security of that file depends on the user controlling its contents and permissions, not on this script introducing a vulnerability.
</details>
<summary>Safe environment setup script with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/prjoxide/radiant.sh, src/prjoxide/radiant_cmd.sh...
+ Reviewed src/prjoxide/environment.sh. Status: SAFE -- Safe environment setup script with no malicious behavior.
LLM auditresponse for radiant.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build script for Lattice Radiant FPGA synthesis, part of the prjoxide-nightly AUR package. It configures environment variables, runs synthesis, mapping, place-and-route, and bitstream generation using proprietary tools from the Radiant installation. The script uses a local bitstream cache helper (`bscache.py`) located in the package's own tools directory, which is normal for build automation. No obfuscated code, unexpected network requests, file exfiltration, or system tampering is present. All operations are confined to the user's design files and temporary directories. The script follows typical packaging and build workflow patterns.
</details>
<summary>Standard FPGA build script with no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/prjoxide/radiant_cmd.sh...
+ Reviewed src/prjoxide/radiant.sh. Status: SAFE -- Standard FPGA build script with no malicious behavior found.
LLM auditresponse for radiant_cmd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script sets environment variables for Lattice Radiant command execution. It defines paths, exports library and license variables, and then runs the provided command via `exec $*`. There is no network activity, obfuscation, file exfiltration, or unexpected system modifications. The script follows standard practices for toolchain wrappers.
</details>
<summary>
Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/prjoxide/radiant_cmd.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,780
  Completion Tokens: 8,789
  Total Tokens: 53,569
  Total Cost: $0.005612
  Execution Time: 72.52 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-prjoxide-nightly.txt
Final Status: SAFE


No issues found.
