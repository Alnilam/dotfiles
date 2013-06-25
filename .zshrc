# Prompt
#. ~/.profile

# variables
EDITOR='vim'

# aliases
alias -g ...='../..'
alias -g ....='../../..'
alias po='popd'
alias ls='ls -G'
alias lsa='ls -alhG'
alias -s tex=vim
alias history='fc -l 1'

alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'

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
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# navigation
setopt AUTO_CD

setopt AUTOPUSHD
setopt AUTO_CONTINUE
setopt CORRECT

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

# prompts
# PROMPT="%F{cyan}%n@%m:%F{bright}%F{red}%./%F{bright}%# "
PROMPT="%F{cyan}%n@%m:%F{bright}%F{red}%3~%F{bright}%# "
# RPROMPT="%F{cyan}%D %T (%F{green}%h)"

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M' 
zstyle ':vcs_info:*' unstagedstr 'M' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{white}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{white}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git 
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[unstaged]+='%F{1}??%f'
  fi  
}

precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_} %F{cyan}%D %T (%F{green}%h)'
# PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_} %f%# %F{cyan}%D %T (%F{green}%h)'
