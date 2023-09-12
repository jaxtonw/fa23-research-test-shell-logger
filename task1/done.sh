COMPLETED=0

if [[ $1 == 1 ]]
    echo "You've completed this task!"
    COMPLETED=0
else
    echo "Hmmm... you didn't seem to give me the argument '1'."
    echo "You gave me: $1"
    echo "Try again?"
    COMPLETED=1
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
