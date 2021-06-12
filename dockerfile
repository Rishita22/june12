FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page268/soul.zip
RUN apt install unzip -y
RUN unzip soul.zip
RUN rm -rf soul.zip
RUN mv soul/* /usr/local/apache2/htdocs
CMD httpd-foreground
