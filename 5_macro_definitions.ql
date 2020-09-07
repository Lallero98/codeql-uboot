import cpp
/*
from Macro m
where m.getName() = "ntohs" or 
      m.getName() = "ntohl" or
      m.getName() = "ntohll"
select m*/
//numero di risultati: 4
/*
from Macro m
where m.getName() in ["ntohs", "ntohl","ntohll"]
select m*/


from Macro m
where m.getName().regexpMatch("ntoh(s|l|ll)")
select m