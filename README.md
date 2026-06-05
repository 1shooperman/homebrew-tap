# homebrew-tap

Homebrew tap for [1shooperman](https://github.com/1shooperman).

## What is Homebrew?

[Homebrew](https://brew.sh) is a free, open-source package manager for macOS (and Linux). It simplifies installing and managing software from the command line.

## What is a Tap?

A [tap](https://docs.brew.sh/Taps) is a third-party repository of Homebrew formulae. Tapping a repo lets you install packages that aren't in the official Homebrew core.

## Trusting this tap

Homebrew may warn that this tap is untrusted. To silence it:

```sh
brew trust --tap 1shooperman/tap
```

## How do I install packages from here?

Install a package directly (tap is added automatically):

```sh
brew install 1shooperman/tap/<formula>
```

Or add the tap first, then install by short name:

```sh
brew tap 1shooperman/tap
brew install <formula>
```

## What packages are available?

### Formulae

| Formula | Description |
|---|---|
| [cli-tools](#cli-tools) | Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis |

## Formulae details

### cli-tools

```sh
brew install 1shooperman/tap/cli-tools
```

| Tool | Description |
|---|---|
| `gitprune` | Remove local branches whose remotes are gone. Pass `--force` to also delete unmerged branches and run GC. |
| `gitrefresh` | Checkout a branch (default `main`), pull latest, run `gitprune` twice. |
| `cache-gpg` | Warm the GPG agent cache via a test clearsign operation. |
| `sast` | Scan Claude plugin YAML frontmatter for risky tool/fetch permissions. |

Source: [1shooperman/cli-tools](https://github.com/1shooperman/cli-tools)
