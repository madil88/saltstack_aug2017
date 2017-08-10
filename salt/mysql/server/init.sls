debconf-utils:
   pkg.installed


python-mysqldb:
   pkg.installed

mysql-server:
   pkg.installed
#     - require:
#         - name: debconf_install
#         - pkg: python-mysqldb

mysql_running:
  service.running:
      - require:
         - name: mysql-server
#             - pkg: mysql-server
      - enable: True
