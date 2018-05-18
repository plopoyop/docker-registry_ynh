# Docker Registry

Attempt to provide a private docker registry for yunohost

* [Docker Registry repository](https://github.com/docker/distribution/)
* [YunoHost website](https://yunohost.org)

## Working :
- install
- remove
- backup
- upgrade

Minimal testing so far

## How to :
- domain root install only (registry protocol limitation)
- no LDAP integration, no security
- for self-signed certificates :
    - copy the `ca.crt` file of your domain into your client : `/etc/docker/certs.d/[domain_name]/ca.crt`

## Todo :
- LDAP integration
