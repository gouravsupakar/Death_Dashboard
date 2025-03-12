desc death_data;
alter table death_data modify column years date;
select distinct(years) from death_data;
ALTER TABLE death_data ADD COLUMN year_date DATE;
select * from death_data;
UPDATE death_data
SET year_date = DATE_FORMAT(CONCAT(years, '-01-01'), '%Y-%m-%d');