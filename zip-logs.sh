compress_logfiles() {
	local LOG_FILE_DIR=
    if [[ -z $1 ]]; then
        LOG_FILE_DIR=$PWD/.logfiles
	else
        LOG_FILE_DIR=$1
    fi
    
    local COMPRESSED_FILE_NAME=shell-logs

	if command -v tar &>/dev/null; then
		(
			cd $LOG_FILE_DIR && touch $COMPRESSED_FILE_NAME.tgz && tar --exclude=$COMPRESSED_FILE_NAME.tgz -zcf $COMPRESSED_FILE_NAME.tgz . && cd - && mv $LOG_FILE_DIR/$COMPRESSED_FILE_NAME.tgz .
		) > /dev/null

		if [[ $? == 0 ]]; then 
			printf "\

I have created the file '$COMPRESSED_FILE_NAME.tgz'

Please email this file to jaxton.winder@usu.edu"
		else
			printf "\
I am unable to compress the log files for you... 
How about you contact Jaxton for some help?

Contact: jaxton.winder@usu.edu\n"
			return 1
		fi

	elif command -v zip &>/dev/null; then
		(
			cd $LOG_FILE_DIR && zip -r $COMPRESSED_FILE_NAME.zip . && cd - && mv $LOG_FILE_DIR/$COMPRESSED_FILE_NAME.zip . > /dev/null
		) > /dev/null

		if [[ $? == 0 ]]; then 
			printf "\

I have created the file '$COMPRESSED_FILE_NAME.zip'

Please email this file to jaxton.winder@usu.edu"
		else
			printf "\
I am unable to compress the log files for you... 
How about you contact Jaxton for some help?

Contact: jaxton.winder@usu.edu\n"
			return 1
		fi
	
	else
		printf "\
I am unable to compress the log files for you... 
How about you contact Jaxton for some help?

Contact: jaxton.winder@usu.edu\n"
		return 1
	fi
}

if [[ -n $1 ]]; then
    compress_logfiles $1
else
    compress_logfiles
fi