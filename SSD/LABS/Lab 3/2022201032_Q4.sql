select Dnumber,Dname,(select count(*) from DEPT_LOCATIONS dl where dl.Dnumber=d2.Dnumber ) from DEPARTMENT d2 where Dnumber in(select Dnumber from DEPARTMENT where Mgr_ssn in (select d1.Mgr_ssn from DEPARTMENT d1,DEPENDENT d2 where d1.Mgr_ssn=d2.Essn and d2.Sex='F' group by d1.Mgr_ssn having count(*) >=2));

