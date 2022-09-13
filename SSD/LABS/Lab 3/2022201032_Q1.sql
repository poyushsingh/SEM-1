select CONCAT(e1.Fname," ",e1.Minit,"",e1.Lname),d1.Mgr_ssn from DEPARTMENT d1, EMPLOYEE e1 where  e1.Ssn = d1.Mgr_ssn AND d1.Dnumber in (select Dno from EMPLOYEE where Ssn in (select Essn from WORKS_ON where Hours<40.0));



