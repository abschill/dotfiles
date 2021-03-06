sdir() {
  mkdir "$1" && cd "$1"
}

ddir() {
  dirname=$(pwd)
  cd .. && rm -rf $dirname
}

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

throw() {
	echo -e "\033[0;31merr:\033[0m\n\t$*"
}

warn() {
	echo -e "\033[0;33mwarning:\033[0m\n\t$*"
}

success() {
	echo -e "\033[0;32msuccess:\033[0m\n\t$*"
}

status() {
	echo -e "\033[0;34mstatus:\033[0m\n\t$*"
}
