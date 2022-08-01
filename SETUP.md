# System Setup

A detailed guide to setup my system

&nbsp;

## Terminal Basics

#### OhMyZSH

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### XCode Command Line Tools

```
xcode-select --install
```

#### SDKMAN

```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```


#### Java

```
sdk install java 22.1.0.r11-grl
```

#### Maven

```
sdk install maven
```

#### NodeJS

```
brew install node
```

#### Rust

```
brew install rust
```

## Vim Setup

#### NeoVim Nightly

```
brew install neovim
```

#### LunarVim

```
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```

**Inside .zshrc**
```
alias lvim="sh $HOME/.local/bin/lvim"
```


