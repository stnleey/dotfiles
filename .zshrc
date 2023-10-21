# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"

zstyle ":omz:update" mode reminder  # just remind me to update when it's time

plugins=(git)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi

# Aliases
# ssh connettion via kitty terminal
alias ssh="kitten ssh"

# ls replacement (eza)
alias ls="eza --sort=type --all --icons"
alias ll="eza --sort=type --long --icons"
alias l="eza --sort=type --long --all --icons"
alias tr="eza --sort=type --tree --icons"

export PATH="$HOME/.cargo/bin/:$PATH"
export PATH="$PATH:/usr/local/go/bin"
