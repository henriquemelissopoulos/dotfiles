## Clone dotfiles
```
git clone https://github.com/henriquemelissopoulos/dotfiles.git ~/dotfiles
```

## Install

### rofi
```
sudo pacman -S rofi
```

### stow
```
sudo pacman -S stow
```

### vscode
```
pamac install -S visual-studio-code-bin
```

Install vscode extensions
```
~/dotfiles/install-code-extensions.sh
```

List extensions with install command
```
code --list-extensions | xargs -L1 echo code --install-extension
```

### misc

Control Time Settings
```
sudo pacman -S timeset
```
