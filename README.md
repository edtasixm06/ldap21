# LDAP server
## @edt ASIX M06-ASO Curs 2021-2022

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

