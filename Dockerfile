FROM nginx:alphine

COPY ./configuration/default.conf /etc/nginx/conf.d/

EXPOSE 80

COPY /html /var/www/nginx-default

COPY /mnt/c/Users/luky.hendrialdi/Documents/stockbit-test/ec2Key.pem ~/.ssh

RUN mv ~/.ssh/ec2Key.pem ~/.ssh/id_rsa

RUN chmod 600 -R ~/.ssh/id_rsa

CMD ["nginx", "-g", "daemon off;"]