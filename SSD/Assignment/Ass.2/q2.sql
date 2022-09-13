alter table time_zone drop column to_GMT;

alter table time_zone add column to_GMT float(5) after dst;

update time_zone tz1 set tz1.to_GMT=round((tz1.gmtoffset)/3600,2);

select * from time_zone;

DROP PROCEDURE IF EXISTS build_time_zone_convert;
DELIMITER //
CREATE PROCEDURE `build_time_zone_convert`(IN input_date VARCHAR(255),IN src VARCHAR(255),IN dst VARCHAR(255))
BEGIN
	
SELECT DATE_ADD(input_date, INTERVAL (select((select to_GMT from time_zone where timezonecode=dst limit 1) - (select to_GMT from time_zone where timezonecode=src limit 1))) HOUR);

END//

call build_time_zone_convert('2017-06-15 02:53:00','IST','JST');


