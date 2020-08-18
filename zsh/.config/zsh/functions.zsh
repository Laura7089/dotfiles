# Useful cd upgrade to allow changing into a file's directory
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
# cp/mv/mkdir and move into that location
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }
mkf() { mkdir -p $1; cd $1 }
# cdl() { cd $@; ls++ }
# Useful stats function
zsh_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head }
# Disk usage
du1() { du -h --max-depth=1 "$@" | sort -k 1,1hr -k 2,2f; }
# Unix Epoch
epoch() { print $(( `echo $1 | cut -b 1-2` * 3600 + `echo $1 | cut -b 4-5` * 60 + `echo $1 | cut -b 7-8` )) }
# Long list using less
lo() {ls -la $1 | less -r}

# Get the extension of a file
ext() { printf "$(rev "$1" | cut -d "." -f 1 | rev)" }

# Generate gitignore
gitignore() {
    curl -sL "https://www.gitignore.io/api/$@"
}
