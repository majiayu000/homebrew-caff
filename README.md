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

The cask currently installs `Caff.app` from the upstream `v0.1.4` release. The
zip checksum is pinned in [Casks/caff.rb](Casks/caff.rb).

## Uninstall

```bash
brew uninstall --cask caff
```

## Update Policy

When a new Caff release is published, update `version`, `sha256`, and release
notes together, then run the verification commands above before pushing.
