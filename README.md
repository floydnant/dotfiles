# dotfiles

- [dotfiles](#dotfiles)
  - [Install](#install)
    - [Install brew bundle](#install-brew-bundle)
  - [Maintanance](#maintanance)
    - [Dump brew bundle](#dump-brew-bundle)
    - [Open config folder](#open-config-folder)
    - [Export raycast config](#export-raycast-config)
  - [@TODO](#todo)
    - [Automate nvim installation](#automate-nvim-installation)
    - [Nvim config](#nvim-config)
  - [General notes](#general-notes)
    - [Paths to keep in repo](#paths-to-keep-in-repo)
    - [Paths to sync to backup drive(s) - besides a general time machine setup](#paths-to-sync-to-backup-drives---besides-a-general-time-machine-setup)

## Install

```sh
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
[[ $(arch) == "arm64" ]] && eval "$(/opt/homebrew/bin/brew shellenv)" || eval "$(/usr/local/bin/brew shellenv)"

# Install Chezmoi
brew install chezmoi
# # Install GPG
# brew install gpg

# Use configuration from this repo
chezmoi init floydnant --apply
```

### Install brew bundle

Should generally happen automatically, but in case it doesn't:

```sh
# To apply and install right after
cem apply ~/.Brewfile

# or

# To install only
brew bundle --global
```

## Maintanance

### Dump brew bundle

```sh
cembrewdump

# or

brew bundle dump --describe --global --force && chezmoi re-add ~/.Brewfile
```

### Open config folder

```sh
code "$(chezmoi source-path)"
```

### Export raycast config

[raycast://extensions/raycast/raycast/export-settings-data](raycast://extensions/raycast/raycast/export-settings-data)

## @TODO

-   [ ] Add instructions on how to use the repo on a daily basis
-   [ ] Remove vscode extensions from Brewfile
-   [ ] Setup encryption
-   [ ] System preferences `https://github.com/politician/dotfiles/blob/main/run_once_before_2-configure-system-darwin.sh.tmpl`
-   [ ] Setup global node/npm stuff
-   [ ] Take .zshrc inspo from `https://github.com/politician/dotfiles/blob/main/dot_zshrc`
-   [ ] Switch apps from normal install to `brew`
    -   [ ] VS Code
    -   [ ] Spotify
    -   [ ] Outlook
    -   [ ] Chrome
    -   [ ] GPG related stuff (gpg-suite(-no-mail), gpg-tui)
    -   [ ] Notion
    -   [ ] Figma
    -   [ ] Raycast
-   [ ] Consider relocating the following
    -   [ ] `~/music-projects` => `~/musique/projects`
    -   [ ] `~/music-library/samples` => `~/musique/lib/audio`
    -   [ ] `~/music-library/max-plugins` => `~/musique/lib/devices`
    -   [ ] `~/libraries` - ???
-   [ ] Add complete install automation
    -   [x] XCode tools installation
    -   [x] Brew installation
    -   [x] Brewfile execution
    -   [ ] Custom install logic
        -   [ ] git (xcode toools)
        -   [ ] oh my zsh
        -   [ ] raycast
        -   [ ] gpg keys setup
        -   [ ] system setup (system preferences, finder, safari, etc.)
        -   [ ] Which apps can be automated?
-   [x] Add zsh config
-   [ ] Add neovim config
-   [ ] Add raycast config

### Automate nvim installation

[Astro nvim installation instructions](https://astronvim.github.io/Configuration/manage_user_config#installing-from-an-existing-user-configuration)

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim # install astro nvim
ln -s ~/.dotfiles/astro-nvim-config ~/.config/nvim/lua/user # link astro nvim config
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' # install plugins
```

### Nvim config

-   [ ] Fix nvim config
-   [ ] Add line swapping
-   [ ] Add line duplication
-   [ ] Checkout noice
-   [ ] Add The Primeagen's Harpoon plugin to nvim
-   [x] Remove `packer_compiled.lua` from git repo

## General notes

### Paths to keep in repo

-   [x] `~/.zshrc`
-   [x] `~/.zprofile` ?
-   [x] `~/.config/gh/config.yml`
-   [ ] `~/.config/gh/hosts.yml` @TODO: this needs to be encrypted
-   [x] `~/.gitconfig`
-   [ ] `~/Library/Application\ Support/Code/User` - or is this even relevant, since there is 'settings-sync' anyway?
    -   [ ] `/settings.json`
    -   [ ] `/keybindings.json`
    -   [ ] `/tasks.json`
    -   [ ] `/snippets/*`
-   [ ] Nvim config
-   [ ] ...

### Paths to sync to backup drive(s) - besides a general time machine setup

-   [ ] `~/Music`
-   [ ] `~/coding`
-   [ ] `~/musique` / `~/music projects` & `~/music-library`
-   [ ] `~/obsidian-vaults`
-   [ ] `~/libraries`
-   [ ] `~/Downloads`
-   [ ] `~/Desktop`
-   [ ] `~/Documents`
-   [ ] `~/Pictures/Backgrounds`
-   [ ] ...
