# Configure dotfiles
Clone Repo
```
git clone https://github.com/henriquemelissopoulos/dotfiles.git ~/dotfiles
```

Install `stow`
```
 sudo pacman -S stow
```

# Install
## yay
```
sudo pacman -S yay
```

For colored output, uncomment the `Color` line in `/etc/pacman.conf`


## Antigen
Antigen is a small set of functions that help you easily manage your shell (zsh) plugins.
```
yay -S antigen-git
```

## npm & node
First install `nvm` from `AUR`
```
yay -S nvm
```

Source nvm script in `.bashrc`
```
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec $SHELL
```

Install latest `node` and `npm`
```
nvm install node
```

## rofi
```
sudo pacman -S rofi
```

## stow
```
sudo pacman -S stow
```

## flameshot
Screenshot software (i3 config dependency)
```
yay -S flameshot
```

## xscreensaver
Screen saver and locker for the X Window System
```
yay -S xscreensaver
```

## vscode
```
yay -S visual-studio-code-bin
```

Install vscode extensions
```
~/dotfiles/install-code-extensions.sh
```

List extensions with install command
```
code --list-extensions | xargs -L1 echo code --install-extension
```

# misc

Control Time Settings
```
sudo pacman -S timeset
```

## Fira Code
Monospaced font with programming ligatures.
```
yay -S otf-fira-code
```