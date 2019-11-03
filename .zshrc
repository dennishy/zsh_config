# Path to your oh-my-zsh installation.
export ZSH="/Users/dennis-active/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='nerdfont-complete'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git zsh-autosuggestions)

# User configuration

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls -G"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline rbenv)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

#Init zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#homebrew 

#pyenv concig
export PYENV_ROOT=/usr/local/var/pyenv 

#pyenv-virtualenvwrapper config
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/workspace
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
#pyenv init
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#pyenv virtualenvwrapper init
pyenv virtualenvwrapper_lazy
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

#require activation of virtualenv for pip to run
export PIP_REQUIRE_VIRTUALENV=true
