COMPLETED=0

echo "You've completed this task!"

return $COMPLETED 2> /dev/null || exit $COMPLETED
