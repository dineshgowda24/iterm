# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Plugins are installed by run.sh (git, docker, etc.)
plugins=(
	git
	docker
	docker-compose
	ruby
	extract
	history
	sudo
	aliases
	last-working-dir
	colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Enable alias suggestions
setopt CORRECT

# Vi mode — modal editing in shell
bindkey -v
# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# ============================================================================
# CUSTOM ALIASES & FUNCTIONS
# ============================================================================

# Custom git commit shorthand
function gc { git commit -m "$@"; }

# File listing with exa (installed via run.sh)
alias ls='exa'

# Utility aliases
alias rm='rm -i'
alias zshrc='$EDITOR ~/.zshrc'
alias update="source ~/.zshrc"
alias ..='cd ..'
alias ...='cd ../..'

# ============================================================================
# POWERLEVEL10K PROMPT
# ============================================================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ============================================================================
# SHELL PLUGINS (Installed via brew, sourced manually)
# ============================================================================

[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -n "${ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR}" ]] || \
  export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

[[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf — Fuzzy finder for CLI
[[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ]] && \
  source /opt/homebrew/opt/fzf/shell/completion.zsh
[[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ]] && \
  source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

# z — Jump to frequently visited directories
[[ -f /opt/homebrew/etc/profile.d/z.sh ]] && \
  source /opt/homebrew/etc/profile.d/z.sh

# ============================================================================
# ENVIRONMENT SETUP
# ============================================================================

# RVM (Ruby Version Manager)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# ASDF (Version manager)
. /opt/homebrew/opt/asdf/libexec/asdf.sh 2>/dev/null

# Homebrew binaries
export PATH="/opt/homebrew/bin:$PATH"

# Go module support
export GO111MODULE=on

# ============================================================================
# THEFUCK - Command correction
# ============================================================================

eval "$(thefuck --alias)" 2>/dev/null
