# Aliases
alias ls='exa --color=always'
alias loremIpsum="cat ~/misc/loremIpsum.txt"
alias mountPhone="jmtpfs /mnt/phone"
alias ping="prettyping"
eval $(thefuck --alias)
alias top='htop -t'
alias metasploit="msfconsole --quiet -x \"db_connect ${USER}@msf\""
alias backlight="xbacklight -set"
alias tree="ls --tree"
alias mirrorUpdate='sudo reflector -c "United Kingdom" -f 10 --save /etc/pacman.d/mirrorlist'
alias df="dfc"
# Python module interfering with logger, hide debug info from ranger until it's fixed
alias ranger="ranger 2&> /dev/null"

# Functions
# Fix pointer bug on arch
pointerFix() { sudo sh -c 'echo -n "elantech" > /sys/bus/serio/devices/serio1/protocol' }
# Get a pretty weather forecast printout
weather() { curl "https://wttr.in/$(geo -g | sed -n 3p)" }
