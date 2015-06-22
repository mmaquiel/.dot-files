# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# tmux setup
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOSTART_ONCE="true"
ZSH_TMUX_FIXTERM="true"
ZSH_TMUX_AUTOCONNECT="true"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Set command execution time format for the history command
# Available formats "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Oh-my-zsh Plugins
plugins=(git rvm vagrant tmux)

# User configuration
export PATH="$HOME/.rvm/gems/ruby-2.2.1/bin:$HOME/.rvm/gems/ruby-2.2.1@global/bin:$HOME/.rvm/rubies/ruby-2.2.1/bin:$HOME/.jenv/bin:$HOME/.jenv/candidates/maven/current/bin:$HOME/.jenv/candidates/java/current/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Set vim as the default editor
export EDITOR='vim'

# For a full list of active aliases, run `alias`.

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
# apt-get aliases
alias aclean="sudo apt-get autoremove && sudo apt-get autoclean"
alias au="sudo apt-get update"
alias auu="au && sudo apt-get upgrade && sudo apt-get dist-upgrade && aclean"
alias ai="sudo apt-get install"
alias aui="au && ai"
alias aprm="sudo apt-get remove"

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "$HOME/.jenv/bin/jenv-init.sh" ]] && source "$HOME/.jenv/bin/jenv-init.sh" && source "$HOME/.jenv/commands/zsh-completion.sh"

# Add RVM to PATH for scripting
export RVM_DIR="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
