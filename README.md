# Homebrew tap for Go++

This repository is the Homebrew tap for [Go++](https://github.com/telgatech/gpp).

The Go++ project does not have a published versioned source release yet, so the formula currently installs the latest commit from the `main` branch. Install it with:

```sh
brew install --HEAD telgatech/gpp/gpp
```

This builds Go++ from source and requires Go 1.26 or newer. The formula checks the installed Go version before building. After Go++ publishes a versioned release, the formula can be updated to install that stable release by default.
