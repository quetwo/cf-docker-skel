FROM lucee/lucee:7.0.1.100

#------ Prep web server directory and remove all existing demo files.
RUN rm -R /var/www

#------ Set all logs to be directed to the console, and set the default error level to WARNING
ENV LUCEE_LOGGING_FORCE_APPENDER=console
ENV LUCEE_LOGGING_FORCE_LEVEL=warning

#------ List of extensions required by this deployment.  Comma seprated.
ENV LUCEE_EXTENSIONS="D062D72F-F8A2-46F0-8CBC91325B2F067B;name=ORM;version=6.5.4,org.lucee:mysql-jdbc-extension;version=9.6.0"

COPY ./webroot/ /var/www/

#----- run the prewarm script to download and install all the extensions required by this deployment
RUN /usr/local/tomcat/bin/prewarm.sh

EXPOSE 8888