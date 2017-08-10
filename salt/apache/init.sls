install_apache:
 pkg.installed:
   - name: apache2

apache_running:
 service.running:
   - name: apache2
   - enable: True
   - require:
     - pkg: install_apache
   - watch:
     - file: install_apache_file

install_apache_file:
 file.managed:
   - name: /var/www/html/index.html
   - source: salt://apache/index.html
   - user: root
   - group: root
   - mode: 644
   - require:
     - pkg: install_apache
install_apache_conf:
   file.managed:
    - name: /etc/apache2/apache2.conf
    - source: salt://apache/conf/apache2.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install_apache
