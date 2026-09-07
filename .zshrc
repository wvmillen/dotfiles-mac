export ZSH="$HOME/.oh-my-zsh"

# Let Oh My Zsh discover Docker Desktop's completions when they are installed.
if [[ -d "$HOME/.docker/completions" ]]; then
  fpath=("$HOME/.docker/completions" $fpath)
fi

# Starship provides the prompt, so disable Oh My Zsh's built-in themes.
ZSH_THEME=""

# Keep this list focused; add plugins only when they solve a real need.
plugins=(
  git
  macos
  brew
  tmux
  aliases
  colored-man-pages
)

# Keep tmux under manual control while still enabling its aliases.
ZSH_TMUX_AUTOSTART=false

source "$ZSH/oh-my-zsh.sh"

eval "$(starship init zsh)"
