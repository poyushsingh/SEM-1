DROP PROCEDURE IF EXISTS bulid_PersonJoining;

DELIMITER //
CREATE PROCEDURE `bulid_PersonJoining`()
BEGIN
	DROP TABLE IF EXISTS PersonJoining;
	CREATE table PersonJoining(
	PJoinP int auto_increment NOT NULL PRIMARY KEY, 
	EmpID int , 
	FirstName varchar(255),
	LastName varchar(255),
        DateofBirth date,
        Age varchar(255), 
        DateofJoining date,
        DayofJoining varchar(255),
        MonthofJoining varchar(255),
        YearofJoining int,
        WorkExpinDays int,
        FOREIGN KEY (EmpID) REFERENCES person(Emp_ID)
    );
    
INSERT into PersonJoining(EmpID,FirstName,LastName,DateofBirth,Age,DateofJoining,DayofJoining,MonthofJoining,YearofJoining,WorkExpinDays)
SELECT Emp_ID,First_Name,Last_Name,Date_of_Birth,year(curdate())-year(Date_of_Birth),Date_of_Joining,DAY(Date_of_Joining),MONTHNAME(Date_of_Joining),YEAR(Date_of_Joining),DATEDIFF(curdate(),Date_of_Joining)
FROM person; 
    
END//
DELIMITER ;

call bulid_PersonJoining;

select * from PersonJoining;



