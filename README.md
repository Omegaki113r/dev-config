# Prerequisites
- Minimal setup of Linux
---

# Setup
- Update/Upgrate OS

> `sudo pacman -Syu`
- Install Hyprland
`sudo pacman -S hyprland`
- Install Terminal
`sudo pacman -S foot` [^1]


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip

fc-cache -fv



[^1]: As a lifelong Windows/MacOS user i didn't want to switch to Linux fully. therefore i started with using an VM. 
Hyprland is usually associated with **Kitty** terminal. But VM doesn't seems to allow GPU Passthrough. So i am using CPU renderer based terminal for now. I will update this once i started using real hardware instead of VM
