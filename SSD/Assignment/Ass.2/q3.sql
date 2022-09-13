Select one.EmployeeRegion,one.`No. Of Employee born between 00:00 hours to 08:00 hours`, second.`No. Of Employee born between 08:01 hours to 15:00 hours`, third.`No. Of Employee born between 15:01 hours to 22:59 hours` from 
(select Region as EmployeeRegion ,count(*) as `No. Of Employee born between 00:00 hours to 08:00 hours` from person where Time_of_Birth between '00:00:00' and '08:00:00' group by Region) as one 
INNER JOIN
(select Region as EmployeeRegion,count(*) as `No. Of Employee born between 08:01 hours to 15:00 hours` from person where Time_of_Birth between '08:01:00' and '15:00:00' group by Region) as second ON one.EmployeeRegion = second.EmployeeRegion 
INNER JOIN
(select Region as EmployeeRegion,count(*) as `No. Of Employee born between 15:01 hours to 22:59 hours` from person where Time_of_Birth between '15:01:00' and '22:59:00' group by Region) as third ON second.EmployeeRegion = third.EmployeeRegion;
