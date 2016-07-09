zxShells

```
alias gs="git status"
alias ga="git add"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias zxlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias slog="svn log -v --limit 4"
alias slg="svn log -l 4 | perl -l40pe 's/^-+/\n/' | less"

alias zxshot="screencapture -i -o -W -x $(date '+~/Desktop/%Y_%m_%d_%H_%M_%S.png')"
aliase zxiPhoneLog="idevicesyslog -u 539e0ccdc732c96a0a087719c13c77038edf12ad"

```