# ldapserver
FROM debian:latest
LABEL version="1.0"
LABEL author="@edt ASIX-M06"
LABEL subject="ldapserver"
RUN dnf -y install procps iproute2 tree nmap vim ldap-utils 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
EXPOSE 389
