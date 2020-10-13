FROM lucee/lucee:5.3

RUN rm -R /var/www
RUN ln -sf /dev/stdout /opt/lucee/web/logs/application.log && ln -sf /dev/stdout /opt/lucee/web/logs/exception.log
RUN echo "cp /run/secrets/admin_password /opt/lucee/server/lucee-server/context/password.txt" >> /usr/local/tomcat/bin/setenv.sh

COPY ./webroot/ /var/www/

EXPOSE 8888