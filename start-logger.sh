# Kill logger if not bash or zsh
if [[ -n $BASH_VERSION ]]; then
    (return 0 2>/dev/null) && sourced=0 || sourced=1
elif [[ -n $ZSH_VERSION ]]; then
    [[ $ZSH_EVAL_CONTEXT =~ :file$ ]] && sourced=0 || sourced=1
else
    echo "Don't know this shell... Logger unable to initialize"
    return 1 2> /dev/null || exit 1
fi

# Bail if this is sourced
if [[ $sourced == 1 ]]; then
    # If this was executed...
    printf "The logger *cannot* be treated as an executable program. It must be sourced in a login shell.\nQuitting...\n"
    exit 1
fi
unset sourced

source .logr/main.sh