if status is-interactive
    # Commands to run in interactive sessions can go here
end

# hide greeting
set -U fish_greeting ""

# go
set -x GOPATH $HOME/go
fish_add_path $GOPATH/bin

# homebrew
fish_add_path /opt/homebrew/bin

# local bin
fish_add_path /usr/local/bin

# aliases
alias c "printf '\33c\e[3]'"
alias clear c
alias e exit
alias r "go run ."
alias hd "history delete"

# starship
starship init fish | source
