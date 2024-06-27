# Dotfiles

Including:
- config (alacritty, GUMP, hypr, kitty, kwinrc, obs, mpv, qBitorrent, rofi, starship, tmux, vlz, wezterm)
- mozilla-firefox, obsidian
- etc (fstab, pacman)

> [!NOTE] The configuration files of GIMP are compressed in an zip file, you need to decompress and put in ~/.config/GIMP. It is based on the repository of [DioLinux/PhotoGIMP](https://github.com/Diolinux/PhotoGIMP)

```
.
├── ./.bash_profile
├── ./.bashrc
├── ./.config
│   ├── ./.config/alacritty
│   │   ├── ./.config/alacritty/alacritty.yml
│   ├── ./.config/GIMP
│   │   └── ./.config/GIMP/PhotoGIMP-config_GIMP_2.10.zip
│   ├── ./.config/hypr
│   │   └── ./.config/hypr/hyprland.conf
│   ├── ./.config/kitty
│   │   └── ./.config/kitty/kitty.conf
│   ├── ./.config/ktimezonedrc
│   ├── ./.config/kwinrc
│   ├── ./.config/mpv
│   │   └── ./.config/mpv/mpv.conf
│   ├── ./.config/neofetch
│   │   └── ./.config/neofetch/config.conf
│   ├── ./.config/nvim
│   │   └── ./.config/nvim/init.vim
│   ├── ./.config/obs-studio
│   │   ├── ./.config/obs-studio/basic
│   │   │   ├── ./.config/obs-studio/basic/profiles
│   │   │   │   └── ./.config/obs-studio/basic/profiles/StudioRec
│   │   │   │       └── ./.config/obs-studio/basic/profiles/StudioRec/basic.ini
│   │   │   └── ./.config/obs-studio/basic/scenes
│   │   └── ./.config/obs-studio/global.ini
│   ├── ./.config/qBittorrent
│   │   ├── ./.config/qBittorrent/categories.json
│   │   ├── ./.config/qBittorrent/qBittorrent.conf
│   │   ├── ./.config/qBittorrent/qBittorrent-data.conf
│   │   ├── ./.config/qBittorrent/rss
│   │   │   └── ./.config/qBittorrent/rss/feeds.json
│   │   └── ./.config/qBittorrent/watched_folders.json
│   ├── ./.config/rofi
│   │   └── ./.config/rofi/config.rasi
│   ├── ./.config/starship.toml
│   ├── ./.config/tmux
│   │   └── ./.config/tmux/tmux.conf
│   ├── ./.config/vlc
│   │   ├── ./.config/vlc/vlc-qt-interface.conf
│   │   └── ./.config/vlc/vlcrc
│   └── ./.config/.wezterm
│       └── ./.config/.wezterm/wezterm.lua
├── ./etc
│   ├── ./etc/fstab
│   ├── ./etc/my.cnf
│   ├── ./etc/pacman.conf
│   └── ./etc/pacman.d
│       ├── ./etc/pacman.d/archlinux-mirrorlist
│       ├── ./etc/pacman.d/arcolinux-mirrorlist
│       ├── ./etc/pacman.d/arksys-mirrorlist
│       ├── ./etc/pacman.d/cachyos-mirrorlist
│       ├── ./etc/pacman.d/chaotic-mirrorlist
│       ├── ./etc/pacman.d/endeavouros-mirrorlist
│       ├── ./etc/pacman.d/mirrorlist
│       └── ./etc/pacman.d/xero-mirrorlist
├── ./.mozilla
│   └── ./.mozilla/firefox
└── ./obsidian
```
