# Configure dotfiles
Clone Repo
```bash
git clone https://github.com/henriquemelissopoulos/dotfiles.git ~/dotfiles
```

Install `stow`
```bash
 sudo pacman -S stow
```

# Install
## yay
```bash
sudo pacman -S yay
```

For colored output, uncomment the `Color` line in `/etc/pacman.conf`

## Autorandr
Auto-detect connected display hardware and load appropiate X11 setup using xrandr
```bash
yay -S autorandr
```

To make `autorandr` manage notebook lid close, there is a systemd unit `autorandr-lid-listener.service` inside autorandr dotfile folder, to make it work:
```bash
sudo cp autorandr-lid-listener.service /etc/systemd/system/
sudo systemctl enable --now autorandr-lid-listener.service
```

# Polybar
A fast and easy-to-use status bar
```bash
yay -S polybar
```

## Alacritty
Alacritty is the fastest GPU-Accelerated terminal emulator in existence.
```bash
yay -S alacritty
```

## zsh, fzf & Antigen
zsh is a very advanced and programmable command interpreter (shell) for UNIX
```bash
yay -S zsh
```

Make zsh the default shell
```bash
chsh -s $(which zsh)
```

`fzf` Command-line fuzzy finder
```bash
yay -S fzf
```

Antigen is a small set of functions that help you easily manage your shell (zsh) plugins.
```bash
yay -S antigen-git
```

## npm & node
First install `nvm` from `AUR`
```bash
yay -S nvm
```

Source nvm script in `.bashrc`
```bash
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec $SHELL
```

Install latest `node` and `npm`
```bash
nvm install node
```

## rofi
```bash
sudo pacman -S rofi
```

## stow
```bash
sudo pacman -S stow
```

## flameshot
Screenshot software (i3 config dependency)
```bash
yay -S flameshot
```

## xscreensaver
Screen saver and locker for the X Window System
```bash
yay -S xscreensaver
```

## vscode
```bash
yay -S visual-studio-code-bin
```

Install vscode extensions
```bash
~/dotfiles/install-code-extensions.sh
```

List extensions with install command
```bash
code --list-extensions | xargs -L1 echo code --install-extension
```

# misc

Control Time Settings
```bash
sudo pacman -S timeset
```

## Fira Code
Monospaced font with programming ligatures.
```bash
yay -S otf-fira-code
```

# Issues
## Electron apps crashing randomly - DRI3 issues
To solve I had to write

```conf
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

```bash
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
```