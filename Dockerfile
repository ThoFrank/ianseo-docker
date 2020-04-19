FROM mattrayner/lamp
#WORKDIR /opt
RUN  apt-get update \
  && apt-get install -y wget unzip imagemagick php-imagick php-gd php-curl
ADD fetch_ianseo.sh .
RUN ./fetch_ianseo.sh
EXPOSE 80 3306

CMD ["/run.sh"]
