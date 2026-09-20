---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20260920
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14822
completion_tokens: 30076
total_tokens: 44898
cost: 0.0027290536
execution_time: 687.69
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:48:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
---

ruffle-selfhosted-nightly is built from ruffle-nightly
Materializing ruffle-selfhosted-nightly from local mirror...
Materialized ruffle-selfhosted-nightly
Analyzing ruffle-selfhosted-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only variable assignments, conditional additions to `makedepends`, and definition of `source` and `sha256sums` arrays. There are no command substitutions (`$(...)` or backticks) or function calls that execute at parse time. The `pkgver` uses Bash parameter expansion (`${_date//-}`), not a subshell. All dangerous operations (cargo install, npm ci, git rev-parse, etc.) are inside `prepare()`, `build()`, etc., which are not executed by `makepkg --printsrcinfo`. Nothing in the global scope downloads or runs untrusted code or exfiltrates data. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code executes at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch package build directory. It ignores common build artifacts such as `src`, `pkg`, compiled package files (`*.pkg.tar.*`), log files, and a local `ruffle` directory. There are no commands, network operations, obfuscated content, or any behavior that could constitute a supply-chain attack or security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file; no security concerns present.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `ruffle-nightly` package group. It contains only package descriptions, dependencies, and source references. The source points to the official Ruffle repository on GitHub with a pinned tag (`nightly-2026-09-20`) and a corresponding SHA-256 checksum. There are no executable instructions, no obfuscated content, no unexpected network destinations, and no evidence of malicious behavior. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
# PKGBUILD Security Review — `ruffle-selfhosted-nightly` (AUR)

**Verdict: `[x] No backdoor / No malware — CLEAN`**  
The PKGBUILD is what it claims to be: a source-based build of **Ruffle** from the official upstream repository  
(`https://github.com/ruffle-rs/ruffle`). I found **no code that exfiltrates data, escalates privileges, persists, downloads/ships a second binary, or writes anywhere outside `$srcdir`/`$pkgdir`**.

I read every line of the file. Here is the full breakdown.

---

## What the package actually does

| Section | What it does | Malicious? |
|---|---|---|
| `pkgver()` / `pkgrel()` | derives `nightly-2026-09-20` from the git tag | No |
| `source=(git+https://github.com/ruffle-rs/ruffle.git#tag=...)` | clones official upstream | No |
| `prepare()` | `cargo fetch --locked`, `npm ci`, runs `wasm-bindgen` via `cargo install` | No (see note [1]) |
| `build()` | `cargo build --release` (Ruffle core/desktop) + `npm run build:repro` (web/selfhosted/demo/extension) | No |
| `package_ruffle-nightly()` | installs desktop binaries to `$pkgdir/usr/bin`, desktop file, metainfo, icon | No |
| `package_ruffle-demo-nightly()` / `_selfhosted` | copies built web assets to `/usr/share/webapps` and `/usr/lib/node_modules` | No |
| `package_firefox-extension-*` | installs built XPI into Firefox dir | No |
| `package_chromium-extension-*` | writes a **JSON policy file** into `/usr/lib/chromium/extensions/` | No (see note [2]) |

---

## Checks I ran against the file

```
[+] No curl/wget/bash -c/"| sh" of remote content anywhere
[+] No base64, hex, ${IFS}, command substitution obfuscation
[+] No writes to /etc, ~, .bashrc, .profile, .config, systemd units, cron, udev
[+] No setuid (all modes are 644/755)
[+] No sudo, no root escalation tricks, no pkexec
[+] All install targets are under "$pkgdir" — normal packaging
[+] Only network endpoints: github.com (source), crates.io/npm (build-time deps), clients2.google.com (runtime policy, see note [2])
[+] No user-controlled variables are evaluated as code
```

---

## Important detail — the duplicate `source=` line

```bash
source=( "git+https://github.com/ruffle-rs/ruffle.git#tag=$_channel-$_date"
         "chromium-extension-ruffle.key" )    # <-- SHADOWED, never used
source=( "git+https://github.com/ruffle-rs/ruffle.git#tag=$_channel-$_date" )
```

