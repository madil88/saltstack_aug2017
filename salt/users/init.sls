{% for user,args in pillar['users'].iteritems() %}
{{ user }}:
 user.present:
   - password: {{ args ['pwd'] }}
   - shell: {{ args ['shell'] }}
   - home: {{ args ['home'] }}
   - groups: {{ args ['groups'] }}
{% endfor %}
