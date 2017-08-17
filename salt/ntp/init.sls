{% if grains['os'] == 'Ubuntu' %}
ntp:
  pkg.installed: []


  service.running:
   - enable: True
{% endif %}
