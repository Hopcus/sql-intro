--UPDATE students SET first_name = "Benjamin"

-- this would make all values in the name column "Benjamin"

--instead you need to add "WHERE"

UPDATE students SET first_name = "Benjamin"
WHERE id=1;
