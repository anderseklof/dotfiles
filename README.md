# Dotfiles

> Simplicity and compatibility

- Only add functionality that is absolutely needed.
- Use TokyoNight theme where available.
- Make visual adjustments only to
  - make important things more obvious and prominent, or
  - make unimportant things less prominent and intrusive.
- Do not change standard key mappings.
- Know what you change, add or remove.

Settings are optimized for TypeScript development.

## Setup

All files must be installed manually.

### Alacritty

Rename file to `alacritty.toml`.

Location Linux: `$HOME/.config/alacritty/alacritty.toml`

Location Windows: `%APPDATA%\alacritty\alacritty.toml`

**Tip:** To start Alacritty with a hard coded window title in Windows, run `alacritty --title <TITLE>`.

### Oh My Zsh

Plugins needed: `zsh-autosuggestions` and `zsh-completions`:

1. Goto `~/.oh-my-zsh`.
2. Run `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`.
3. Run `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions`.
4. Copy `.zshrc` and `.zshenv` to `~/`.
5. Add Zsh as the default shell with `sudo vi /etc/passwd` and `/usr/bin/zsh`.

### Git

Copy `.gitconfig` to `~/`.

### tmux

Copy `.tmux.conf` to `~/`.

### Neovim

Configurations for Neovim is based on LazyVim.

- Install latest stable Neovim.
- Install LazyVim.
- Replace configuration files.

`plugins-old` in `lua` folder are plugins that can be good to keep but not currently used.

### Fonts

Install "Hack Nerd Font".
