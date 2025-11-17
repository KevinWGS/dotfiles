########## Basics ##########
# Default editor
export EDITOR="vim"
export VISUAL="$EDITOR"

# Better terminal colors 
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"

########## History ##########
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

setopt HIST_IGNORE_DUPS      # don't store duplicate commands
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY         # share history between shells
setopt INC_APPEND_HISTORY    # write as you go

########## Shell behavior ##########
setopt AUTO_CD               # type a dir name to cd into it
setopt CORRECT               # basic command correction
setopt EXTENDED_GLOB         # better globbing
setopt NO_BEEP               # no annoying bell

########## Completion ##########
autoload -Uz compinit
compinit

########## Aliases ##########

# ls / navigation
alias ll='ls -lah'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'

# NPM / Node
alias nr='npm run'
alias ni='npm install'
alias ns='npm start'

# Fast config reload
alias reload!='source ~/.zshrc'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
