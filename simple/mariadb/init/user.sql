## Create user
CREATE USER 'user'@'%' IDENTIFIED BY 'user';
# Display
SELECT user,host FROM mysql.user;

## Assign Grant all to user
GRANT ALL PRIVILEGES ON *.* to 'user'@'%' WITH GRANT OPTION;
# Refresh privilage
flush privileges;
# Display
SHOW GRANTS;
SHOW GRANTS FOR user;