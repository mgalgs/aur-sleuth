---
package: venture-git
pkgver: 0.2.4.r0.gf5cca87
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 15578
completion_tokens: 12535
total_tokens: 28113
cost: 0.00365832
execution_time: 75.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T08:03:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Normal AUR metadata, no malicious content.
  - file: PKGBUILD
    status: unsafe
    summary: Source substituted with untrusted personal fork.
    evidence: "source=(\"$_pkgname::git+https://github.com/Villagers654/Venture.git#branch=main\")"
    evidence_line: 21
---

Materializing venture-git from local mirror...
Materialized venture-git
Analyzing venture-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only standard variable definitions and function declarations. No commands, evaluations, or substitutions that could execute malicious code are present in the top-level scope. The `source` array points to the official upstream git repository via the standard VCS syntax (`git+https://...`), which does not execute during sourcing. Risks confined to the function bodies (`pkgver()`, `build()`, `package()`) are out of scope for this specific `makepkg --printsrcinfo` gate.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and only allows tracking of `.gitignore`, `PKGBUILD`, and `.SRCINFO`. This is a common and safe practice to prevent accidental commits of build artifacts or other generated files. No obfuscation, network requests, or dangerous commands are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `venture-git` package, which is a Meta Quest emulator. It contains only metadata: package name, description, version, dependencies, and source location. The source is a git repository from GitHub (`Villagers654/Venture.git#branch=main`), which is typical for VCS-based AUR packages. Checksums are set to `SKIP`, which is required for VCS sources and not a security concern. There are no executable commands, obfuscated code, suspicious network requests, or any deviation from normal packaging practices. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Normal AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Normal AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD replaces the expected official upstream source with a personal, unverified GitHub fork. The declared package URL points to the project&#39;s official site (venture-emu.org), whose upstream development naturally resides in the Venture-emu organization. However, the `source` array fetches the entire codebase from `Villagers654/Venture` — a completely separate personal account — using an unpinned mutable branch (`#branch=main`). The `build()` function then directly executes code from this substituted source (`python tools/bootstrap.py --jdk --angle`), giving the owner of the personal fork the ability to inject arbitrary commands into the build process at any time. This constitutes a classic supply-chain substitution attack: the PKGBUILD redirects the package to an untrusted, unexpected destination and runs the code fetched from it.
</details>
<evidence>
source=("$_pkgname::git+https://github.com/Villagers654/Venture.git#branch=main")
</evidence>
<summary>Source substituted with untrusted personal fork.</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>The initial verdict stands because the source URL is substituted to a personal GitHub fork (`Villagers654/Venture.git`) that is unrelated to the official upstream organization (`Venture-emu`). This is not a case of a maintainer using their own fork – the maintainer is `dim-ghub`, while the fork owner is `Villagers654`, a completely different account. The `build()` function then executes code fetched from this unexpected host (`python tools/bootstrap.py ...`), which fits the rule&#39;s definition of genuine malicious behavior: downloading code from an untrusted/unexpected host and executing it. The fact that the fork could theoretically be a legitimate mirror does not remove the supply-chain risk, as there is no verification linking `Villagers654` to the official project. This is not merely an unpinned source or hygiene issue; it is a substitution of the entire code origin.</details>
<evidence>source=("$_pkgname::git+https://github.com/Villagers654/Venture.git#branch=main")</evidence>
<summary>Source substituted to unrelated personal fork.</summary>
</security_assessment>

[3/3] Reviewing ...
x Reviewed PKGBUILD. Status: UNSAFE -- Source substituted with untrusted personal fork.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## PKGBUILD

Status: UNSAFE

Summary: Source substituted with untrusted personal fork.

Evidence (line 21):

```
source=("$_pkgname::git+https://github.com/Villagers654/Venture.git#branch=main")
```

Details:

The PKGBUILD replaces the expected official upstream source with a personal, unverified GitHub fork. The declared package URL points to the project's official site (venture-emu.org), whose upstream development naturally resides in the Venture-emu organization. However, the `source` array fetches the entire codebase from `Villagers654/Venture` — a completely separate personal account — using an unpinned mutable branch (`#branch=main`). The `build()` function then directly executes code from this substituted source (`python tools/bootstrap.py --jdk --angle`), giving the owner of the personal fork the ability to inject arbitrary commands into the build process at any time. This constitutes a classic supply-chain substitution attack: the PKGBUILD redirects the package to an untrusted, unexpected destination and runs the code fetched from it.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,578
  Completion Tokens: 12,535
  Total Tokens: 28,113
  Total Cost: $0.003658
  Execution Time: 75.80 seconds

Final Status: UNSAFE


Issues Found:

PKGBUILD: [UNSAFE] Source substituted with untrusted personal fork. / The PKGBUILD replaces the expected official upstream source with a personal, unverified GitHub fork. The declared package URL points to the project's official site (venture-emu.org), whose upstream development naturally resides in the Venture-emu organization. However, the `source` array fetches the entire codebase from `Villagers654/Venture` — a completely separate personal account — using an unpinned mutable branch (`#branch=main`). The `build()` function then directly executes code from this substituted source (`python tools/bootstrap.py --jdk --angle`), giving the owner of the personal fork the ability to inject arbitrary commands into the build process at any time. This constitutes a classic supply-chain substitution attack: the PKGBUILD redirects the package to an untrusted, unexpected destination and runs the code fetched from it.
