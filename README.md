# Homebrew Caff

[![Tap check](https://github.com/majiayu000/homebrew-caff/actions/workflows/check.yml/badge.svg)](https://github.com/majiayu000/homebrew-caff/actions/workflows/check.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Homebrew tap for [Caff](https://github.com/majiayu000/caff), a macOS menu bar app that keeps the machine awake while long-running agent tasks are active.

This repository contains the Homebrew cask only. The app source, releases, and
release assets live in [majiayu000/caff](https://github.com/majiayu000/caff).

## Install

```bash
brew install --cask majiayu000/caff/caff
```

Or tap first:

```bash
brew tap majiayu000/caff
brew install --cask caff
```

## Verify The Cask

```bash
brew tap majiayu000/caff
brew audit --cask --tap majiayu000/caff caff
brew style "$(brew --repo majiayu000/caff)/Casks/caff.rb"
```

The cask currently installs `Caff.app` from the upstream `v0.1.5` release. The
zip checksum is pinned in [Casks/caff.rb](Casks/caff.rb).

## Uninstall

```bash
brew uninstall --cask caff
```

## Update Policy

When a new Caff release is published, update `version`, `sha256`, and release
notes together, then run the verification commands above before pushing.

## After installation: keep an agent task awake

Homebrew installs the app bundle; the executable is inside it rather than a
separately installed `caff` shell command. Open Caff from Applications, then use
[the agent keep-awake guide](https://github.com/majiayu000/caff/blob/main/docs/guides/keep-mac-awake-for-agent-tasks.md)
for a timed session, status checks, and optional Claude/Codex activity hooks.
The guide explains display sleep, battery limits, and the closed-lid boundary.

Installing the cask does not configure agent hooks. An open terminal alone is not
an activity signal; follow the upstream guide when you want activity-based sessions.

## Installation and update questions

**Which version will Homebrew install?** The version and checksum in
[Casks/caff.rb](Casks/caff.rb) determine the package. A newer upstream release
is not automatically the tap's current version. Inspect and update explicitly:

```bash
brew info --cask majiayu000/caff/caff
brew update
brew upgrade --cask majiayu000/caff/caff
```

**What are the macOS requirements?** The cask currently requires macOS Ventura
or newer. Check the cask and [upstream release notes](https://github.com/majiayu000/caff/releases)
for the current package and platform details before installing.

**Where should I report a problem?** Download/checksum/cask errors belong in
[this tap's issues](https://github.com/majiayu000/homebrew-caff/issues); app behavior,
sessions, and hooks belong in [Caff issues](https://github.com/majiayu000/caff/issues).
Include the OS, cask version, install command, and exact error, without credentials.

[Tap license](LICENSE) · [App source and license](https://github.com/majiayu000/caff#readme)
