# LDAP Server
## @edt ASIX M06-ASO 2021-2022
### Servidor LDAP (Debian 11)

Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona


 * **edtasixm06/ldap21:acl** Servidor LDAP amb la base de dades edt.org
   S'ha fet el següent:

   * eliminats els chema innecessàris
   * definir la base de dades cn=config amb usuari 
     cn=Sysadmin,cn=config i passwd syskey

 

```
docker network create hisx2
docker build -t edtasixm06/ldap21:editat .

docker run --rm --name ldap.edt.org -h ldap.edt.org --net hisx2 -p 389:389 -it edtasixm06/ldap21:acl /bin/bash

docker ps

slapcat -n0
ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'cn=config' dn

ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'cn=config'  -b 'cn=config' olcDatabase={1}mdb

ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase={1}mdb,cn=config' olcAccess
``` 



