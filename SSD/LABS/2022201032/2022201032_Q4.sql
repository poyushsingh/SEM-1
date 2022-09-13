DELIMITER $$
CREATE PROCEDURE cust_name4()
BEGIN
	select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer where AGENT_CODE like 'A00%';
END$$



DECLARE CURSOR piyush is select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer where AGENT_CODE like 'A00%';
--to execute:
--call cust_name4()

