#
# Personal settings Rahul Ghose
#

txtreset='$(tput sgr0)'
txtbold='$(tput bold)'
txtblack='$(tput setaf 0)'
txtred='$(tput setaf 1)'
txtgreen='$(tput setaf 2)'
txtyellow='$(tput setaf 3)'
txtblue='$(tput setaf 4)'
txtpurple='$(tput setaf 5)'
txtcyan='$(tput setaf 6)'
txtwhite='$(tput setaf 7)'

function gb {
	[ -d .git ] && git rev-parse --abbrev-ref HEAD 
}

export PS1="\n\[\033[1;34m\]\342\226\210\342\226\210 \u @ \h""$BBlue"" \w""$Color_Off $txtgreen\$(gb)$txtreset \n\[\033[0;36m\]\342\226\210\342\226\210 \d \t $ \[\033[0;39m\]"

# aliases...
alias gs='git status'
alias gc='git checkout'
alias gfu='git fetch upstream'

title() {
	echo -e '\033k'$1'\033\\'
}

export -f title

# I like the home bin for custom scripts
export PATH=$PATH:~/bin/

