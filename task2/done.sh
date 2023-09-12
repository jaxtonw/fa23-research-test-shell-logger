COMPLETED=0

if [[ ! -d delete-me ]]; then
    echo "You've completed this task!"
    COMPLETED=0
else
    echo "Hmmm... you didn't seem to delete the 'delete-me' folder yet"
    echo "Try again?"
    COMPLETED=1
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
