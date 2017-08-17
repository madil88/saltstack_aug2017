users:
 bob:
   home: /home/bob
   pwd: $6$syTw2Ndu$WdmMGIZ.iz96NXuixQUz8JezO5MjJ0uiguuVLZNmEjECNODLYOq.HK.j2x2JerYiA2OXtgOsQkgetPto.sDB./ 
   shell: /bin/sh
   groups: 
      - sudo 
      - adm
   key: salt://user/id_pub
 john:
   home: /home/john
   pwd: $6$syTw2Ndu$WdmMGIZ.iz96NXuixQUz8JezO5MjJ0uiguuVLZNmEjECNODLYOq.HK.j2x2JerYiA2OXtgOsQkgetPto.sDB./
   shell: /bin/sh
   groups:
      - sudo
      - adm
   key: salt://user/id_pub

 smith:
   home: /home/smith
   pwd: $6$syTw2Ndu$WdmMGIZ.iz96NXuixQUz8JezO5MjJ0uiguuVLZNmEjECNODLYOq.HK.j2x2JerYiA2OXtgOsQkgetPto.sDB./
   shell: /bin/sh
   groups:
      - sudo
      - adm
   key: salt://user/id_pub


 paul:
   home: /home/paul
   pwd: $6$syTw2Ndu$WdmMGIZ.iz96NXuixQUz8JezO5MjJ0uiguuVLZNmEjECNODLYOq.HK.j2x2JerYiA2OXtgOsQkgetPto.sDB./
   shell: /bin/sh
   groups:
      - sudo
      - adm
   key: salt://user/id_pub
