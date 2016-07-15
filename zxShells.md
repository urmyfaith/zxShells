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




## install list

 brew install XXX

brew uninstall XXX

```
brew list -l              


drwxr-xr-x  3 zx  admin  102 Jun 23 16:06 autojump
drwxr-xr-x  3 zx  admin  102 Jul 14 11:34 bash
drwxr-xr-x  3 zx  admin  102 Jun 29 12:54 ideviceinstaller
drwxr-xr-x  3 zx  admin  102 Jul 14 09:34 jq
drwxr-xr-x  3 zx  admin  102 Jun 29 12:54 libimobiledevice
drwxr-xr-x  3 zx  admin  102 Jun 29 12:40 libplist
drwxr-xr-x  3 zx  admin  102 Jun 29 12:38 libtasn1
drwxr-xr-x  3 zx  admin  102 Jun 29 12:40 libusb
drwxr-xr-x  3 zx  admin  102 Jun 29 12:40 libxml2
drwxr-xr-x  3 zx  admin  102 Jun 29 12:54 libzip
drwxr-xr-x  3 zx  admin  102 Jun 29 12:45 makedepend
drwxr-xr-x  3 zx  admin  102 Jul  8 18:44 node
drwxr-xr-x  3 zx  admin  102 Jul 14 09:34 oniguruma
drwxr-xr-x  3 zx  admin  102 Jun 29 12:46 openssl
drwxr-xr-x  3 zx  admin  102 Jul  3 13:32 pandoc
drwxr-xr-x  3 zx  admin  102 Jul 14 11:34 readline
drwxr-xr-x  3 zx  admin  102 Jun 23 15:50 tree
drwxr-xr-x  3 zx  admin  102 Jun 29 12:40 usbmuxd
```

brew cask install xxx

brew cask uninstall xxx

```
brew cask list -l
total 0
drwxr-xr-x  4 zx  admin  136 Jul 15 16:17 qlmarkdown
drwxr-xr-x  4 zx  admin  136 Jul  3 15:47 sublime-text
```

