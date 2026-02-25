# Prerequisites
- Minimal setup of Linux
---

# Setup
- Update/Upgrate OS

```bash
sudo pacman -Syu
```

- Install Hyprland
```bash
sudo pacman -S hyprland
```

- Install Terminal

### Foot
```bash
sudo pacman -S foot
``` 
[^1]

### Kitty
> `sudo pacman -S kitty` [^2]
- Wallpaper utility
> `sudo pacman -S hyprpaper`
- Notification Daemon
> `sudo pacman -S swaync`
- Application Launcher
> `sudo pacman -S wofi`
- File Manager
> `sudo pacman -S dolphin`
- Terminul Multiplexer
> `sudo pacman -S tmux`
- Text Editor
> `sudo pacmand -S neovim`
- Git
```bash 
sudo pacman -S git
```

- AUR Helper
[Jguer/yay](https://github.com/Jguer/yay)
```bash
    sudo pacman -S needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
```

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip

fc-cache -fv



[^1]: As a lifelong Windows/MacOS user i didn't want to switch to Linux fully. therefore i started with using an VM. 
Hyprland is usually associated with **Kitty** terminal. But VM doesn't seems to allow GPU Passthrough. So i am using CPU renderer based terminal for now. I will update this once i started using real hardware instead of VM
[^2]: Nothing here to see yet
