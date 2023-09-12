COMPLETED=0

FILE_NAME=$(basename $1 2>/dev/null)

if [[ -z $1 ]]; then
    echo "You did not provide an argument!"
    COMPLETED=2
elif [[ $FILE_NAME == file3 ]]; then
    echo "You've completed this task!"
    COMPLETED=0
elif [[ $FILE_NAME == README.md ]]; then
    echo "You're technically correct... the best kind of correct!"
    COMPLETED=99
elif [[ $FILE_NAME == done.sh ]]; then
    echo "You're technically correct... the best kind of correct!"
    COMPLETED=98
else
    echo "Hmmm... you didn't seem to find the word 'Aggie' yet."
    echo "Capitalization and spelling matter for this task."
    echo "Try again?"
    COMPLETED=1
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
