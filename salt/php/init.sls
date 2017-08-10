install_php:
  pkg.installed:
    - names:
      - php5
      - php5-mysql

/var/www/html/info.php:
  file.managed:
    - content: '<?php phpinfo();'
    - require:
       - pkg: install_php
