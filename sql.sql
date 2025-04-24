create database rain;
use rain;
select * from rainfall;
select avg(ANNUAL) from rainfall;
select sum(Jan) from rainfall where STATE ='BIHAR';
select * from rainfall where ANNUAL >=(select avg(ANNUAL) from rainfall);
select STATE,avg(ANNUAL) FROM rainfall group by STATE ORDER BY STATE;
select * from rainfall as r1 join rainfall as r2 on r1.STATE=r2.STATE ;

create view result as 
select STATE,avg(ANNUAL),sum(Jan-Feb) FROM rainfall group by STATE ORDER BY STATE;

select * from result;


select * from rainfall where ANNUAL >=(select avg(ANNUAL) from rainfall);
create INDEX desire on rainfall(ANNUAL)
