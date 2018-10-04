FROM tomcat:8
MAINTAINER Håkon Åmdal <hakon@aamdal.com>
# See https://github.com/opensourceBIM/BIMserver/wiki/Install-on-Ubuntu

ENV TOMCAT_HOME /usr/local/tomcat
ENV BIMSERVER_APP $TOMCAT_HOME/webapps/bimserver

# Delete the example Tomcat app to speed up deployment.
RUN rm -rf $TOMCAT_HOME/webapps/examples

ADD https://github.com/opensourceBIM/BIMserver/releases/download/v1.5.109/bimserverwar-1.5.109.war $BIMSERVER_APP.war
RUN unzip $BIMSERVER_APP.war -d $BIMSERVER_APP && rm $BIMSERVER_APP.war
