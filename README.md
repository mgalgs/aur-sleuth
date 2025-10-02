# aur-sleuth

An LLM-powered security auditing tool for Arch User Repository (AUR) packages.

`aur-sleuth` performs in-depth security analysis of an AUR package. It can be run
standalone, and a separate shell wrapper (`makepkg-with-sleuthing`) integrates it
with `makepkg`:

```bash
# Audit a package from the AUR without building or installing
aur-sleuth package-name

# Audit a package then build and install with yay if it passes the audit
yay --makepkg makepkg-with-sleuthing package-name

# Audit, then build and install a local package (in a directory containing a PKGBUILD)
makepkg-with-sleuthing -si
```

## Demo

Here it is in action catching the shenanigans from the infamous [malicious `google-chrome-stable` package](https://www.reddit.com/r/archlinux/comments/1me632m/is_this_another_aur_infect_package/):

![Screencast](./demo.gif)

## Motivation

Recently, there have been subtly malicious packages uploaded to the AUR. This tool
helps detect such issues by using an LLM to analyze AUR packages for potential
security concerns before building.

`aur-sleuth` performs a security audit of all of the files in the `source` array in
the `PKGBUILD`, along with any other files from the actual package sources that the
security auditing LLM deems interesting.

This helps fulfill one of the great promises of open source software: security
through the ability to audit the source code of applications you run on your
machine. In the past this wasn't really practical since there's just too much code to
review. But in a world with readily available LLMs that are fast, cheap, and
effective, this promise of enhanced security becomes extremely compelling. As LLMs
get even faster and cheaper there will be no reason not to audit every bit of code
you run on your machine. This will only be possible in the world of open source!

## Security Considerations

- This tool is meant to *assist* in security auditing, not replace good judgment
- Always review code before installing packages from AUR
- The LLM analysis is not foolproof and may produce false positives or negatives
- Keep your API keys secure and monitor usage

## Installation

*(AUR package coming soon...)*

1. Install dependencies:
   ```bash
   sudo pacman -S uv
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/mgalgs/aur-sleuth.git
   cd aur-sleuth
   ```

3. Install the script.

   **System-wide installation (requires sudo):**
   ```bash
   sudo make install
   ```
   This will install `aur-sleuth` and the shell wrapper `makepkg-with-sleuthing` to `/usr/local/bin`.

   **User-local installation (no sudo required):**
   ```bash
   make install PREFIX=$HOME/.local
   ```
   This will install the scripts to `$HOME/.local/bin`. Make sure this directory is in your `PATH`.

Alternatively you can simply download [`aur-sleuth`](https://raw.githubusercontent.com/mgalgs/aur-sleuth/refs/heads/master/aur-sleuth), and [`makepkg-with-sleuthing`](https://raw.githubusercontent.com/mgalgs/aur-sleuth/refs/heads/master/makepkg-with-sleuthing) drop them in your PATH.

## Configuration

The tool can be configured with environment variables:

- `OPENAI_API_KEY`: Your API key. This is required.
- `OPENAI_BASE_URL`: The API endpoint. Defaults to OpenRouter if not set.
- `OPENAI_MODEL`: The model to use. Defaults to `qwen/qwen3-235b-a22b-2507`.
- `MAX_LLM_JOBS`: Max concurrent LLM calls. Defaults to `3`.
- `NUM_FILES_TO_REVIEW`: The number of files to review in addition to those listed in
  the `source` array. Defaults to `10`.
- `LLM_TEMPERATURE`: The temperature parameter for the LLM (0.0-2.0). If not set, uses model default.
- `LLM_TOP_P`: The top-p parameter for the LLM (0.0-1.0). If not set, uses model default.
- `AUDIT_FAILURE_FATAL`: Whether audit failures should be fatal (exit with error). Set to `false` to make audit failures non-fatal. Defaults to `true`.

You can either set these environment variables directly in your shell, or add them to
a configuration file. The tool will automatically load configuration from
`/etc/aur-sleuth.conf` (system-wide) or `~/.config/aur-sleuth.conf` (user-specific),
with user-specific configuration taking precedence.

The configuration file should be in INI format:

```ini
[default]
OPENAI_API_KEY = your-api-key
OPENAI_BASE_URL = your-base-url
OPENAI_MODEL = your-model
MAX_LLM_JOBS = desired-concurrency
LLM_TEMPERATURE = 0.7  # Omit to use the model default
LLM_TOP_P = 0.9        # ditto
AUDIT_FAILURE_FATAL = false  # Set to false to make audit failures non-fatal
```

### Example using OpenRouter

```ini
[default]
OPENAI_API_KEY = sk-or-v1-7f8...194
OPENAI_BASE_URL = https://openrouter.ai/api/v1
OPENAI_MODEL = qwen/qwen3-30b-a3b-instruct-2507
MAX_LLM_JOBS = 10
```

### Example using OpenAI

```ini
[default]
OPENAI_API_KEY = sk-proj-EW...KA
OPENAI_BASE_URL = https://api.openai.com/v1
OPENAI_MODEL = gpt-5-mini
MAX_LLM_JOBS = 5
```

### Example using local ollama instance

```ini
[default]
OPENAI_API_KEY = ollama
OPENAI_BASE_URL = http://localhost:11434/v1
OPENAI_MODEL = llama3.1:8b
MAX_LLM_JOBS = 1
AUDIT_FAILURE_FATAL = false
```

## Usage

### 1. `aur-sleuth` (Standalone Audit)

Performs an agentic security audit on the package contents. It does not build the
package.

**Usage:**
```bash
usage: aur-sleuth [-h] package_name [--clone-url CLONE_URL] [--output OUTPUT] [--model MODEL] [--base-url BASE_URL] [--max-llm-jobs MAX_LLM_JOBS] [--num-files-to-review NUM_FILES_TO_REVIEW]

Run a security audit on an AUR package.

positional arguments:
  package_name          Name of the AUR package.

options:
  -h, --help            show this help message and exit
  --clone-url CLONE_URL
                        Optional custom clone URL for the AUR package. Defaults to https://aur.archlinux.org/{package_name}.git.
  --output OUTPUT       Output format. Supported formats: rich, plain. Defaults to rich.
  --model MODEL         LLM to use (overrides environment and config file settings)
  --base-url BASE_URL   Base API URL (OpenAI API compatible) to use (overrides environment and config file settings)
  --max-llm-jobs MAX_LLM_JOBS, -j MAX_LLM_JOBS
                        Maximum number of concurrent LLM audit jobs (default: 3)
  --num-files-to-review NUM_FILES_TO_REVIEW, -n NUM_FILES_TO_REVIEW
                        Target number of files to audit jobs (default: 10)
```

The audit process is subject to a session token limit (default: 100,000 tokens) to manage API usage.

**Examples:**

- **Audit a package by name (clone from AUR):**
  ```bash
  aur-sleuth google-chrome-stable
  ```

- **Audit an existing local pkgdir:**
  ```bash
  aur-sleuth --pkgdir /path/to/pkgdir
  ```

- **Audit with custom clone URL:**
  ```bash
  aur-sleuth --clone-url https://example.com/repo.git package-name
  ```

- **Use plain text output:**
  ```bash
  aur-sleuth --output plain package-name
  ```

After the audit completes, if it is deemed safe, the tool will print the
path to the temporary directory when cloning, or it will leave your existing
`--pkgdir` untouched. You can then inspect the files and, if you choose to
proceed, run `makepkg` manually from within that directory.

### 2. `makepkg-with-sleuthing` (Wrapper Mode)

This mode is for integrating the audit into your existing `makepkg`
workflow, for example with a AUR helper like `yay`.

**With `yay`:**

Audit a package, then install if it passes:

```bash
yay --makepkg makepkg-with-sleuthing package-name
```

You can persist the `--makepkg` setting like so:

```bash
yay --makepkg makepkg-with-sleuthing --save
```

Then you no longer have to pass `--makepkg` to each invocation of `yay`. Just use it
as you normally would and the audit will be performed automatically:

```bash
yay -S package-name
```

**Direct Usage:**

You can also invoke the wrapper directly in place of `makepkg`. Just pass `makepkg`
arguments to it:

```bash
# In a directory with a PKGBUILD
makepkg-with-sleuthing -si
```

The wrapper will automatically skip the audit for certain makepkg operations like
`--verifysource`, `--nobuild`, `--geninteg`, `-o`, and `-g`.

## How it works

- `aur-sleuth` is a Python script that audits a package either by cloning from AUR by
  name, or by auditing an existing directory with `--pkgdir /path/to/pkgdir`.
- `makepkg-with-sleuthing` is a small shell script that first runs `aur-sleuth --pkgdir .`
  to audit the current PKGBUILD and sources, and then execs `/usr/bin/makepkg` if the
  audit passes.

## Supported LLM Providers

Any OpenAI-compatible API server

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## License

MIT
