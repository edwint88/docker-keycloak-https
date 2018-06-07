#Dockerfile 
FROM jboss/keycloak:2.5.5.Final

USER jboss

RUN ls /opt/jboss/

ADD standalone.xml /opt/jboss/keycloak/standalone/configuration/standalone.xml
ADD standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
ADD keycloak.jks /opt/jboss/keycloak/standalone/configuration/keycloak.jks

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ "/opt/jboss/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]