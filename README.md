# Homebrew Tap for PullWeights

Official [Homebrew](https://brew.sh) tap for the [PullWeights CLI](https://github.com/pullweights/cli).

## Install

```bash
brew install pullweights/tap/pullweights
```

## Upgrade

```bash
brew upgrade pullweights
```

## Verify

```bash
pullweights --version
```

## About

PullWeights is an AI model registry. Push, pull, version, and share ML models from the command line.

- **CLI repo:** [pullweights/cli](https://github.com/pullweights/cli)
- **Docs:** [pullweights.com/docs](https://pullweights.com/docs)

## How it works

This tap is automatically updated by the [CLI release workflow](https://github.com/pullweights/cli/blob/main/.github/workflows/release.yml). When a new version is tagged, the workflow builds binaries for macOS (ARM + Intel) and Linux (ARM + x86_64), then updates the formula with new download URLs and SHA-256 checksums.
