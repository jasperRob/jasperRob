# System Setup

A detailed guide created to help me set up my system on a new machine in a flash. 

***Disclaimer: Some of the contents of this repo may not be mine, including themes.***

&nbsp;

## Clone The Repo

```bash
mkdir $HOME/projects/
cd $HOME/projects/
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

#### ZSH Plugins

```bash
brew install zsh-syntax-highlighting
```

#### PowerLevel10K

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

***Open a new terminal to configure PowerLevel10K***

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

Java11 will be used for compilation.
Java17 will be used for LSP.

```bash
sdk install java 22.1.0.r11-grl
sdk install java 22.1.0.r17-grl
sdk use java 22.1.0.r11-grl
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

### JDTLS

***Open a java file in LunarVim, open jdtls.json and add this setting.***

```bash
:LspSettings jdtls
```

```json
{
	"java.jdt.ls.java.home": "$JAVA_HOME"
}
```

LunarVim must be run with Java17 or higher for LSP to work!

