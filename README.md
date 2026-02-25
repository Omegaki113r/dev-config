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
- Install Terminal [^1]
    * Foot
    ```bash
    sudo pacman -S foot
    ```
    * Kitty
    ```bash
    sudo pacman -S kitty
    ```
- Wallpaper utility
```bash
sudo pacman -S hyprpaper
```
- Notification Daemon
```bash
sudo pacman -S swaync
```
- Application Launcher
```bash
sudo pacman -S wofi
```
- File Manager
```bash
sudo pacman -S dolphin
```
- Terminul Multiplexer
```bash
sudo pacman -S tmux
```
- Text Editor
```bash
sudo pacmand -S neovim
```
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
- Web Browser
    * LibreWolf
    ```bash
    yay -S librewolf
    ```
- OpenSSH
```bash
sudo pacman -S openssh
```
---
# Configure & Authenticate with github
```bash
ssh-keygen -t ed25519 -C <EMAIL ADDRESS>
```
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
- Copy generated SSH key to clipboard and add the key to github
```bash
ssh -T git@github.com
```
```bash
git config --global user.name <GITHUB USERNAME>
git config --global user.email <GITHUB EMAIL>
```


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip

fc-cache -fv



[^1]: As a lifelong Windows/MacOS user i didn't want to switch to Linux fully. therefore i started with using an VM. 
Hyprland is usually associated with **Kitty** terminal. But VM doesn't seems to allow GPU Passthrough. So i am using CPU renderer based terminal for now. I will update this once i started using real hardware instead of VM
