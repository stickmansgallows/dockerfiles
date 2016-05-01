#!/bin/bash

if [[ ! -f /var/www/html/README.md ]]; then
    /install.sh
fi
rm -rf /social
cd /var/www/html
git pull

apache2-foreground