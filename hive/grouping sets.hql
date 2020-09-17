


create table tmp_requests LIFECYCLE 20 as
select * from values
    (1, 'windows', 'PC', 'Beijing'),
    (2, 'windows', 'PC', 'Shijiazhuang'),
    (3, 'linux', 'Phone', 'Beijing'),
    (4, 'windows', 'PC', 'Beijing'),
    (5, 'ios', 'Phone', 'Shijiazhuang'),
    (6, 'linux', 'PC', 'Beijing'),
    (7, 'windows', 'Phone', 'Shijiazhuang')
as t(id, os, device, city);

select * from tmp_requests ;


SELECT NULL, NULL, NULL, COUNT(*)
FROM tmp_requests
UNION ALL
SELECT os, device, NULL, COUNT(*)
FROM tmp_requests GROUP BY os, device
UNION ALL
SELECT null, null, city, COUNT(*)
FROM tmp_requests GROUP BY city;


SELECT os,device, city ,COUNT(*)
FROM tmp_requests
GROUP BY os, device, city 
GROUPING SETS((os, device),  (city),  ());


SELECT 
  IF(GROUPING(os) == 0, os, 'ALL') as os,
  IF(GROUPING(device) == 0, device, 'ALL') as device, 
  IF(GROUPING(city) == 0, city, 'ALL') as city ,
  COUNT(*) as count
FROM tmp_requests
GROUP BY os, device, city 
GROUPING SETS((os, device), (city), ());


















