# Prompt
. ~/.profile

#PS1= [%n@%m]%~/
PROMPT="%F{cyan}%n@%m:%F{bright}%F{red}%./%F{bright}%# "
RPROMPT="%F{cyan}%D %T (%F{green}%h)"
# aliases
alias -g ...='../..'
alias -g ....='../../..'

alias -s tex=vim

alias gs='git status '
alias gss='git status -s'
alias ga='git add '
alias gaa='git add .'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gh='git hist'
alias ghma='git hist master --all'

alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '


# History related
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000


# navigation
setopt AUTO_CD

# correction and completion
autoload -U compinit
compinit

## zmodload -i zsh/complist
## xstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## autoload -U promptinit
## promptinit

## autoload colors zsh/terminfo
## if [[ "$terminfo[colors]" -ge 8 ]]; then
## 	colors
## fi



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
