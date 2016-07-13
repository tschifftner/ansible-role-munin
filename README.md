# Ansible Role: Install munin

[![Build Status](https://travis-ci.org/tschifftner/ansible-role-munin.svg)](https://travis-ci.org/tschifftner/ansible-role-munin)

Installs munin on Debian/Ubuntu linux servers.

## Requirements

None

## Dependencies

None.

### Munin settings

```
# Login
munin_admin_user: munin
munin_admin_password: munin

# Paths
munin_include_dir: '/etc/munin/munin-conf.d'
munin_db_dir: /var/lib/munin
munin_html_dir: /var/www/html/munin
munin_log_dir: /var/log/munin
munin_run_dir: /var/run/munin
munin_tmp_dir: /etc/munin/templates
munin_static_dir: /etc/munin/static

# Settings
munin_max_processes: 12

# Hosts
munin_hosts:
  - name: "{{ ansible_hostname }}"
    address: "127.0.0.1"
    extra: ["use_node_name yes"]

munin_alerts:
  - name: "munin"
    email: "email@example.org"
    subject: "Munin-notification for ${var:group} :: ${var:host}"
    level: "warning critical"

munin_node_ingore_files: []

```

### Enable nginx vhost

```
munin_configure_nginx: true
munin_nginx_listen: '8012'
munin_nginx_server_name: '{{ ansible_fqdn }}'
```

## Installation

```
$ ansible-galaxy install tschifftner.munin
```

## Example Playbook

    - hosts: server

      roles:
        - { role: tschifftner.munin }

## Supported OS
Ansible          | Debian Jessie    | Ubuntu 14.04    | Ubuntu 16.04    |
:--------------: | :--------------: | :-------------: | :-------------: |
2.1              | Yes              | Yes             | Yes             |              

## License

MIT / BSD

## Author Information

 - [Tobias Schifftner](https://twitter.com/tschifftner), [ambimax® GmbH](https://www.ambimax.de)