ssh_config:
    pkg.installed:
     - name: ssh
    service.running:
     - name: ssh
    file.managed:
     - name: /etc/ssh/ssh_config
     - source: salt://ssh/ssh_config
     - require:
        - pkg: ssh
