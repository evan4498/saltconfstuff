/var/www/index.html:
  file:
    - managed
    - source: salt://webserver/index.html
    - require
      - pkg: apache2

apache2:
  service:
    - running
    - require
      - pkg: apache2
  pkg:
    - installed
