-- SELECT Name, Language, percentage
-- FROM world.country, world.languages
-- WHERE Language="Slovene"
-- ORDER BY percentage DESC;

-- SELECT countries.Name, count(cities.id) as Total_Cities
-- FROM world.countries
-- join cities ON cities.country_id = countries.id
-- group by countries.Name
-- order by Total_Cities DESC;


-- select cities.name, cities.population, cities.country_id
-- from world.cities
-- where population > 500000
-- order by population desc;



-- select countries.name, languages.language, languages.percentage
-- from world.countries
-- JOIN languages ON languages.country_id = countries.id
-- where percentage > 89
-- order by percentage desc;


-- select name, surface_area, population
-- from countries
-- where surface_area < 501 and  population > 100000;


-- select name, government_form, capital, life_expectancy
-- from countries
-- where government_form = 'Constitutional Monarchy' and  capital > 200 and life_expectancy > 75;

-- select countries.name, cities.name, cities.district, cities.population
-- from world.countries
-- join cities on cities.country_id = countries.id
-- where countries.name='Argentina' and cities.district='Buenos Aires' and cities.population > 500000;


SELECT countries.region, count(region) AS countries
FROM world.countries
group by region
order by countries DESC;











