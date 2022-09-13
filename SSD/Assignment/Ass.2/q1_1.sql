DROP PROCEDURE IF EXISTS bulid_hike2022;

DELIMITER //
CREATE PROCEDURE `bulid_hike2022`()
BEGIN
	DROP TABLE IF EXISTS hike2022;
	CREATE table hike2022(
	Hike int auto_increment NOT NULL PRIMARY KEY, 
	EmpID int , 
	FirstName varchar(255),
	LastName varchar(255),
        Gender varchar(10),
        WeightInKg varchar(255), 
        LastHike varchar(25),
        LastSalary varchar(255),
        NewHike int,
        NewSalary int,
        FOREIGN KEY (EmpID) REFERENCES person(Emp_ID)
    );
    
INSERT into hike2022(EmpID,FirstName,LastName,Gender,WeightInKg,LastHike,LastSalary,NewHike,NewSalary)
SELECT Emp_ID,First_Name,Last_Name,Gender,Weight_in_Kgs,Last_Hike,Salary,(p.Last_Hike+2),(p.Salary*(p.Last_Hike+2)/100+Salary)
FROM person p where p.Weight_in_Kgs < 50; 
    
END//
DELIMITER ;

call bulid_hike2022;

select * from hike2022;


