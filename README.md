# Personal Homebrew Taps

This a [Homebrew Tap][] containing a collection of "formulae" that have not yet been accepted into the mainline Homebrew repo or a different, more authoritative tap.

## Usage

First, add this tap to Homebrew.  This will clone the tap repository and symlink all its formulae.

```bash
brew tap nebhale/personal
```

Now you can work on those formulae as if there were in canonical Homebrew repository:

```bash
brew install cloud-foundry-cli
brew install ngrok
```

[Homebrew Tap]: https://github.com/mxcl/homebrew/wiki/brew-tap
