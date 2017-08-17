testo_user:
 user.present:
   - fullname: testo
   - name: testo
   - password: $6$syTw2Ndu$WdmMGIZ.iz96NXuixQUz8JezO5MjJ0uiguuVLZNmEjECNODLYOq.HK.j2x2JerYiA2OXtgOsQkgetPto.sDB./ 
   - shell: /bin/sh
   - home: /home/testo
   - groups:
     - sudo
{% for user,args in pillar['users'].iteritems() %}
{{ user }}:
 user.present:
   - password: {{ args ['pwd'] }}
   - shell: {{ args ['shell'] }}
   - home: {{ args ['home'] }}
   - groups: {{ args ['groups'] }}
{% endfor %}
