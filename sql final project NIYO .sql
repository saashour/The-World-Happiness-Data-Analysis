
-- Table content:

-- 2020 Data Set:
SELECT * FROM niyo_final.happiness_data;

-- 2019 Data Set:
SELECT * FROM niyo_final.happiness_data_nine;



-- Filter the top 10 countires with the highest happiness score for 2020

SELECT `country name`, `ladder score`, `regional indicator` FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 10;

-- Filter the bottom 10 countries with the lowest happiness score for 2020

SELECT `country name`, `ladder score`, `regional indicator` FROM niyo_final.happiness_data
ORDER BY 2
LIMIT 10;

-- Filter the top 10 countires with the highest happiness score for 2019

SELECT `overall rank`, `country or region`, `Score` FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 10;

-- Filter the bottom 10 countries with the lowest happiness score for 2019

SELECT `overall rank`, `country or region`, `Score` FROM niyo_final.happiness_data_nine
ORDER BY 2
LIMIT 10;



-- Filter to show countries that have a missing score value 

-- 2020:

SELECT * FROM niyo_final.happiness_data
WHERE `country name` IS NULL;

-- 2019:

SELECT * FROM niyo_final.happiness_data_nine
WHERE `country or region` IS NULL;



-- Number of countries that have been included in the world happiness data for 2020

SELECT COUNT(`country name`)'Number of countries in World happiness data 2020' FROM Niyo_final.happiness_data;


-- Number of countries that have been included in the world happiness data for 2019:

SELECT COUNT(`country or region`)'Number of countries in World happiness data 2019' FROM Niyo_final.happiness_data_nine;




-- Average score of each variable by region for 2020:

-- Social Support (2020):

SELECT ROUND(AVG(`Social support`),4)"Social Support Average", `Regional indicator` FROM niyo_final.happiness_data
GROUP BY `Regional indicator`;

-- Healthy Life expectancy (2020):

SELECT ROUND(AVG(`Healthy life expectancy`),4)'Healthy Life Expectancy Average', `Regional indicator` FROM niyo_final.happiness_data
GROUP BY `Regional indicator`;

-- Freedom to make life choices (2020):

SELECT ROUND(AVG(`freedom to make life choices`),4)'Freedom to make life choices Average', `Regional indicator` FROM niyo_final.happiness_data
GROUP BY `Regional indicator`;

-- Generoisty (2020):

SELECT ROUND(AVG(`generosity`),4) "Generosity Average", `Regional indicator` FROM niyo_final.happiness_data
GROUP BY `Regional indicator`;

-- Perceptions of corruption (2020):

SELECT ROUND(AVG(`perceptions of corruption`),4)"Perceptions of corruption Average", `Regional indicator` FROM niyo_final.happiness_data
GROUP BY `Regional indicator`;


-- Average score of each variable by country for 2019:

-- Social Support (2019):

SELECT ROUND(AVG(`Social support`),4)"Social Support Average", `country or region` FROM niyo_final.happiness_data_nine
GROUP BY `country or region`;

-- Healthy Life expectancy (2019):

SELECT ROUND(AVG(`Healthy life expectancy`),4)'Healthy Life Expectancy Average', `country or region` FROM niyo_final.happiness_data_nine
GROUP BY `country or region`;

-- Freedom to make life choices (2019):

SELECT ROUND(AVG(`freedom to make life choices`),4)'Freedom to make life choices Average', `country or region` FROM niyo_final.happiness_data_nine
GROUP BY `country or region`;

-- Generoisty (2019):

SELECT ROUND(AVG(`generosity`),4) "Generosity Average", `country or region` FROM niyo_final.happiness_data_nine
GROUP BY `country or region`;

-- `Perceptions of corruption` (2019):

SELECT ROUND(AVG(`perceptions of corruption`),4)"Perceptions of corruption Average", `country or region` FROM niyo_final.happiness_data_nine
GROUP BY `country or region`;




-- Filtering which countries have the minimum and maximum score for each varaible (2020):

-- Social Support (2020):

-- Country with Max score:
SELECT `country name`, `Social support`'Country with highest social support score' FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country name`, `Social support`'Country with lowest social support score' FROM niyo_final.happiness_data
ORDER BY 2
LIMIT 1;


-- Healthy life expectancy (2020):

-- Country with Max score: 
SELECT `country name`, `Healthy Life expectancy`'Country with highest healthy life expectancy' FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country name`, `Healthy Life expectancy`'Country with lowest healthy life expectancy' FROM niyo_final.happiness_data
ORDER BY 2
LIMIT 1;


-- Freedom to make life choices (2020):

