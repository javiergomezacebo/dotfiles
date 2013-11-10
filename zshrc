# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# I'm using
ZSH_THEME="$HOME/Dotfiles/3712874/agnoster.zsh-theme"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias -g ls='gls --color=auto'
alias -g grep="grep --color=auto"
alias -g G="| grep -i"
alias -g L="| less"
# I'm pretty sure there are plenty of better ways of using grc…
alias -g ping="grc ping"
alias -g traceroute="grc traceroute"
alias -g head="grc head"
alias -g tail="grc tail"
alias -g ps="grc ps"
alias -g cat="grc cat"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Take away the annoying user@hostname in agnoster
# DEFAULT_USER="javier"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx vagrant brew sublime)

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/bin:/usr/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Make the colours of the ls prompt work with solarized colours
eval `dircolors $HOME/Dotfiles/term/colours/dircolors.ansi-dark`

# Set the python virtualenv to Canopy EPD
VIRTUAL_ENV_DISABLE_PROMPT=1 source /Users/javiergomez-acebofinat/canopy/bin/activate
