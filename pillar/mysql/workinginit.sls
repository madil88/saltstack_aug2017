mysql:
 connection:
   user: root
   pass: '$6$vG3k3xGc$3GSYNUwfxvi0jwbGEsfb6Pe./1O2qq51TRwse47KwJIvlZB7tNdMza1dhd2AOLa5OlGOKC0XiHv.j5ZSVTXhS0:17389'
 users:
   bob: 
     - host: localhost
     - charset: utf8
     - pass: bobpass
     - database: johndb
     - grants: ['insert', 'update', 'select', 'delete']
   john:
     - host: localhost
     - charset: utf8
     - pass: johnpass
     - database: johndb
     - grants: ['all privileges']
   smith:
     - host: localhost
     - charset: utf8
     - pass: smithpass
     - database: johndb
     - grants: ['insert', 'update', 'select', 'delete']
 
  
