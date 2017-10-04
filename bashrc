alias ls="ls -Fh --color=auto"
alias l="ls -lh"
alias la="ls -lAh"
alias lr="ls -ltrh"
alias top="top -d 1"
alias less="less -R"
alias bc="bc -l"

if [ "$HOSTNAME" = "arch" ]; then
    alias mouse="sudo rmmod psmouse; sudo modprobe psmouse"
    alias darwin="ssh -p 5000 max@wongfamily.duckdns.org"
    alias darwinsftp="sftp -P 5000 max@wongfamily.duckdns.org"
    alias omv="ssh -p 5001 max@wongfamily.duckdns.org"
    alias omvsftp="sftp -P 5001 max@wongfamily.duckdns.org"
fi

alias gcp="ssh -i ~/.ssh/gcp wong_max94@maxgcp.duckdns.org"

alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"

export PATH="$PATH:.:~/.local/bin"
export EDITOR="vim"
export HISTFILESIZE=1000
export LANG="en_US.UTF-8"
export JAVA_HOME="/usr/lib/jvm/default/"
export TERM="xterm-256color"

# prompting
function prompt {
    blk=$(tput setaf 0)
    red=$(tput setaf 1)
    grn=$(tput setaf 2)
    ylw=$(tput setaf 3)
    blu=$(tput setaf 4)
    pur=$(tput setaf 5)
    cyn=$(tput setaf 6)
    wht=$(tput setaf 7)
    gry=$(tput dim)
    reset=$(tput sgr0)
    rev=$(tput rev)

    export PS1='\[$red\]┌──[\u\[$ylw\]@\[$grn\]\h \[$wht\]\T \[$pur\]$PWD \[$reset\]\!\n\[$red\]└─> \[$reset\]'  
    export PS2=">> "
}

PROMPT_COMMAND='prompt'
