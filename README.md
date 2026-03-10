## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Authenticate with github](#authenticate-with-github)
- [Installing JetBrainsMono NerdFont](#installing-jetbrainsmono-nerdfont)
- [Configuring Shared Directory](#configuring-shared-directory)
- [Colors](#colors)
- [Audio](#audio)
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
- Install Terminal
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
- Compression & Uncompression
```bash
sudo pacman -S zip
sudo pacman -S unzip
```
- CMake
```bash
sudo pacman -S cmake
```
- GIMP
```bash
sudo pacman -S gimp
```
- Quickshell
```bash
sudo pacman -S quickshell
```
- less
```bash
sudo pacman -S less
```
- pavucontrol
```bash
sudo pacman -S pavucontrol
```
# Authenticate with github
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
# Configuring Shared Directory
- Install OpenVM Tools
```bash
sudo pacman -S open-vm-tools
```
- Enable and Start Open VM tools
```bash
sudo systemctl enable vmtoolsd.service
sudo systemctl start vmtoolsd.service
```
- Create mount point
```bash
sudo mkdir -p /mnt/hgfs
```
- Check shared directory
```bash
vmware-hgfsclient
```
- Mounting Shared directory
```bash
vmhgfs-fuse -o allow_other -o auto_unmount .host:/<Shared Directory Name> /mnt/hgfs
```
# Colors
[GruvBox](https://www.figma.com/community/file/840895380520234275/gruvbox-syntax-highlighting)
- Dark
    * bg
    * red
    * green
    * yellow
    * blue
    * purple
    * aqua
    * gray
    * gray
    * red
    * green
    * yellow
    * blue
    * purple
    * aqua
    * fg
    * bg0_h
    * bg0
    * bg1
    * bg2
    * bg3
    * bg4
    * gray
    * orange
    * bg0_s
    * fg4
    * fg3
    * fg2
    * fg1
    * fg0
    * orange
- Light
# Audio
- Listing all available audio devices
```bash
pactl list short sinks
```
- Setting default output
```bash
pactl set-default-sink <OUTPUT DEVICE GOES HERE>
```

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
