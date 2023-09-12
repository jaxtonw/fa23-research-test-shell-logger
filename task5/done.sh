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

if [[ ! -f $_SCRIPT_LOC/file1 ]]; then
    echo "You deleted file1... let me fix that for you."
    COMPLETED=99
    echo "This file has some text in it!" > $_SCRIPT_LOC/file1
elif [[ ! -f $_SCRIPT_LOC/file2 ]]; then
    echo "You haven't made a copy of file1 named 'file2' yet"
    COMPLETED=1
elif ! grep -q "$(head file1)" file2; then
    echo "file2 is not a copy of file1"
    COMPLETED=2

elif [[ ! -f $_SCRIPT_LOC/myfile ]]; then
    echo "You haven't made a file called 'myfile' yet"
    COMPLETED=3
elif ! grep -q "Aggie" $_SCRIPT_LOC/myfile; then
    echo "You didn't put the word 'Aggie' in 'myfile' yet. Remember, it has to have a capital A!"
    COMPLETED=4
else
    echo "You've completed this task!"
    COMPLETED=0
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
