# System Setup

A detailed guide created to help me set up my system on a new machine in a flash. 

***Disclaimer: Some of the contents of this repo may not be mine, including themes.***

&nbsp;

### Clone The Repo

```bash
mkdir $HOME/projects/
cd $HOME/projects/
git clone git@github.com:jasperRob/jasperRob.git
```

&nbsp;


### Install NodeJS


#### Ubuntu
```bash
sudo apt install nodejs
```

#### MacOSX
```bash
brew install node
```

&nbsp;

### Install Rust

#### Ubuntu
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

#### MacOSX
```bash
brew install rust
```

&nbsp;

### ZSH Package

#### Ubuntu
```bash
sudo apt install zsh
```

#### MacOSX
```bash
brew install zsh
```

&nbsp;

### OhMyZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### ZSH Plugins

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### Set Default Shell

```bash
chsh -s $(which zsh)
```

##### Add to .zshrc

```bash
# source config
export ZSH_CONFIG=$HOME/projects/jasperRob/config/zsh
source $ZSH_CONFIG/source.sh
```

&nbsp;

### PowerLevel10K

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

***Open a new terminal to configure PowerLevel10K***

&nbsp;

### C Command Line Tools (MacOSX)

#### Ubuntu
```bash
sudo apt install build-essential
```

#### MacOSX
```bash
xcode-select --install
```

&nbsp;

### SDKMAN

```bash
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

&nbsp;

### Java

Java11 will be used for compilation.
Java17 will be used for LSP.

```bash
sdk install java 22.1.0.r11-grl &&
sdk install java 22.1.0.r17-grl &&
sdk use java 22.1.0.r11-grl
```

&nbsp;

### Maven

```bash
sdk install maven
```

&nbsp;

## Vim Setup

### NerdFont

#### Ubuntu
```bash
TODO
```

#### MacOSX
```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

***Then select this font inside terminal preferences***

&nbsp;

### RipGrep

#### Ubuntu
```bash
sudo apt install ripgrep
```

#### MacOSX
```bash
brew install rg
```

&nbsp;

### NeoVim Nightly

#### Ubuntu
```bash
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
./nvim-linux64/bin/nvim
sudo cp ./nvim-linux64/bin/nvim /usr/local/bin/nvim
rm ./nvim-linux64*
```

#### MacOSX
```bash
brew install neovim
```

&nbsp;

### LunarVim

```bash
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```


#### Sync LunarVim Packages

```bash
lvim
:PackerSync
```

&nbsp;

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

