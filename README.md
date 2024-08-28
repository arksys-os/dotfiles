# Dotfiles

Dotfiles for ArkSys:

> [!NOTE]
> GIMP configuration is compressed in an zip file, you need to decompress it, based on [PhotoGIMP](https://github.com/Diolinux/PhotoGIMP)

```txt
.
├── .bash_profile
├── .bashrc
├── .config
│   ├── .config/alacritty
│   ├── .config/GIMP 
│   ├── .config/hypr
│   ├── .config/kitty
│   ├── .config/ktimezonedrc
│   ├── .config/kwinrc
│   ├── .config/mpv
│   ├── .config/nvim
│   ├── .config/obs-studio
│   ├── .config/qBittorrent
│   ├── .config/rofi
│   ├── .config/starship.toml
│   ├── .config/tmux
│   └── .config/vlc
├── .github
├── .mozilla
│   └── .mozilla/firefox
├── .obsidian
├── .vscode
├── etc
│   ├── etc/fstab
│   ├── etc/my.cnf
│   ├── etc/pacman.conf
│   └── etc/pacman.d
├── .ssh
├── .bash_profile
├── .bashrc
├── config-files-unix.md
├── .gitigonre
├── .nvidia-settings-rc
├── kdeglobals
├── plasmanotifyrc
├── plasma-org.kde.plasma.desktop-appletsrc
└── plasmashellrc
```

## PKGLIST

Install list of packages:

```sh
#!/bin/bash

# Install Arch packages
sudo pacman -S --needed - < linux-arch-pkgs.txt

# Install AUR packages
yay -S --needed - < linux-aur-pkgs.txt

# Install Flatpak packages
while IFS= read -r pkg; do
    flatpak install --noninteractive "$pkg"
done < linux-flatpak-pkgs.txt
```
