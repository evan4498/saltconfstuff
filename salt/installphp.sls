include:
  - installweb

phpserver:
  pkg.installed:
    - name: {{ pillar['php'] }}
    - require_in:
      - name: webserver
