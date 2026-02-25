## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Configure & Authenticate with github](#configure&authenticatewithgithub)
- [Installing JetBrainsMono NerdFont](#installingjetbrainsmononerdfont)
---
# Prerequisites
- Minimal setup of Linux
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
- wget
```bash
sudo pacman -S wget
```
# Configure & Authenticate with github
- Generate SSH key
```bash
ssh-keygen -t ed25519 -C <EMAIL ADDRESS>
```
- Start SSH agent
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
- Copy generated SSH key to clipboard and add the key to github
- Testing SSH connection
```bash
ssh -T git@github.com
```
- Setting git identity
```bash
git config --global user.name <GITHUB USERNAME>
git config --global user.email <GITHUB EMAIL>
```
- Changing https to ssh
    * Checking method
    ```bash
    git remote -v
    ```
    * Changing to ssh if https
    ```bash
    git remote set-url origin git@github.com:<USERNAME>/<REPOSITORY>.git
    ```
- If passphrase added during ssh-keygen and needs to automate the submitting passphrase
    * Create a config file
    ```bash
    touch ~/.ssh/config
    ```
    * Inside the config file
    ```bash
    Host github.com
        AddKeysToAgent yes
        IdentityFile ~/.ssh/id_ed25519
    ```
# Installing JetBrainsMono NerdFont
- Create Directory for font
```bash
mkdir -p /usr/share/fonts/JetBrainsMono
```
- Download JetBrainsMono font
```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
```
- Unzip & Remove
```bash
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
```
- Rebuilt & Cache font
```bash
fc-cache -fv
```
- Verify
```bash
fc-list | grep -i JetBrainsMono
```


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm





[^1]: As a lifelong Windows/MacOS user i didn't want to switch to Linux fully. therefore i started with using an VM. 
Hyprland is usually associated with **Kitty** terminal. But VM doesn't seems to allow GPU Passthrough. So i am using CPU renderer based terminal for now. I will update this once i started using real hardware instead of VM
