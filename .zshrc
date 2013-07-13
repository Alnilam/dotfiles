############## Start: OH-MY-ZSH Additions ###############
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="flazz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode git-extras)

source $ZSH/oh-my-zsh.sh
############## End of OH-MY-ZSH Additions ###############

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
RPROMPT='$(vi_mode_prompt_info) ${vcs_info_msg_0_} %F{cyan}%D %T (%F{green}%h)'
# PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_} %f%# %F{cyan}%D %T (%F{green}%h)'

