COMMAND_BASH_SQL="bash-sql"

# Enabled transparent_hugepage for tokudb
# TODO not cleary need investigate
if test -f /sys/kernel/mm/transparent_hugepage/enabled; then
   echo never > /sys/kernel/mm/transparent_hugepage/enabled
fi
if test -f /sys/kernel/mm/transparent_hugepage/defrag; then
   echo never > /sys/kernel/mm/transparent_hugepage/defrag
fi

/etc/init.d/mysql start
/etc/init.d/mysql status

chmod +x /init/init.sh
source /init/init.sh

if [ ${#} -ge 1 ]; then
	# bash-sql
	# Example :
	## => docker run ... <images> bash-sql <user-sql> <host> <root>
	if [ ${1} == $COMMAND_BASH_SQL ]; then
		mysql -u ${2} -h ${3} -p${4}
	fi
fi