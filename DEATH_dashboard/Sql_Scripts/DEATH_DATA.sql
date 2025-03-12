SET SQL_SAFE_UPDATES=0;
select * from death;
select * from death where entity like "WORLD%";
DELETE FROM death where entity like "WORLD%";

SELECT *FROM DEATH WHERE ENTITY LIKE "G20%";
DELETE FROM death where entity like "G20%";

SELECT distinct(ENTITY) FROM DEATH WHERE CODE="WB";

SELECT * FROM DEATH WHERE ENTITY IN ("WALES","ENGLAND","NORTHERN IRELAND","SCOTLAND");

ALTER TABLE DEATH rename COLUMN ENTITY TO COUNTRY;
ALTER TABLE DEATH rename TO DEATH_DATA;
ALTER TABLE death_DATA rename column CODE TO COUNTRY_CODE;
SELECT * FROM DEATH_DATA;

UPDATE DEATH_DATA 
SET COUNTRY_CODE = 
    CASE 
    
        WHEN COUNTRY = 'ENGLAND' THEN 'ENG'
        WHEN COUNTRY = 'SCOTLAND' THEN 'SCT'
        WHEN COUNTRY = 'NORTHERN IRELAND' THEN 'NIR'
        WHEN COUNTRY = 'WALES' THEN 'WLS'
        ELSE 'OTHERS'
    END WHERE COUNTRY_CODE = 'WB';
    
SELECT DISTINCT(COUNTRY_CODE) FROM DEATH_DATA WHERE COUNTRY IN ("WALES","ENGLAND","NORTHERN IRELAND","SCOTLAND");
    
SELECT distinct(COUNTRY) FROM death_data WHERE death_data.COUNTRY_CODE="OTHERS";
delete FROM death_data WHERE COUNTRY_CODE="OTHERS"; 

SELECT COUNT(*) FROM death_data;

DELETE FROM death_data where Year between 1990 AND 1999;

# UPDATING ALL THE COLUMN NAMES

select * FROM death_data;

ALTER table death_data rename column `Measles fatalities` TO MEAELES_DEATH;
ALTER table death_data rename column `Meningitis fatalities` TO MENINGITIS_DEATHS;
ALTER table death_data rename column `Dementia fatalities` TO DEMENTIA_DEATHS;
ALTER table death_data rename column `Parkinson s fatalities` TO PARKINSONS_DEATHS;
ALTER table death_data rename column `Nutritional deficiency fatalities` TO NUTRITIONAL_DEFICIENCY_DEATHS;
ALTER table death_data rename column `Malaria fatalities` TO MALARIA_DEATHS;
ALTER table death_data rename column `Drowning fatalities` TO DROWNING_DEATHS;
ALTER table death_data rename column `Interpersonal violence fatalities` TO INTERPERSONAL_VIOLENCE_DEATHS;
ALTER table death_data rename column `Maternal disorder fatalities` TO MATERNAL_DISORDER_DEATHS;
ALTER table death_data rename column `HIV/AIDS fatalities` TO HIV_AIDS_DEATHS;
ALTER table death_data rename column `Drug disorder fatalities` TO DRUGS_DEATHS;
ALTER table death_data rename column `Tuberculosis fatalities` TO TUBERCULOSIS_DEATHS;
ALTER table death_data rename column `Cardiovascular fatalities` TO CARDIOVASCULAR_DEATHS;
ALTER table death_data rename column `Lower respiratory fatalities` TO RESPIRATORY_DEATHS;
ALTER table death_data rename column `Neonatal disorder fatalities` TO NEONATAL_DISORDER_DEATHS;
ALTER table death_data rename column `Alcohol disorder fatalities` TO ALCOHOL_DEATHS;
ALTER table death_data rename column `Self harm fatalities` TO SELF_HARM_DEATHS;
ALTER table death_data rename column `Forces of nature fatalities` TO FORCE_OF_NATURE_DEATHS;
ALTER table death_data rename column `Diarrheal disease fatalities` TO DIARRHEAL_DEATHS;
ALTER table death_data rename column `Environmental exposure fatalities` TO ENVIRONMENTAL_DEATHS;
ALTER table death_data rename column `Neoplasm fatalities` TO NEOPLASM_DEATHS;
ALTER table death_data rename column `Conflict fatalities` TO CONFLICT_DEATHS;
ALTER table death_data rename column `Diabetes fatalities` TO DIABETES_DEATHS;
ALTER table death_data rename column `Chronic kidney fatalities` TO KIDNEY_DEATHS;
ALTER table death_data rename column `Poisoning fatalities` TO POISONING_DEATHS;
ALTER table death_data rename column `Protein energy malnutrition fatalities` TO PROTEIN_DEFICIENCY_DEATHS;
ALTER table death_data rename column `Road injury fatalities` TO ROAD_DEATHS;
ALTER table death_data rename column `Chronic respiratory fatalities` TO BREATHING_DEATHS;
ALTER table death_data rename column `Chronic liver fatalities` TO LIVER_DEATHS;
ALTER table death_data rename column `Digestive disease fatalities` TO DIGESTIVE_DISEASE_DEATHS;
ALTER table death_data rename column `Fire fatalities` TO FIRE_DEATHS;
ALTER table death_data rename column `Acute hepatitis fatalities` TO ACUTE_HEPATITIS_DEATHS;

