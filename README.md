# CleanPulse Releases

Official **CleanPulse** macOS app builds.

- Product site / sign-in: [https://cleanpulse.bimlesh.dev](https://cleanpulse.bimlesh.dev)
- Preferred install: `curl -fsSL https://cleanpulse.bimlesh.dev/install.sh | bash`
- Homebrew (this repo is the tap):

```bash
brew tap bimlesharma/cleanpulse https://github.com/bimlesharma/cleanpulse-releases
brew install --cask cleanpulse
```

- Channel pointer for the curl installer: [`latest-alpha`](./latest-alpha) (plain version string)
- Homebrew cask definition: [`Casks/cleanpulse.rb`](./Casks/cleanpulse.rb) (version + SHA-256 updated by release CI)
- Application source is private. This repository only publishes release artifacts and the Homebrew cask.

Promo / beta builds are free with a CleanPulse account. Alpha artifacts are ad-hoc signed and not Apple-notarized.
