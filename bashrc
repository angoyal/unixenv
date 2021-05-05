###################################
# utility to override custom function
###################################
save_function() {
    local ORIG_FUNC=$(declare -f $1)
    local NEWNAME_FUNC="$2${ORIG_FUNC#$1}"
    eval "$NEWNAME_FUNC"
}

###################################
# Source the default rc
###################################

if [ -f /etc/bashrc ] 
then
	source /etc/bashrc;
fi
###################################
# End
###################################

###################################
# Set up the terminal:
###################################

#     stty kill "^U" intr "^C" eof "^D"
#     stty hupcl ixon ixoff

# Set up the shell environment:
#    set -u
#     trap "echo 'logout'" 0

# Set up the shell variables:
     EDITOR=vi
     export EDITOR
     export TERM=xterm

###################################
# End
###################################

###################################
# Test if PATH has been set properly
# then do not set it again
###################################

echo $PATH | grep Ankur

if [ $? -eq 1 ]
then

    if [ -f ~/.path_settings ]
    then
         source ~/.path_settings
    fi

fi

###################################
# End
###################################

###################################
# Set the prompt
###################################

ID=`id | awk -F= ' { print $2 } ' | cut -c1`

if [ $ID -eq 0 ]
then 
    PMT="root#"
else
    PMT=">"
fi

#export PS1='${PWD} $PMT '
function cd() {
	builtin cd $1
	export PS1="`pwd` $PMT"
}

###################################
# End
###################################

###################################
# source aliases
###################################

if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

###################################
# End
###################################

###################################
# Set the env for ACME
###################################

case "`uname -n`" in 
	"cbin3-nbsvob1") ;;
	#*) echo "do nothing"
esac

###################################
# End
###################################



cd
clear
