debconf-utils:
  pkg:
    - installed


python-mysqldb:
  pkg:
    - installed

mysql-server:
  pkg.installed: []
  service.running:
    - require:
      - pkg: mysql-server
