select * from items

where properties -> "$.gluten_free" = 1;

select * from items

where isnull( properties -> "$.gluten_free");

select * from items

where  properties -> "$.color"="blue";

SELECT 
    *
FROM
    items
WHERE
    JSON_EXTRACT(properties, '$.color') = 'blue';
SELECT 
    *, ST_ASTEXT(location)
FROM
    sakila.address


