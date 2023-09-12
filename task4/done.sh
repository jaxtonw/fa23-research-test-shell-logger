COMPLETED=0

if [[ -n $1 ]]; then
    if (( $1 == 194 )); then
        echo "You've completed this task!"
        COMPLETED=0
    elif (( $1 > 194 )); then
        echo "Provided word count was not correct; word count too large"
        COMPLETED=1
    else
        echo "Provided word count was not correct; word count too small"
        COMPLETED=2
    fi
else
    echo "Hmmm... you didn't provide an argument."
    echo "Try again?"
    COMPLETED=3
fi

return $COMPLETED 2> /dev/null || exit $COMPLETED
