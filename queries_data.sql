-- Part One:

-- SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;

-- SELECT first_name, last_name, COUNT(*) FROM vehicles JOIN owners ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY COUNT(*), first_name;

-- SELECT first_name, last_name, AVG(price) AS average_price, COUNT(*) FROM vehicles v JOIN owners o ON v.owner_id = o.id GROUP BY o.id HAVING COUNT(*) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;




-- Part Two: SQL Zoo:

-- Tutorial 6: 
  -- 1. SELECT matchid, player
  --    FROM goal 
  --    WHERE teamid = 'GER';

  -- 2.       
