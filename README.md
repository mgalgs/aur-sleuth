# aur-sleuth

An LLM-powered security auditing tool for Arch User Repository (AUR) packages.

`aur-sleuth` can be invoked in two ways:

1. As `aur-sleuth`: A standalone tool for in-depth security analysis of an AUR package.
2. As `aur-sleuth-makepkg-wrapper`: A wrapper for `makepkg` that
   automatically audits `PKGBUILD` files before building. This enables
   integration with `yay` via the `--makepkg` option (see [Usage](#Usage)).

## Purpose

Recently, there have been supply chain security breaches where malicious
code was inserted into AUR packages in subtle ways. This tool helps detect
such issues by using an LLM to analyze AUR packages for potential
security concerns before building.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/mgalgs/aur-sleuth.git
   cd aur-sleuth
   ```

2. Install dependencies:
   ```bash
   # For Arch Linux
   sudo pacman -S uv

   # For other distributions:
   # Install uv from https://github.com/astral-sh/uv
   ```

3. Install the script.

   **System-wide installation (requires sudo):**
   ```bash
   sudo make install
   ```
   This will install `aur-sleuth` and a symlink `aur-sleuth-makepkg-wrapper` to `/usr/local/bin`.

   **User-local installation (no sudo required):**
   ```bash
   make install PREFIX=$HOME/.local
   ```
   This will install the scripts to `$HOME/.local/bin`. Make sure this directory is in your `PATH`.

4. Set up your API key:
   ```bash
   export OPENAI_API_KEY="your-api-key"
   export OPENAI_BASE_URL="your-base-url"
   export OPENAI_MODEL="your-model"
   ```

## Usage

### 1. `aur-sleuth` (Standalone Audit)

This is the primary mode for in-depth security analysis. It clones the
target AUR package and performs one or more audits based on the specified
audit level. It does not build the package.

**Usage:**
```bash
aur-sleuth [options] <package-name>
```

**Options:**
`--audit <level>`: Specify the audit level. You can provide one or more levels.
- `PKGBUILD` (default): Audits only the `PKGBUILD` file.
- `changelog`: Audits the recent git commit history.
- `sources`: Downloads and audits all text-based source files.
- `hardcore`: Performs all audits (`PKGBUILD`, `changelog`, `sources`).

The audit process is subject to a session data limit (default: 100KB) to manage API usage.

**Examples:**

- **Default audit (PKGBUILD):**
  ```bash
  aur-sleuth google-chrome-stable
  ```

- **Audit the changelog and sources:**
  ```bash
  aur-sleuth --audit changelog sources nvim-packer-update
  ```

- **Run the most comprehensive audit:**
  ```bash
  aur-sleuth --audit hardcore yay
  ```

After the audit completes, if it is deemed safe, the tool will print the
path to the temporary directory. You can then inspect the files and, if you
choose to proceed, run `makepkg` manually from within that directory.

### 2. `aur-sleuth-makepkg-wrapper` (Wrapper Mode)

This mode is for integrating the audit into your existing `makepkg`
workflow, for example with a AUR helper like `yay`.

**With `yay`:**

Configure `yay` to use the wrapper.

```bash
yay --makepkg /usr/local/bin/aur-sleuth-makepkg-wrapper --save
```

Then use `yay` as you normally would:

```bash
yay -S package-name
```

**Direct Usage:**

You can also invoke the wrapper directly, passing `makepkg` arguments to it:

```bash
# In a directory with a PKGBUILD
aur-sleuth-makepkg-wrapper -si
```

## Configuration

The tool can be configured with environment variables:

- `OPENAI_API_KEY`: Your API key. This is required.
- `OPENAI_BASE_URL`: The API endpoint. Defaults to OpenRouter if not set.
- `MODEL`: The model to use. Defaults to `qwen/qwen3-30b-a3b-instruct-2507`.

**Example:**

To use OpenAI's official API:
```bash
export OPENAI_API_KEY="your-openai-api-key"
export OPENAI_BASE_URL="https://api.openai.com/v1"
export MODEL="gpt-4-turbo"

yay -S package-name
```

To use a custom OpenRouter model:
```bash
export OPENAI_API_KEY="your-openrouter-key" # OpenRouter uses the OPENAI_API_KEY variable
export MODEL="anthropic/claude-3-haiku"

aur-sleuth some-package
```

## How it works

The script checks how it was invoked (`sys.argv[0]`).
1.  **`aur-sleuth`:** It runs the in-depth audit on the specified package.
2.  **`aur-sleuth-makepkg-wrapper`:** It acts as a wrapper around `makepkg`, auditing the `PKGBUILD` in the current directory before building.

## Security Considerations

- This tool is meant to *assist* in security auditing, not replace good judgment
- Always review code before installing packages from AUR
- The LLM analysis is not foolproof and may produce false positives or negatives
- Keep your API keys secure and monitor usage

## Supported LLM Providers

1. OpenRouter (default)
2. OpenAI

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## License

MIT
