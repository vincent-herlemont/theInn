#!/bin/bash
echo "[entrypoint.sh] bash"

USER_NAME=${LOCAL_USER_NAME:=user}
USER_ID=${LOCAL_USER_ID:-9001}

echo "> Starting with USER_NAME : $USER_NAME"
echo ">               USER_ID : $USER_ID"

# Check if the user id present
id -u $USER_NAME
if [ $? -eq 1 ]; then
	echo "> Create user ..."

	# add user without home (for avoid to general .bashrc)
	useradd --shell /bin/bash -u $USER_ID -o -c "" -M $USER_NAME

	# create home directory manualy
	export HOME=/home/$USER_NAME
	if [ ! -d "$HOME" ]; then
	 mkdir $HOME
	 chown $USER_NAME:$USER_NAME $HOME
	fi
fi

COMMAND_BASH_USER="bash-user"
COMMAND_BASH_ROOT="bash-root"
COMMAND_BASH_TAIL="bash-tail"

# execute run script
# make a translation of argments in remove specific command if needing
if [ -a ./run.sh ] &&
   [ ${#} -ge 1 ] &&
   [ ${1} == $COMMAND_BASH_USER -o ${1} == $COMMAND_BASH_ROOT -o ${1} == $COMMAND_BASH_TAIL ]; then
	./run.sh ${@:2} | sed "s/^/[run.sh] /"
else
	./run.sh ${@} | sed "s/^/[run.sh] /"
fi

# execute the bash, usefull for interactive bash.
# tow use case
# 	first user : <docker command> bash-user
#   root  user : <docker command> bash-root
if [ ${#} -ge 1 ]; then

	# bash user output
	if [ ${1} == $COMMAND_BASH_USER ]; then
		echo "> Connection with user : $USER_NAME"
		su $USER_NAME -s /bin/bash
	fi

	# bash root output
	if [ ${1} == $COMMAND_BASH_ROOT ]; then
		echo "> Connection with root"
		echo "> HELP: You can you connected with user : "
		echo ">       su $USER_NAME -s /bin/bash"
		bash -i
	fi

	# immortal output
	if [ ${1} == $COMMAND_BASH_TAIL ]; then
		echo "> Running ..."
		tail -f /dev/null
	fi

fi