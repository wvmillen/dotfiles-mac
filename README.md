# macOS dotfiles

This setup uses [AeroSpace](https://github.com/nikitabobko/AeroSpace),
[SketchyBar](https://github.com/FelixKratz/SketchyBar), Ghostty, tmux,
Oh My Zsh, Starship, and LazyVim. The terminal and prompt use the ligaturized
SF Mono Nerd Font for Powerline symbols and icons.

## Fresh Mac setup

1. Install Apple's command-line tools:

   ```sh
   xcode-select --install
   ```

2. Install [Homebrew](https://brew.sh), clone this repository, and install all
   declared applications and CLI dependencies:

   ```sh
   git clone git@github.com:wvmillen/dotfiles-mac.git ~/dotfiles-mac
   brew bundle --file ~/dotfiles-mac/Brewfile
   ```

3. Install Oh My Zsh:

   ```sh
   git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
   ```

4. Link the tracked configuration files into your home directory. Back up any
   existing files first. The VS Code links use its macOS-specific settings
   directory:

   ```sh
   mkdir -p ~/.config
   mkdir -p "$HOME/Library/Application Support/Code/User"
   ln -s ~/dotfiles-mac/.zshrc ~/.zshrc
   ln -s ~/dotfiles-mac/.zprofile ~/.zprofile
   ln -s ~/dotfiles-mac/.tmux.conf ~/.tmux.conf
   ln -s ~/dotfiles-mac/.config/aerospace ~/.config/aerospace
   ln -s ~/dotfiles-mac/.config/btop ~/.config/btop
   ln -s ~/dotfiles-mac/.config/ghostty ~/.config/ghostty
   ln -s ~/dotfiles-mac/.config/kitty ~/.config/kitty
   ln -s ~/dotfiles-mac/.config/nvim ~/.config/nvim
   ln -s ~/dotfiles-mac/.config/sketchybar ~/.config/sketchybar
   ln -s ~/dotfiles-mac/.config/starship.toml ~/.config/starship.toml
   ln -s ~/dotfiles-mac/.config/vscode/settings.json \
     "$HOME/Library/Application Support/Code/User/settings.json"
   ln -s ~/dotfiles-mac/.config/vscode/keybindings.json \
     "$HOME/Library/Application Support/Code/User/keybindings.json"
   ```

5. Install the tracked VS Code extensions:

   ```sh
   xargs -n 1 code --install-extension \
     < ~/dotfiles-mac/.config/vscode/extensions.txt
   ```

6. Start a fresh shell and then open Neovim. LazyVim will install its plugins:

   ```sh
   exec zsh
   nvim
   ```

   Inside Neovim, run `:LazyHealth` to check optional dependencies and
   `:LazyExtras` to manage language integrations.

The `Brewfile` is the source of truth for machine dependencies. Re-run
`brew bundle --file ~/dotfiles-mac/Brewfile` whenever it changes.

SSH private keys and Git identity are intentionally not stored here. Generate
or securely transfer an SSH key, add it to GitHub, and configure `user.name`
and `user.email` before making commits on a new Mac.

## NeoVim

Uses the [LazyVim](https://www.lazyvim.org/) distribution. See
[the Neovim README](.config/nvim/README.md) for setup-specific details.

The Brewfile includes Neovim, Git, lazygit, ripgrep, fd, tree-sitter, Node,
Python, Go, CMake, Ninja, and StyLua. Mason/LazyVim installs configured language
servers and debuggers when Neovim starts.

## To clone and manage git repo for dotfiles

The repository is a normal checkout at `~/dotfiles-mac`; configuration files
are symlinked into their standard locations under `$HOME` and `~/.config`.
