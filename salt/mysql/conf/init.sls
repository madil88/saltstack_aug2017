mysql_setup:
  debconf.set:
    - name: mysql-server
    - data:
       'mysql-server/root_password': {'type' : ''password', 'value': '{{ salt['piller.get']('mysql:root_pw', '') }}' }
       'mysql-server/root_password_again' : { 'type' : 'password', 'value' : '{{ salt['piller.get']('mysql:root_pw', '') }}' }
     - require:
         - pkg: debconf-utils
         - pkg: python-mysqldb
