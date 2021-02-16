export XDG_CONFIG_HOME=/mnt/c/dotfiles
export TERM=screen-256color

if [[ ! $TERM =~ screen-256color ]]; then
    exec tmux
fi

source ~/.aliases
