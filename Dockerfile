FROM nginx
RUN apt-get update; apt-get install -y \
	python-certbot-nginx
RUN apt-get clean
VOLUME /etc/letsencrypt
VOLUME /etc/nginx/conf.d
EXPOSE 80
EXPOSE 443
ADD run.sh /usr/local/bin
CMD run.sh
