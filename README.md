# GCAI - AI Commit Message Generator

GCAI is a command-line tool that uses AI to automatically generate commit messages for your git repositories.

## Installation

Download the appropriate pre-built binary for your operating system from the [Releases](https://github.com/eduardongomes/gcai-release/releases) page, or clone this repository and run the corresponding installation script.

### Linux

```bash
./install.sh
```

This will install the `gcai` binary to `/usr/local/bin`.

### macOS

For Apple Silicon (ARM) Macs:

```bash
./install-mac-arm.sh
```

For Intel (x86_64) Macs:

```bash
./install-mac.sh
```

This will install the `gcai` binary to `/usr/local/bin`.

### Windows

Open a PowerShell terminal and run:

```powershell
.\install.ps1
```

This will install `gcai.exe` to `$env:USERPROFILE\bin` and add it to your `PATH`. You may need to restart your terminal for the `PATH` changes to take effect.

## Usage

To use GCAI, simply run the `gcai` command in a git repository with staged changes. The tool will generate a commit message and create a commit with it.

```bash
gcai
```

## Configuration

The first time you run GCAI, it will create a configuration file at `~/.config/gcai/config.json`. You will need to add your Gemini API key to this file.

You can also use the `-config` flag to re-configure your API key.
