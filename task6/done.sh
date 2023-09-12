COMPLETED=0

echo "I trust you. You've completed this task!"

return $COMPLETED 2> /dev/null || exit $COMPLETED
