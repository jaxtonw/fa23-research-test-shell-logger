# Get the location of this script
if [[ -n $BASH_VERSION ]]; then
    _SCRIPT_LOC=$BASH_SOURCE
elif [[ -n $ZSH_VERSION ]]; then
    _SCRIPT_LOC=${(%):-%x}
else
    echo "Don't know this shell... Unable to test with this shell. Maybe try running 'bash ./done.sh'?"
    return 1 2> /dev/null || exit 1
fi


COMPLETED=0

if [[ ! -d $_SCRIPT_LOC/delete-me ]]; then
    echo "You've completed this task!"
    COMPLETED=0
else
    echo "Hmmm... you didn't seem to delete the 'delete-me' folder yet"
    echo "Try again?"
    COMPLETED=1
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
