SELECT * FROM master WHERE name @@ to_tsquery('INC') LIMIT 25;
SELECT * FROM master WHERE name @@ to_tsquery('LLC') LIMIT 25;

SELECT * FROM master WHERE dba_name @@ to_tsquery('INC') LIMIT 25;
SELECT * FROM master WHERE dba_name @@ to_tsquery('LLC') LIMIT 25;