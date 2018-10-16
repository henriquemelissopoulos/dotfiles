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
