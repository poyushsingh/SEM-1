select * from (select CONCAT (e1.Fname, " ",  e1.Minit, " ", e1.LName),(select count(*) from EMPLOYEE e2 where e2.Super_ssn = e1.Ssn) as emp_count FROM EMPLOYEE e1 where e1.Ssn IN (select e2.Super_ssn from EMPLOYEE e3)) temp
order by temp.emp_count asc;
