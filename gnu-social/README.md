GNU Social Docker container
https://www.codeword.xyz/2015/09/27/self-hosting-gnu-social/

Create mysql database:
docker exec -ti mysql mysql -u root -p
Enter password: rootpassword
> CREATE DATABASE social;
> GRANT ALL ON social TO social IDENTIFIED BY 'password';
> \q

To start:
docker run -p 8080:80 -v /storage:/var/www stickmansgallows/gnu-social

Access localhost:8080/install.php. Set database hostname to mysql and use name, username and password set above.

To update:
docker exec gnusocial git pull /var/www/html