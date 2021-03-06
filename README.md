# LDAP server
## @edt ASIX M06-ASO Curs 2021-2022

Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona


### Ldap servers:

 * **edtasixm06/ldap21:base** Server bàsic ldap, amb base de dades edt.org.

 * **edtasixm06/ldap21:editat** Imatge base amb modificacions: dn amb uid.

 * **edtasixm06/ldap21:schema** Servidor LDAP amb la base de dades edt.org S'ha fet el següent:

    * *futbolistaA.schema* Derivat de inetorgPerson, structural, 
      injectat dades de dades-futbolA.ldif.

    * *futbolistaB.schema* Structural derivat de TOP.

    * *futbolistaC.schema* Auxiliary.


 * **edtasixm06/ldap21:practica**   Imatge de la pràctica de ldap schema.
    Feta per l'alumne alpacakvg. Servidor LDAP editat amb la base de dades edt.org on
    s'ha fet el següent: 
 
   * prova.schema amb objectclass derivat de inetOrgPerson, structural y objectclass
     SUP TOP auxiliary.

   * injectar dades de data-macacos.ldif

 * **edtasixm06/ldap21:group** Imatge final del servei ldap amb usuaris i grups. 
   Els usuaris són identificats pel uid per exemple uid=pere,ou=usuaris,dc=edt,dc=org.
   S'han afegit grups dins de una ou=grups que conté els grups, i s'hi han posat els usuaris
   tot validant la coherència de les dades. També s'ha repassat que els homes dels
   usuaris siguin vàlids.

```
dn: ou=grups,dc=edt,dc=org
ou: grups
description: Container per a grups del sistema linux
objectclass: organizationalunit
```

```
dn: cn=professors,ou=grups,dc=edt,dc=org
objectclass: posixGroup
cn: professors
gidNumber: 601
description: Grup de professors
memberUid: pau
memberUid: pere
memberUid: jordi
```

#### Desplegament
```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d edtasixm06/ldap21:grup
```

