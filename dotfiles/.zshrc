# theme
# "aussiegeek", "bira"  
ZSH_THEME="gnzh" 

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# default apps
(( ${+PAGER} )) || export PAGER='more'
(( ${+EDITOR} )) || export EDITOR='vim'

# aliases
alias mv='nocorrect mv' # no spelling correction on mv
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias rspec='nocorrect rspec'
alias ll="ls -l"
alias la="ls -a"
alias l.='ls -ld .[^.]*'
alias lsd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias ..='cd ..'
alias groutes='rake routes | grep $@'

# set cd autocompletion to commonly visited directories
# cdpath=(~ ~/src $DEV_DIR $HASHROCKET_DIR)

zrcl="$HOME/.zshrc.local"
[[ ! -a $zrcl ]] || source $zrcl

export PATH="$PATH:/usr/local/smlnj/bin"
eval "$(rbenv init -)"