-- Country with Max score:
SELECT `country name`, `Freedom to make life choices`'Country with highest FTMLC score' FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country name`, `Freedom to make life choices`'Country with lowest FTMLC score' FROM niyo_final.happiness_data
ORDER BY 2
LIMIT 1;

-- Generosity (2020):

-- Country with Max score:
SELECT `country name`, `Generosity`'Country with highest generosity score' FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country name`, `Generosity`'Country with lowest generosity score' FROM niyo_final.happiness_data
ORDER BY 2 
LIMIT 1;

-- Perceptions of Corruption (2020):

-- Country with Max score:
SELECT `country name`, `Perceptions of Corruption`'Country with highest Perception of Corruption score' FROM niyo_final.happiness_data
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country name`, `Perceptions of Corruption`'Country with highest Perception of Corruption score' FROM niyo_final.happiness_data
ORDER BY 2 
LIMIT 1;


-- Filtering whihc countries have the minimum and maximum score for each varaible (2019):

-- Social Suppor (2019):

-- Country with Max score:
SELECT `country or region`, `Social support`'Country with highest social support score' FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country or region`, `Social support`'Country with lowest social support score' FROM niyo_final.happiness_data_nine
ORDER BY 2
LIMIT 1;

-- Healthy life exepectancy (2019):

-- Country with Max score: 
SELECT `country or region`, `Healthy Life expectancy`'Country with highest healthy life expectancy' FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country or region`, `Healthy Life expectancy`'Country with lowest healthy life expectancy' FROM niyo_final.happiness_data_nine
ORDER BY 2
LIMIT 1;

-- Freedom to make life choices (2019):

-- Country with Max score:
SELECT `country or region`, `Freedom to make life choices`'Country with highest FTMLC score' FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country or region`, `Freedom to make life choices`'Country with lowest FTMLC score' FROM niyo_final.happiness_data_nine
ORDER BY 2
LIMIT 1;


-- Generosity (2019):

SELECT `country or region`, `Generosity`'Country with highest generosity score' FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country or region`, `Generosity`'Country with lowest generosity score' FROM niyo_final.happiness_data_nine
ORDER BY 2 
LIMIT 1;

-- Perception of Corruption (2019):

-- Country with Max score:
SELECT `country or region`, `Perceptions of Corruption`'Country with highest Perception of Corruption score' FROM niyo_final.happiness_data_nine
ORDER BY 2 DESC
LIMIT 1;

-- Country with Min score: 
SELECT `country or region`, `Perceptions of Corruption`'Country with highest Perception of Corruption score' FROM niyo_final.happiness_data_nine
ORDER BY 2 
LIMIT 1;


-- Countries that have a score between 3 and above 7 for 2020

SELECT `country name`, `regional indicator`, `Ladder score` FROM niyo_final.happiness_data
WHERE `ladder score` BETWEEN 3 AND 7
ORDER BY 3 DESC; 

-- Countries that have a score between 3 and above 7 for 2020

SELECT `country or region`, `score` FROM niyo_final.happiness_data_nine
WHERE `score` BETWEEN 3 AND 7
ORDER BY 2 DESC; 

-- Countries that have a score between 3 and above 7 for 2019

SELECT `country or region`,`score` FROM niyo_final.happiness_data_nine
WHERE `score` BETWEEN 3 AND 7
ORDER BY 2 DESC; 

-- Use of Case when to categories countries by score of happiness (2020)

SELECT `country name`, `regional indicator`, `ladder score`,
CASE WHEN `ladder score` BETWEEN 0 AND 3 THEN 'Fairly Happy'
 WHEN `ladder score` BETWEEN 3 AND 5 THEN 'Moderatley Happy'
 WHEN `ladder score` BETWEEN 5 AND 7 THEN 'Happy'
 WHEN `ladder score` > 7 THEN 'Very Happy'
END 'Happiness level'
FROM  niyo_final.happiness_data;

-- Use of Case when to categories countries by score of happiness (2019)

SELECT `country or region`, `score`,
CASE WHEN `score` BETWEEN 0 AND 3 THEN 'Fairly Happy'
 WHEN `score` BETWEEN 3 AND 5 THEN 'Moderatley Happy'
 WHEN `score` BETWEEN 5 AND 7 THEN 'Happy'
 WHEN `score` > 7 THEN 'Very Happy'
END 'Happiness level'
FROM  niyo_final.happiness_data_nine;

-- Filtering to see average happiness score for each region (2020)

SELECT AVG(`ladder score`)'Average Happiness Score', `regional indicator` FROM niyo_final.happiness_data
GROUP BY `regional indicator`
ORDER BY 1 DESC; 

-- Joinng both tables to compare county - from 2019 to 2020:


SELECT * FROM niyo_final.happiness_data_nine Table1
INNER JOIN niyo_final.happiness_data Table3
ON  table1.`social support` = table3.`social support`;

