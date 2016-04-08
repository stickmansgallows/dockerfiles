GNU Social Docker container

Work in Progress!!

To start:
docker run -p 8080:80 -v /storage:/var/www stickmansgallows/gnu-social

To update:
docker exec gnusocial git pull /var/www/gnu-social