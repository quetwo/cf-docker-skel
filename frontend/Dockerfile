FROM lucee/lucee:5.3

RUN rm -R /var/www
RUN ln -sf /dev/stdout /opt/lucee/web/logs/application.log && ln -sf /dev/stdout /opt/lucee/web/logs/exception.log
RUN ln -sf /dev/stdout /opt/lucee/server/lucee-server/context/logs/application.log && ln -sf /dev/stdout /opt/lucee/server/lucee-server/context/logs/out.log
RUN echo "echo \$LUCEE_ADMIN_PASSWORD > /opt/lucee/server/lucee-server/context/password.txt" >> /usr/local/tomcat/bin/setenv.sh && echo "export LUCEE_ADMIN_PASSWORD=" >> /usr/local/tomcat/bin/setenv.sh

COPY ./webroot/ /var/www/

EXPOSE 8888