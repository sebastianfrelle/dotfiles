autoload -U colors && colors
PS1="%{$fg[blue]%}%1~ $fg[yellow]> %{$reset_color%}%"

# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1

# Aliases
alias ls="ls -AGF"

# https://opensource.com/article/18/9/tips-productivity-zsh
zmodload zsh/complist
autoload -U compinit
compinit

zstyle ':completion:*' menu select
bindkey -M menuselect '^[[Z' reverse-menu-complete

# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git
