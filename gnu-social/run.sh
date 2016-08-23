#!/bin/bash

if [[ ! -f /var/www/html/config.php ]]; then
    /install.sh
fi

mysql --user=root --password=rootpassword --host=mysql < /mysql.sh
apache2-foreground
