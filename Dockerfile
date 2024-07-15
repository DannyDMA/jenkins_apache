#To use official Apache base image
FROM httpd:latest

#To copy our custom webpage into Apache's web root
COPY ./index.html /usr/local/apache2/htdocs/

#To expose port 80 for HTTP traffic
EXPOSE 80