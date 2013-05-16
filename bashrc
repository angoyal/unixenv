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

export PS1='${PWD} $PMT '

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
	*) source /auto/andiamo/tools/etc/.bashrc.build
esac

###################################
# End
###################################

###################################
# Set andiamo build environment
###################################

AND_BUILD_ENV=/auto/andatc/independent/shellrc-files/current/rc/.bashrc.build
if [ -f $AND_BUILD_ENV ]
then
        source $AND_BUILD_ENV
fi


###################################
# End
###################################

###################################
# Set aliases for cisco
###################################

alias vb="cd /auto/andusr/angoyal"
alias sf="cd /auto/andusr/angoyal/sf"
alias vg="cd /auto/andusr/angoyal/sf/VegasSW"
alias ft="cd /auto/andusr/angoyal/sf/VegasSW/isan/feature"
alias sn="cd /auto/andusr/angoyal/sf/VegasSW/isan"
alias ut="cd /auto/andusr/angoyal/sf/VegasSW/isan/utils"
alias svi="cd /auto/andusr/angoyal/sf/VegasSW/isan/feature"
alias cnp="perl /auto/andusr/angoyal/sf/VegasSW/isan/templates/fsmu_based_app/create_new_process"

###################################
# End
###################################

cd
clear
