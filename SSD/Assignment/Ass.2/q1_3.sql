DROP PROCEDURE IF EXISTS bulid_PersonTransfer;

DELIMITER //
CREATE PROCEDURE `bulid_PersonTransfer`()
BEGIN
	DROP TABLE IF EXISTS PersonTransfer;
	CREATE table PersonTransfer(
	PT int auto_increment NOT NULL PRIMARY KEY, 
	EmpID int , 
	FirstName varchar(255),
	LastName varchar(255),
        Gender varchar(10),
        DateofJoining date, 
        CurrentRegion varchar(25),
        NewRegion varchar(255),
        FOREIGN KEY (EmpID) REFERENCES person(Emp_ID)
    );
    
-- INSERT into PersonTransfer(EmpID,FirstName,LastName,Gender,DateofJoining,CurrentRegion,NewRegion)
-- SELECT Emp_ID,First_Name,Last_Name,Gender,Date_of_Joining,Region,Region
-- FROM person p;


INSERT into PersonTransfer(EmpID,FirstName,LastName,Gender,DateofJoining,CurrentRegion,NewRegion)
SELECT Emp_ID,First_Name,Last_Name,Gender,Date_of_Joining,Region,"Capitol"
FROM person p where p.Gender='M' and (DATEDIFF(curdate(),Date_of_Joining)/365.2425)>20;


INSERT into PersonTransfer(EmpID,FirstName,LastName,Gender,DateofJoining,CurrentRegion,NewRegion)
SELECT Emp_ID,First_Name,Last_Name,Gender,Date_of_Joining,Region,"DC"
FROM person p where p.Gender='F' and (DATEDIFF(curdate(),Date_of_Joining)/365.2425)>10;  

-- INSERT into PersonTransfer(EmpID,FirstName,LastName,Gender,DateofJoining,CurrentRegion,NewRegion)
-- SELECT Emp_ID,First_Name,Last_Name,Gender,Date_of_Joining,Region,Region
-- FROM person p where (p.Gender!='M' or (DATEDIFF(curdate(),Date_of_Joining)/365)<=20); 

-- INSERT into PersonTransfer(EmpID,FirstName,LastName,Gender,DateofJoining,CurrentRegion,NewRegion)
-- SELECT Emp_ID,First_Name,Last_Name,Gender,Date_of_Joining,Region,Region
-- FROM person p where (p.Gender!='F' or (DATEDIFF(curdate(),Date_of_Joining)/365)<=10);

-- update PersonTransfer 
-- set NewRegion="Capitol"
-- where Gender='M' and (DATEDIFF(curdate(),DateofJoining)/365)>20;

-- update PersonTransfer
-- set NewRegion="DC"
-- where Gender='F' and (DATEDIFF(curdate(),DateofJoining)/365)>10;
    
END//
DELIMITER ;

call bulid_PersonTransfer;

select * from PersonTransfer;


