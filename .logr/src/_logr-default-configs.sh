
if [[ -z $_LOGR_LOG_FILE_DIR ]]; then
    if [[ -n $LOG_FILE_DIR ]]; then
        _LOGR_LOG_FILE_DIR=$LOG_FILE_DIR
    else
        _LOGR_LOG_FILE_DIR=$HOME/.logr/logfiles
    fi
fi

if [[ -z $_LOGR_LOG_FILE_SESSION_SUFFIX ]]; then
    if [[ -n $LOG_FILE_SESSION_SUFFIX ]]; then
        _LOGR_LOG_FILE_SESSION_SUFFIX=$LOG_FILE_DIR
    else
        _LOGR_LOG_FILE_SESSION_SUFFIX=session
    fi
fi

if [[ -z $_LOGR_LOG_FILE_ENV_SUFFIX ]]; then
    if [[ -n $LOG_FILE_ENV_SUFFIX ]]; then
        _LOGR_LOG_FILE_ENV_SUFFIX=$LOG_FILE_DIR
    else
        _LOGR_LOG_FILE_ENV_SUFFIX=env
    fi
fi