# Falkan3 Homebrew tap

Casks for Cleveral apps.

## Fathom

A native macOS viewer for log files.

```bash
brew tap falkan3/tap
brew trust --cask falkan3/tap/fathom
brew install --cask falkan3/tap/fathom
```

Homebrew 7 loads casks from other taps only after you trust them. The second
line trusts this one cask, not the whole tap.

Fathom is not signed with an Apple Developer ID yet. So macOS blocks the
first launch, and you allow it once in System Settings, Privacy & Security,
with Open Anyway. The cask prints the steps. After that, Fathom installs its
own updates.
