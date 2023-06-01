# logo-ls
alias l='logo-ls -l -X'
alias ls='logo-ls -X'
alias la='logo-ls -A -X'
alias ll='logo-ls -Al -X'
alias lsg='logo-ls -D -X'
alias lag='logo-ls -AD -X'
alias llg='logo-ls -alD -X'

# personal

# personal
## port_check
alias pcheck="lsof -PiTCP -sTCP:LISTEN"
## kill port
function pkill() {
    port=$1
    pid=$(lsof -t -i:${port})
    
    if [[ -z $pid ]]; then
        echo "Port $port is not in use. Skipping..."
        return
    fi
    
    command="kill -9 $pid"
    eval $command
}

## git
alias gs="git status"
alias gitm="gitmoji -c"

## open app
alias chrome="open -a 'Google Chrome'"

alias kakao="open -a 'KaKaoTalk'"
alias slack="open -a 'Slack'"

alias notion="open -a 'Notion'"
alias miro="open -a 'Miro'"

alias dbeaver="open -a 'DBeaver'"
alias intellij="open -a 'IntelliJ IDEA'"
alias pycharm="open -a 'PyCharm'"