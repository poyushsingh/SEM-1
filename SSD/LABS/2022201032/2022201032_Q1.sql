DELIMITER $$
CREATE PROCEDURE `SP_Sum`(
	IN `n1` INT,
	IN `n2` INT,
	OUT `result` INT
)
BEGIN
	Set result = n1 + n2;
END$$
DELIMITER ;


to execute:

Call SP_Sum(2,3,@sayi);
SELECT @sayi;
