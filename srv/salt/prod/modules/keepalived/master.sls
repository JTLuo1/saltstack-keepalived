include:
  - modules.keepalived.install

keepalived.service:
  service.running:
    - enable: true
    - reload: true
    - require:
      - pkg: download-keepalived
    - watch:
      - file: /etc/keepalived/keepalived.conf
