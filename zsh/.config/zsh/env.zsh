export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"
export ZSH_THEME="gallois"
export RTV_EDITOR="nvim"
export RTV_BROWSER=$BROWSER
export RTV_URLVIEWER="urlview"
export BAT_THEME="ansi-dark"
# Enable Junit for java
export JUNIT_HOME="/usr/share/java/junit.jar"
export CLASSPATH=$CLASSPATH:"/usr/share/java/junit.jar"
# Mark the android sdk
export ANDROID_HOME="/opt/android-sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export ANSIBLE_NOCOWS=1
export GOPATH=~/.go

export LAPTOP_HOSTNAME="athena"

#Path modifications
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.gem/ruby/2.5.0/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:~/.go/bin

# zsh tmux addon
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOQUIT=true
ZSH_TMUX_FIXTERM=true