ALTER table death_data rename column YEAR TO YEARS;
select * FROM death_DATA;

# deleting unwanted columns
alter table death_data drop column NUTRITIONAL_DEFICIENCY_DEATHS;
alter table death_data drop column INTERPERSONAL_VIOLENCE_DEATHS;
alter table death_data drop column MATERNAL_DISORDER_DEATHS;
alter table death_data drop column BREATHING_DEATHS;
alter table death_data drop column SELF_HARM_DEATHS;
alter table death_data drop column ENVIRONMENTAL_DEATHS;
alter table death_data drop column FORCE_OF_NATURE_DEATHS;
alter table death_data drop column PROTEIN_DEFICIENCY_DEATHS;

SELECT * FROM death_data;


SELECT 
    country_code,
    COUNTRY,
    YEARS,
    SUM(ACUTE_HEPATITIS_DEATHS) AS total_Acute_hepatitis_deathsByYear,
    SUM(MENINGITIS_DEATHS) AS total_Meningitis_deathsByYear,
    SUM(DEMENTIA_DEATHS) AS total_Dementia_deathsByYear,
    SUM(PARKINSONS_DEATHS) AS total_Parkinsons_deathsByYear,
    SUM(MALARIA_DEATHS) AS total_Malaria_deathsByYear,
    SUM(DROWNING_DEATHS) AS total_Drowning_deathsByYear,
    SUM(HIV_AIDS_DEATHS) AS total_HIV_AIDS_deathsByYear,
    SUM(DRUGS_DEATHS) AS total_Drugs_deathsByYear,
    SUM(TUBERCULOSIS_DEATHS) AS total_Tuberculosis_deathsByYear,
    SUM(CARDIOVASCULAR_DEATHS) AS total_Cardiovascular_deathsByYear,
    SUM(RESPIRATORY_DEATHS) AS total_Respiratory_deathsByYear,
    SUM(NEONATAL_DISORDER_DEATHS) AS total_Neonatal_deathsByYear,
    SUM(ALCOHOL_DEATHS) AS total_Alcohol_deathsByYear,
    SUM(DIARRHEAL_DEATHS) AS total_Diarrheal_deathsByYear,
    SUM(NEOPLASM_DEATHS) AS total_Neoplasm_deathsByYear,
    SUM(CONFLICT_DEATHS) AS total_Conflict_deathsByYear,
    SUM(DIABETES_DEATHS) AS total_Diabetes_deathsByYear,
    SUM(KIDNEY_DEATHS) AS total_Kidney_deathsByYear,
    SUM(POISONING_DEATHS) AS total_Poisoning_deathsByYear,
    SUM(ROAD_DEATHS) AS total_Road_deathsByYear,
    SUM(LIVER_DEATHS) AS total_Liver_deathsByYear,
    SUM(DIGESTIVE_DISEASE_DEATHS) AS total_Digestive_disease_deathsByYear,
    SUM(FIRE_DEATHS) AS total_Fire_deathsByYear,
    SUM(MEAELES_DEATH) AS total_Measles_deathsByYear,
    
#Total deaths from all causes
    SUM(
        ACUTE_HEPATITIS_DEATHS +
        MENINGITIS_DEATHS +
        DEMENTIA_DEATHS +
        PARKINSONS_DEATHS +
        MALARIA_DEATHS +
        DROWNING_DEATHS +
        HIV_AIDS_DEATHS +
        DRUGS_DEATHS +
        TUBERCULOSIS_DEATHS +
        CARDIOVASCULAR_DEATHS +
        RESPIRATORY_DEATHS +
        NEONATAL_DISORDER_DEATHS +
        ALCOHOL_DEATHS +
        DIARRHEAL_DEATHS +
        NEOPLASM_DEATHS +
        CONFLICT_DEATHS +
        DIABETES_DEATHS +
        KIDNEY_DEATHS +
        POISONING_DEATHS +
        ROAD_DEATHS +
        LIVER_DEATHS +
        DIGESTIVE_DISEASE_DEATHS +
        FIRE_DEATHS +
        MEAELES_DEATH
    ) AS total_deathsByYear
    
FROM death_data 
GROUP BY country_code, COUNTRY, YEARS;







               