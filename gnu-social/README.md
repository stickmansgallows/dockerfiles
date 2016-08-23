# GNU Social Docker container
https://www.codeword.xyz/2015/09/27/self-hosting-gnu-social/

## Create mysql database:
    docker run -d \
        --name gnusocialdb \
        -v /data/mysql:/var/lib/mysql \
        -e MYSQL_ROOT_PASSWORD=rootpassword \
        mysql
        
## To start:
    docker run -d \
        --name gnusocial \
        -p 8080:80 \
        -v /storage:/var/www/html \
        --link gnusocialdb:mysql \
        stickmansgallows/gnu-social

Access localhost:8080/install.php. Set database hostname to 'mysql', database name 'social', user name 'social', and password 'password'.

## To update:
docker exec gnusocial git pull /var/www/html
