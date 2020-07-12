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

## Autorandr
Auto-detect connected display hardware and load appropiate X11 setup using xrandr
```
yay -S autorandr
```

## Alacritty
Alacritty is the fastest GPU-Accelerated terminal emulator in existence.
```
yay -S alacritty
```

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

# Issues
## Electron apps crashing randomly - DRI3 issues
To solve I had to write

```
Section "Device"
    Identifier "Intel Graphics"
    Driver "intel"
    Option "DRI" "2"
EndSection
```

in `/etc/X11/xorg.conf.d/20-intel.conf`

https://unix.stackexchange.com/questions/524205/help-chromium-display-frozen-but-the-app-keeps-working
https://wiki.archlinux.org/index.php/Intel_graphics#DRI3_issues


## Meet/Hangouts/sites without sound and microphone on Firefox
To solve it, I executed `install_pulse`

https://support.mozilla.org/en-US/kb/fix-common-audio-and-video-issues#w_you-may-need-to-install-the-required-pulseaudio-software


## Add Git Credentials to Keyring/Libsecret
Install the `libsecret` package. (Already installed in Manjaro)

```git config --global credential.helper /usr/lib/git-core/git-credential-libsecret```