-- Total de carros
SELECT COUNT(*) FROM cabs;

-- Empresas com menos de 100 carros
SELECT COUNT(*) AS cnt, company_name
FROM cabs
GROUP BY company_name
HAVING COUNT(*) < 100
ORDER BY cnt DESC;

-- Classificação do clima
SELECT
  ts,
  CASE
    WHEN description LIKE '%rain%' OR description LIKE '%storm%'
    THEN 'bad'
    ELSE 'good'
  END AS weather_conditions
FROM weather_records
WHERE ts BETWEEN '2017-11-05 00:00:00'
AND '2017-11-05 23:59:59';

-- Corridas por empresa
SELECT
  c.company_name,
  COUNT(t.trip_id) AS trips_amount
FROM cabs c
JOIN trips t ON t.cab_id = c.cab_id
WHERE CAST(t.start_ts AS date)
BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY c.company_name
ORDER BY trips_amount DESC;
