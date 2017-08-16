install_mysql:
 pkg.installed:
   - name: mysql-server
   - name: mysql-client
   - name: mysql.python

service_mysql:
 service.running:
   - name: mysql
   - enable: True
   - require:
     - pkg: install_mysql

mysql_setup:
  mysql_database.present:
    - name: db14test
    - connection_user: root
    - connection_pass: password
    - character_set: utf8
    - require: 
      - pkg: install_mysql

user_setup:
   mysql_user.present:
    - name: user14test
    - host: localhost
    - password: pass4test
    - connection_user: root 
    - connection_pass: password
    - connection_charset: utf8
user_priv:
  mysql_grants.present:
    - grant: select,insert,update
    - database: db14test.*
    - user: user14test
    - connection_user: root
    - connection_pass: password 
