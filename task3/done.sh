COMPLETED=0

if [[ $1 == file3 ]]; then
    echo "You've completed this task!"
    COMPLETED=0
elif [[ $1 == README.md ]]; then
    echo "You're technically correct... the best kind of correct!"
    COMPLETED=99
else
    echo "Hmmm... you didn't seem to find the word 'Aggie' yet."
    echo "Capitalization and spelling matter for this task."
    echo "Try again?"
    COMPLETED=1
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
