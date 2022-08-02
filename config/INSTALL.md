# System Setup

A detailed guide created to help me set up my system on a new machine in a flash. 

***Disclaimer: Some of the contents of this repo may not be mine, including themes.***

&nbsp;

## Clone The Repo

```bash
git clone git@github.com:jasperRob/jasperRob.git
```

&nbsp;

## Terminal Basics

#### OhMyZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### Add to .zshrc

```bash
# source config
export ZSH_CONFIG=$HOME/projects/jasperRob/config/zsh
source $ZSH_CONFIG/source.sh
```

#### XCode Command Line Tools

```bash
xcode-select --install
```

#### SDKMAN

```bash
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

#### Java

```bash
sdk install java 22.1.0.r11-grl
```

#### Maven

```bash
sdk install maven
```

#### NodeJS

```bash
brew install node
```

#### Rust

```bash
brew install rust
```

&nbsp;

## Vim Setup

#### NeoVim Nightly

```bash
brew install neovim
```

#### LunarVim

```bash
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```

#### RipGrep

```bash
brew install rg
```

#### NerdFont

```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

***Then select this font inside terminal preferences***

#### Sync LunarVim Packages

```bash
lvim
:PackerSync
```
