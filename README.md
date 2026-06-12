# hadron-memory/homebrew-tap

Homebrew tap for [Hadron](https://hadronmemory.com) tooling.

```sh
brew tap hadron-memory/tap
brew install --cask hadron
```

Casks are bumped by [hadron-cli](https://github.com/hadron-memory/hadron-cli)'s
release workflow (goreleaser) — or manually from a release's `checksums.txt`
while the `HOMEBREW_TAP_TOKEN` secret is not yet configured there.
