madil:
 user.present:
   - fullname: M Adil
   - shell: /bin/sh
   - home: /home/madil
   - groups:
     - sudo
     

/home/madil/.ssh/known_hosts:
  file.managed:
    - source: salt://user/known_hosts
    - mode: 640
