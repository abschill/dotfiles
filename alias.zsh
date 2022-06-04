alias la="ls -a"
alias edit="emacs"
alias eemacs="emacs ~/.emacs"
alias e="emacs"

alias mp="mplayer -fs"

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"