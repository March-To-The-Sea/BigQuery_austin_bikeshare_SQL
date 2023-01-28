WITH complaint_types AS
  (SELECT DISTINCT property_type, Count(property_type) AS occurence_value
  FROM bigquery-public-data.austin_bikeshare.bikeshare_stations
  GROUP BY property_type
  ORDER BY occurence_value DESC)

SELECT *
FROM complaint_types