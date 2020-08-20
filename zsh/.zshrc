# Oh-My-Zsh plugins to load
plugins=(
    "cabal"
    "copyfile"
    "docker"
    "docker-compose"
    "emoji"
    "encode64"
    "extract"
    "git"
    "gitignore"
    "gpg-agent"
    "history"
    "last-working-dir"
    "pip"
    "python"
    "sudo"
    "sysadmin-util"
    "systemd"
    "taskwarrior"
    "urltools"
    "vi-mode"
    "wd"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
)
# Source the env variables
source $HOME/.config/zsh/env.zsh
# If we're running on personal laptop, add some more plugins
if [[ $(hostname) == $LAPTOP_HOSTNAME ]]; then
    plugins+=(
        "compleat-fixed"
        "you-should-use"
        "history-substring-search"
        "archlinux"
        "tmux"
        "zsh-256color"
        "autoupdate"
        "clipboard"
    )
    export PAGER="nvimpager"
fi
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

if [[ $(hostname) == $LAPTOP_HOSTNAME ]]; then
    if [[ ! -f /tmp/zsh-booted ]]; then
        motd
        touch /tmp/zsh-booted
    fi

    # Load pywal colours
    (command cat $HOME/.cache/wal/sequences &)

    # Source laptop-specific configurations
    source $HOME/.config/zsh/laptop-specific.zsh
fi

# Load starship
eval "$(starship init zsh)"

#################
# Miscellaneous #
#################
# Load tmuxinator completions
source $HOME/.config/zsh/tmuxinator.zsh
# Source aliases and functions
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/functions.zsh
