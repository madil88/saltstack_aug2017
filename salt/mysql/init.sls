{% for user, arg in  pillar.get('mysql:users', {}).items() %}
{{ user }}
 mysql_user.present:
   - password: {{arg['pass'] }}
   - connection_user: root 
   - connection_pass: password
   - connectionchar_set: utf8
{% endfor %}

