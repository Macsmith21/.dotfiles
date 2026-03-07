# dotfiles

CachyOS (Arch) + KDE Plasma 6 + Wayland rice with multi-theme support.

![](https://img.shields.io/badge/OS-CachyOS-blue)
![](https://img.shields.io/badge/DE-KDE%20Plasma%206-blue)
![](https://img.shields.io/badge/WM-KWin%20(Wayland)-blue)

## Themes

4 switchable themes via `theme-switch`:

- **Nord**
- **Catppuccin Mocha**
- **Tokyo Night**
- **Gruvbox**

Switches everything at once: terminal colors, Starship prompt, wallpaper, Plasma colors, Kvantum, GTK, icons, rofi, and panel layout.

```bash
theme-switch nord
theme-switch catppuccin
theme-switch tokyo-night
theme-switch gruvbox
```

## Stack

| Component | Tool |
|-----------|------|
| Shell | Fish + Starship |
| Terminal | Konsole / Alacritty |
| Launcher | rofi-wayland |
| Notifications | Dunst |
| Window Deco | Klassy |
| Compositor | KWin (blur, rounded corners) |
| Fonts | Inter (UI), JetBrainsMono Nerd Font (mono) |
| Fetch | Fastfetch (custom) |

## Layout

macOS-style dual panel: top info bar + bottom floating dock.

## Structure

```
config/
├── alacritty/          # Terminal config + theme files
├── dunst/              # Notification daemon
├── fastfetch/          # System fetch config + logos
├── fish/               # Shell config
├── fontconfig/         # Font rendering
├── gtk-3.0/            # GTK3 theming
├── gtk-4.0/            # GTK4 theming
├── klassy/             # Window decoration presets
├── konsole/            # Konsole profile + colorschemes
├── rofi/               # Launcher config + themes
├── kdeglobals          # KDE global settings
├── klassyrc            # Klassy config
├── kwinrc              # KWin compositor config
├── starship.toml       # Prompt config
└── .current-theme      # Active theme state
scripts/
├── theme-switch        # Multi-theme switcher
├── panel-layout        # macOS-style panel setup
├── rofi-launcher       # Rofi wrapper
├── plasma-wallpaper-refresh.sh
└── myfastfetch         # Custom fetch wrapper
```

## Install

```bash
# Clone
git clone https://github.com/Macsmith21/dotfiles.git ~/.dotfiles

# Symlink configs
ln -sf ~/.dotfiles/config/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/config/fish ~/.config/fish
ln -sf ~/.dotfiles/config/rofi ~/.config/rofi
ln -sf ~/.dotfiles/config/dunst ~/.config/dunst
ln -sf ~/.dotfiles/config/fastfetch ~/.config/fastfetch
ln -sf ~/.dotfiles/config/fontconfig ~/.config/fontconfig
ln -sf ~/.dotfiles/config/starship.toml ~/.config/starship.toml
ln -sf ~/.dotfiles/config/kdeglobals ~/.config/kdeglobals
ln -sf ~/.dotfiles/config/kwinrc ~/.config/kwinrc
ln -sf ~/.dotfiles/config/klassyrc ~/.config/klassyrc
ln -sf ~/.dotfiles/config/klassy ~/.config/klassy
ln -sf ~/.dotfiles/config/konsole ~/.local/share/konsole

# Symlink scripts
for script in ~/.dotfiles/scripts/*; do
  ln -sf "$script" ~/.local/bin/$(basename "$script")
done
```
