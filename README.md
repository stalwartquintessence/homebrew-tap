# Homebrew tap for Candela

[Candela](https://github.com/stalwartquintessence/candela) controls the brightness, contrast,
saturation, picture modes and volume of external displays on Apple Silicon Macs.

## Install

```sh
brew tap stalwartquintessence/tap
brew trust --tap stalwartquintessence/tap
brew install --cask stalwartquintessence/tap/candela
```

Homebrew asks you to trust a tap before it loads anything from it, because a tap's casks run
during installs. This tap holds only the Candela cask, [`Casks/candela.rb`](Casks/candela.rb).

Candela is free and not notarized by Apple, so macOS blocks its first launch: open
**System Settings > Privacy & Security** and click **Open Anyway**. The cask also installs the
`candelactl` command line tool; if macOS blocks it as well, allow it the same way.

## Updates

From version 0.2.0 on, Candela installs its own updates: **Check for Updates...** in its
window, or **Check for Updates Automatically**. Before that, use `brew upgrade --cask candela`.

## Uninstall

```sh
brew uninstall --cask candela          # add --zap to also remove its settings
```

## How this tap is maintained

- **Tests** checks the cask with `brew style` and `brew audit`, then installs and uninstalls
  it, on every change.
- **Update** runs once a day. When Candela publishes a new release, it updates the version and
  checksum (hashed from the download and checked against the release's `SHA256SUMS.txt`), then
  runs the tests.
