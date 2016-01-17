#
# ~/.bash_profile
#
export ETCDCTL_PEERS="http://172.31.0.2:4001"
export EDITOR="nano"
[[ -f ~/.bashrc ]] && . ~/.bashrc
PATH=$PATH:/home/samis/.gem/ruby/2.1.0/bin/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


source ~/.xsh

