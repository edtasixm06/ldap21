#! /bin/bash

rm -rf /etc/ldap/slapd.d
rm -rf /var/lib/ldap
slaptest -f /opt/docker/slapd.conf -F /etc/ldap/slapd.d
slapadd  -F /etc/ldap/slapd.d -l /opt/docker/organitzacio-edt.org.ldif
chown -R openldap.openldap /etc/ldap/slapd.d /var/lib/ldap
/usr/sbin/slapd
