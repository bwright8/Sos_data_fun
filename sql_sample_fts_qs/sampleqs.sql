SELECT * FROM master WHERE name @@ to_tsquery('INC') LIMIT 25;
SELECT * FROM master WHERE name @@ to_tsquery('LLC') LIMIT 25;

SELECT * FROM master WHERE dba_name @@ to_tsquery('INC') LIMIT 25;
SELECT * FROM master WHERE dba_name @@ to_tsquery('LLC') LIMIT 25;

SELECT * FROM registered_agent_business WHERE business_name @@ to_tsquery('FISH') LIMIT 25;
SELECT * FROM registered_agent_business WHERE business_name @@ to_tsquery('SMITH') LIMIT 25;

SELECT * FROM charter_officer_business WHERE business_name @@ to_tsquery('WALNUT') LIMIT 25;
SELECT * FROM charter_officer_business WHERE business_name @@ to_tsquery('BEACH') LIMIT 25;

SELECT * FROM charter_names WHERE name @@ to_tsquery('HEART') LIMIT 25;
SELECT * FROM charter_names WHERE name @@ to_tsquery('EARTH') LIMIT 25;

SELECT * FROM associated_entity WHERE ASSOCIATED_ENTITY_NAME @@ to_tsquery('ROBERT') LIMIT 25;
SELECT * FROM associated_entity WHERE ASSOCIATED_ENTITY_NAME @@ to_tsquery('JANE') LIMIT 25;