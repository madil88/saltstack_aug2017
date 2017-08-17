{% if grains['os'] == 'RedHat' %}
{% set apache =  'httpd' %}
{% set conf = '/etc/apache2/apache2.conf' %}
{% elif grains['os'] == 'Ubuntu' %}
{% set apache =  'apache2' %}
{% set conf = '/etc/httpd/httpd.conf' %}
{% endif %}

install_apache:
  pkg.installed:
    - name: {{ apache }}

apache_running:
 service.running:
    - name: {{ apache }}
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
    - name: {{ conf }}
    - source: salt://apache/conf/apache2.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install_apache
