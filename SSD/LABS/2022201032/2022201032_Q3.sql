DELIMITER $$
CREATE PROCEDURE cust_name3(IN open_amt INT,IN rec_amt INT)
BEGIN
	select CUST_NAME,GRADE from customer where (OPENING_AMT+RECEIVE_AMT)>10000;
END$$

to execute:
call cust_name2(1,2)$$

