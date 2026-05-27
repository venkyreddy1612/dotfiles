# Arch Linux + Qtile Dotfiles

A clean and minimal Arch Linux setup using:

- Qtile
- Alacritty
- LazyVim
- Rofi
- Picom
- Adwaita Dark
- GNU Stow
- JetBrains Mono Nerd Font

Designed for:
- productivity
- keyboard-driven workflow
- lightweight performance
- modern GNOME-inspired aesthetics with tiling

---

# Preview

## Desktop

> Add screenshot later

```md
![Desktop](./screenshots/desktop.png)
```

---

## Terminal + Neovim

> Add screenshot later

```md
![Neovim](./screenshots/nvim.png)
```

---

## Rofi Launcher

> Add screenshot later

```md
![Rofi](./screenshots/rofi.png)
```

---

# Features

- Minimal Qtile setup
- Floating gaps
- Transparent top bar
- Adwaita Dark GTK theme
- Transparent Alacritty
- Transparent Neovim
- Picom animations
- LazyVim development environment
- Rofi application launcher
- GNU Stow managed dotfiles
- JetBrains Mono Nerd Font
- Modern dark UI aesthetic

---

# System Information

| Component | Value |
|---|---|
| OS | Arch Linux |
| WM | Qtile |
| Terminal | Alacritty |
| Shell | Zsh |
| Editor | Neovim (LazyVim) |
| Launcher | Rofi |
| Compositor | Picom |
| GTK Theme | adw-gtk3-dark |
| Icons | Papirus Dark |
| Font | JetBrains Mono Nerd Font |

---

# Installation

## 1. Install Required Packages

```bash
sudo pacman -S \
xorg xorg-xinit \
qtile \
alacritty \
rofi \
picom \
nitrogen \
neovim \
git \
zsh \
starship \
stow \
pipewire \
pipewire-pulse \
pavucontrol \
network-manager-applet \
lxappearance \
papirus-icon-theme \
python-psutil \
ttf-jetbrains-mono-nerd \
ttf-mononoki-nerd \
curl \
wget \
less \
ripgrep \
fd \
fzf \
bat \
eza \
tree \
unzip \
zip
```

---

## 2. Install Yay (AUR Helper)

```bash
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

---

## 3. Install AUR Packages

```bash
yay -S adw-gtk-theme
```

---

## 4. Clone Dotfiles

```bash
git clone git@github.com:venkyreddy1612/dotfiles.git
cd dotfiles
```

---

## 5. Apply Configurations Using GNU Stow

```bash
stow qtile
stow alacritty
stow picom
stow rofi
stow nvim
stow gtk
stow zsh
```

This automatically creates symlinks in:
- `~/.config`
- `~/`

The dotfiles repository becomes the single source of truth for all configurations.

---

## 6. Configure Zsh

Set Zsh as default shell:

```bash
chsh -s /bin/zsh
```

Restart terminal or run:

```bash
source ~/.zshrc
```

---

## 7. Configure GTK Theme

Launch:

```bash
lxappearance
```

Set:
- Theme → `adw-gtk3-dark`
- Icons → `Papirus-Dark`

---

## 8. Configure Wallpaper

Launch Nitrogen:

```bash
nitrogen
```

Select wallpaper and save.

---

## 9. VirtualBox Setup (Optional)

If using VirtualBox:

Install guest additions:

```bash
sudo pacman -S virtualbox-guest-utils
```

Enable services:

```bash
sudo systemctl enable vboxservice.service
sudo systemctl start vboxservice.service
```

Recommended VM settings:
- Graphics Controller → `VMSVGA`
- Video Memory → `128MB`
- Enable 3D Acceleration

---

## 10. Reload Qtile

Reload config:

```text
Mod + Ctrl + R
```

Or reboot.

---

# Folder Structure

```text
dotfiles/
├── README.md
├── qtile/
│   └── .config/
│       └── qtile/
│           ├── config.py
│           └── autostart.sh
│
├── alacritty/
│   └── .config/
│       └── alacritty/
│
├── picom/
│   └── .config/
│       └── picom/
│
├── rofi/
│   └── .config/
│       └── rofi/
│
├── nvim/
│   └── .config/
│       └── nvim/
│
├── gtk/
│   └── .config/
│       └── gtk-3.0/
│
├── zsh/
│   └── .zshrc
│
└── screenshots/
```

---

# Qtile Features

- 15px floating gaps
- Transparent floating top bar
- Adwaita blue active border
- CPU + memory widgets
- System tray
- Volume widget
- Rounded aesthetic
- Modern spacing

---

# Alacritty

Configured with:
- 0.95 opacity
- Mononoki Nerd Font
- Adwaita-inspired colors
- padding and transparency

---

# Neovim

Using LazyVim with:
- transparent background
- Treesitter
- LSP support
- Telescope
- Neo-tree

---

# Picom

Configured with:
- smooth fading
- rounded corners
- subtle shadows
- lightweight xrender backend
- VirtualBox-safe configuration

---

# Rofi

Using:
- adi1090x launcher themes
- custom launcher keybind
- dark modern styling

---

# Keybindings

| Keybinding | Action |
|---|---|
| Mod + Enter | Open terminal |
| Mod + R | Open Rofi |
| Mod + Q | Close window |
| Mod + Tab | Switch windows |
| Mod + Ctrl + R | Reload Qtile |

---

# Recommended Extras

```bash
sudo pacman -S \
flameshot \
dunst \
xclip
```

Recommended:
- Flameshot → screenshots
- Dunst → notifications
- xclip → clipboard support

---

# Package Backup

Export installed packages:

```bash
pacman -Qqe > pkglist.txt
```

Reinstall later:

```bash
sudo pacman -S --needed - < pkglist.txt
```

---

# Screenshots

Create screenshots directory:

```bash
mkdir screenshots
```

Add images later:

```text
screenshots/
├── desktop.png
├── nvim.png
└── rofi.png
```

---

# TODO

- [ ] Add Dunst theme
- [ ] Add lockscreen
- [ ] Add wallpapers
- [ ] Add bootstrap install script
- [ ] Add package list automation
- [ ] Add screenshots

---

# License

MIT
