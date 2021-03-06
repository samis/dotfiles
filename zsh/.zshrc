# Path to your oh-my-zsh installation.
export ZSH=/home/samis/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitignore git-extras colored-man-pages extract safe-paste )

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nano'
else
    export EDITOR='emacsclient'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='green'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="white"
POWERLEVEL9K_HISTORY_BACKGROUND='238'
export ALTERNATE_EDITOR=""
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
alias emacs=emacsclient
alias nano=emacs
#source ~/.xsh
#source /etc/profile.d/emscripten.sh
alias ls="ls --color=auto"
alias in-dotfiles='() {( cd ~/dotfiles; $@)} '
alias ind=in-dotfiles
export PATH=/home/samis/.gem/yysfm7g9f8qlllimbdp96d821lqhdx8h-ruby-2.3.0/2.3.0/bin:/home/samis/.guix-profile/bin:/home/samis/.cabal/bin:/home/samis/.gem/ruby/2.3.0/bin:/usr/local/heroku/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export GEM_PATH=/home/samis/.gem/yysfm7g9f8qlllimbdp96d821lqhdx8h-ruby-2.3.0/2.3.0:/home/samis/.guix-profile/lib/ruby/gems/2.3.0/
export GEM_HOME=/home/samis/.gem/yysfm7g9f8qlllimbdp96d821lqhdx8h-ruby-2.3.0/2.3.0
export GEM_SPEC_CACHE=/home/samis/.gem/yysfm7g9f8qlllimbdp96d821lqhdx8h-ruby-2.3.0/specs
export ORIG_PATH=$PATH
export ORIG_GPATH=$GEM_PATH
export ORIG_GHOME=$GEM_HOME
export ORIG_GSPEC_CACHE=$GEM_SPEC_CACHE
chef-mode() {
    eval "$(chef shell-init zsh)"
}
chef-mode-off() {
    export PATH=$ORIG_PATH
    export GEM_PATH=$ORIG_GPATH
    export GEM_HOME=$ORIG_GHOME
    export GEM_SPEC_CACHE=$ORIG_GSPEC_CACHE
}
# GPG Agent, done right.
eval $(gpg-agent --daemon --enable-ssh-support)
# GNUstep application root
export GNUSTEP_USER_ROOT="${HOME}/GNUstep"
