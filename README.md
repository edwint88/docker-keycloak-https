# docker-keycloak-https
This is how one should set the Keycloak to work with a self signed certificate 
In the future Keycloak versions this can be set from the config files.

# Keycloak.jks
is the one from here: https://www.keycloak.org/docs/3.3/server_installation/topics/network/https.html
-> feel free to change it

# Docker Image Build
`docker build -t https/keycloak:2.5.5.Final . `

# Docker Image Run
`docker run -d -p 8443:8443 -p 8080:8080 --name keycloak-https -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin https/keycloak:2.5.5.Final`
