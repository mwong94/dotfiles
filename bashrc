alias ls="ls -FhG"
alias l="ls -lh"
alias la="ls -lAh"
alias lr="ls -ltrh"
alias top="top -d 1"
alias less="less -R"
alias bc="bc -l"
alias trash="trash-put"

export PATH="/usr/local/miniconda3/bin:$PATH:."
export EDITOR="vim"
export HISTFILESIZE=1000
export LANG="en_US.UTF-8"
export JAVA_HOME="/usr/lib/jvm/default/"
export TERM="xterm-256color"

# prompting
function prompt {
    if [ "$(id -u)" -ne 0 ]; then
        echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log;
    fi
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
