DELIMITER $$
CREATE PROCEDURE cust_name2(IN CUSTOMER_CITY VARCHAR(255))
BEGIN
	select CUST_NAME from customer where WORKING_AREA=CUSTOMER_CITY;
END$$

to execute:
call cust_name2('Bangalore')$$


