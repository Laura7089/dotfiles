# General
alias h="history"
alias zshrc="$EDITOR ~/.zshrc"
alias vim=nvim
alias su='sudo su'
alias sudo='sudo ' #Let sudo recognise aliases
alias calculator="bc"
alias python="python3"
alias pip="pip3"
alias sl="ls"
alias zr="source ~/.zshrc"
alias myIP="curl ifconfig.me && printf '\n'"
alias less="less -R"
alias mkdir="mkdir -p"
alias tr="tmux source-file ~/.tmux.conf"
alias diff="colordiff"
# alias ssh="TERM=xterm ssh"
alias ghc="ghc -dynamic"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias vis="TERM=xterm-256color vis"
alias bat="PAGER=less bat"

# ls
alias l="ls -lFh"
alias la="ls -laFh"

# end of command (stolen from oh-my-zsh/common-aliases)
alias -g H="| head"
alias -g T="| tail"
alias -g G="| grep"
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"
