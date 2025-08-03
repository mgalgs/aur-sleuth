# makepkg-checkwrapper

A security wrapper for `makepkg` that audits PKGBUILD files using an LLM before building packages.

## Purpose

Recently, there have been supply chain security breaches where malicious
code was inserted into AUR packages in subtle ways. This tool helps detect
such issues by using an LLM to analyze PKGBUILD files and install scripts
for potential security concerns before building.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/mgalgs/makepkg-checkwrapper.git
   cd makepkg-checkwrapper
   ```

2. Install dependencies:
   ```bash
   # For Arch Linux
   sudo pacman -S curl jq

   # For other distributions, install equivalent packages
   ```

3. Install the script:
   ```bash
   sudo install -m755 makepkg-checkwrapper /usr/local/bin/makepkg-checkwrapper
   ```

4. Set up your API key:
   ```bash
   # For OpenRouter (default)
   export OPENROUTER_API_KEY="your-openrouter-api-key"

   # For OpenAI
   export OPENAI_API_KEY="your-openai-api-key"
   ```

## Usage

### With yay

Configure yay to use the wrapper:

```bash
yay --makepkg /usr/local/bin/makepkg-checkwrapper --save
```

Then use yay normally:

```bash
yay -S package-name
```

### Direct usage

You can also use the wrapper directly:

```bash
makepkg-checkwrapper -si
```

## Configuration

The wrapper can be configured with environment variables:

- `LLM_PROVIDER`: LLM provider to use (default: "openrouter")
- `MODEL`: Model to use (default: "qwen/qwen3-30b-a3b-instruct-2507")
- `OPENROUTER_API_KEY`: API key for OpenRouter
- `OPENAI_API_KEY`: API key for OpenAI

Example:

```bash
export LLM_PROVIDER="openai"
export MODEL="gpt-4-turbo"
export OPENAI_API_KEY="your-api-key"
yay -S package-name
```

## How it works

1. When invoked, the script first identifies the PKGBUILD file to be used
2. It reads the PKGBUILD content and sends it to the configured LLM
3. The LLM analyzes the PKGBUILD for potential security issues
4. If issues are detected, the script will warn you and abort
5. If no issues are found, it proceeds with the normal makepkg execution

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
