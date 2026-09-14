# Set up the prompt

# Enable prompt substitution
setopt prompt_subst

# Git branch function
git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [[ -n $branch ]]; then
        echo " (%F{yellow}$branch%f)"
    fi
}

# Simple, clean prompt with git branch
PS1='%F{green}%n@%m%f:%F{blue}%~%f$(git_branch) %# '

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select=2

bindkey '^[[1;5C' forward-word  # Ctrl+Right
bindkey '^[[1;5D' backward-word # Ctrl+Left
bindkey "^[[3~" delete-char  # del

# vim -> nvim
# alias vim="nvim"