There are **two `source=` assignments**; the second one wins in Bash. The second one does **not** include
`chromium-extension-ruffle.key`, so the `.key` file is never downloaded, never checksummed, and never used.

**Impact:** none — it's just dead config. Both lines point at the *same official GitHub repo*; the URL was **not**
swapped for a malicious one. This is worth cleaning up (delete the shadowed first array), and it means `sha256sums`
currently doesn't verify anything except the git tag. Not a backdoor.

---

## Minor supply-chain hygiene issues (not malware, but worth fixing)

### `[1] LOW` — `cargo install wasm-bindgen-cli` without `--locked`

```bash
cargo install wasm-bindgen-cli --version "$(...)"
```

This resolves completely unpinned transitive crates from crates.io at build time, rather than using the
project's locked `Cargo.lock`. This is a **reproducibility / supply-chain hygiene concern** — a compromised
or malicious crate published with a matching version would get pulled in.  
**Fix:** `cargo install --locked wasm-bindgen-cli --version "..."`
or use the system `wasm-bindgen` package.

### `[2] INFO` — Chromium extension policy points to Google's update URL

```bash
jq --null-input --raw-output \
   --arg external_update_url https://clients2.google.com/service/update2/crx \
   '$ARGS.named' | install -Dm644 /dev/stdin \
   "$pkgdir/usr/lib/chromium/extensions/..."
```

This is a standard, well-known Chromium policy mechanism used by distro packages. It tells Chromium
"load the extension from the official Chrome Web Store update server".  
`clients2.google.com` is Google's **official** CRX distribution endpoint. Not a C2.  
*(Note: it also means the package ships no actual extension bytes — Chromium downloads the CRX at first launch. That's a packaging/runtime design note, not an IoC.)*

### `[3] LOW` — Git tag pinned by name, not by commit

`#tag=nightly-2026-09-20` pins by tag, not a full commit SHA. If the upstream repo's tag were ever
force-moved (or the upstream repo compromised), the hash wouldn't be verified. For a nightly AUR package
this is normal, but for supply-chain hardening consider `#commit=<full-sha1>`.

### `[4] INFO` — `while read` loop is whitespace-fragile

```bash
find target/release -maxdepth 1 -executable -type f | while read -r f; do
```

If any built binary ships with a space/newline in the name this could mis-install. In practice all Ruffle
binaries are `ruffle_desktop`, `ruffle`, `ruffle_scanner`, etc., so **no exploitable case today**.  
Prefer `while IFS= read -r f` / `find -print0`.

---

## What I did *not* find

```
[-] No indicators of a backdoor, botnet, coinminer, exfil, or destructive payload
[-] No writes outside $srcdir / $pkgdir
[-] No "download at runtime and execute" of any unknown second stage
[-] No hidden processes, no cron/systemd/autostart poisoning
[-] No webhooks, no pastebin/anon-file hosts anywhere
```

---

## Final answer

| | |
|---|---|
| **Malicious** | **No — CLEAN** |
| **IoCs of type C2 / backdoor / exfil** | **None found** |
| **Issues to fix before merging** | `[1]` `cargo install --locked` • `[3]` pin commit SHA |
| **Code-cleanliness issues** | `[2]` dead `source=` array • `[4]` `while read` |

**Recommendation:** this PKGBUILD is safe to build and run by an end user.  
As a maintainer, I would require the two `LOW` items be fixed before merging into a stricter repo,
but **there is no indication of a supply-chain injection or malware** in this file.

LLM audit error for PKGBUILD: Audit error: could not parse a decision from the model response.

[3/3] Reviewing ...
? Reviewed PKGBUILD. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: PKGBUILD)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,822
  Completion Tokens: 30,076
  Total Tokens: 44,898
  Total Cost: $0.002729
  Execution Time: 687.69 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

PKGBUILD: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
