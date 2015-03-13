webserver:
  pkg.installed:
    - name: {{ pillar['apache'] }}
  service.running:
    - name: {{ pillar['apache'] }}
    - watch:
      - file: /tmp/{{ pillar['company'] }}.conf

webfiles:
  file.managed:
    - name: /tmp/{{ pillar['company'] }}.conf
    - source: salt://configs/webconfig.conf
