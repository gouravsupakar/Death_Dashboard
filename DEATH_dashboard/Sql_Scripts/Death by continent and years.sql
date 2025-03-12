select distinct(continent) from death_data;

SELECT 
    Continent, 
    Years, 
    'MENINGITIS_DEATHS' AS death_cause,  
    SUM(MENINGITIS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DEMENTIA_DEATHS' AS death_cause,  
    SUM(DEMENTIA_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'PARKINSONS_DEATHS' AS death_cause,  
    SUM(PARKINSONS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'MALARIA_DEATHS' AS death_cause,  
    SUM(MALARIA_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DROWNING_DEATHS' AS death_cause,  
    SUM(DROWNING_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'HIV_AIDS_DEATHS' AS death_cause,  
    SUM(HIV_AIDS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DRUGS_DEATHS' AS death_cause,  
    SUM(DRUGS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'TUBERCULOSIS_DEATHS' AS death_cause,  
    SUM(TUBERCULOSIS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'CARDIOVASCULAR_DEATHS' AS death_cause,  
    SUM(CARDIOVASCULAR_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'RESPIRATORY_DEATHS' AS death_cause,  
    SUM(RESPIRATORY_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'NEONATAL_DISORDER_DEATHS' AS death_cause,  
    SUM(NEONATAL_DISORDER_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'ALCOHOL_DEATHS' AS death_cause,  
    SUM(ALCOHOL_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DIARRHEAL_DEATHS' AS death_cause,  
    SUM(DIARRHEAL_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'NEOPLASM_DEATHS' AS death_cause,  
    SUM(NEOPLASM_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'CONFLICT_DEATHS' AS death_cause,  
    SUM(CONFLICT_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DIABETES_DEATHS' AS death_cause,  
    SUM(DIABETES_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'KIDNEY_DEATHS' AS death_cause,  
    SUM(KIDNEY_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'POISONING_DEATHS' AS death_cause,  
    SUM(POISONING_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'ROAD_DEATHS' AS death_cause,  
    SUM(ROAD_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'LIVER_DEATHS' AS death_cause,  
    SUM(LIVER_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'DIGESTIVE_DISEASE_DEATHS' AS death_cause,  
    SUM(DIGESTIVE_DISEASE_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'FIRE_DEATHS' AS death_cause,  
    SUM(FIRE_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'ACUTE_HEPATITIS_DEATHS' AS death_cause,  
    SUM(ACUTE_HEPATITIS_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

UNION ALL

SELECT 
    Continent, 
    Years, 
    'MEASLES_DEATHS' AS death_cause,  
    SUM(MEASLES_DEATHS) AS total_deaths
FROM DEATH_DATA 
GROUP BY Continent, Years 

-- Sorting the final output
ORDER BY Continent, Years, death_cause, total_deaths DESC;
