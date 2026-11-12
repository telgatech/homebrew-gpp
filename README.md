# Homebrew tap for GPP

This repository is the Homebrew tap for [GPP](https://github.com/telgatech/gpp).

The formula installs the latest GPP commit from the `main` branch. Install it with:

```sh
brew install --HEAD telgatech/gpp/gpp
```

This builds GPP from source and requires Go 1.27 or newer. The formula checks the installed Go version before building.
