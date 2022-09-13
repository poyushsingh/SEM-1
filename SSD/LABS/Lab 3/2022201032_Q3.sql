select w1.Essn,count(w1.Essn) from WORKS_ON w1 where w1.Essn in ( select d1.Mgr_ssn from DEPARTMENT d1 where d1.Dnumber in (select Dnum from PROJECT where Pname = "ProductY"));

