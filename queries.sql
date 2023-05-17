-- Part One:

-- SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;

-- SELECT first_name, last_name, COUNT(*) FROM vehicles JOIN owners ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY COUNT(*), first_name;

-- SELECT first_name, last_name, AVG(price) AS average_price, COUNT(*) FROM vehicles v JOIN owners o ON v.owner_id = o.id GROUP BY o.id HAVING COUNT(*) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;




-- Part Two: SQL Zoo:

-- Tutorial 6: 
  -- 1. SELECT matchid, player
  --    FROM goal 
  --    WHERE teamid = 'GER';

  -- 2. SELECT id,stadium,team1,team2
  --    FROM game
  --    WHERE game.id = 1012;   

  -- 3. SELECT player, teamid, stadium, mdate
  --    FROM game JOIN goal ON game.id = goal.matchid
  --    WHERE teamid = 'GER';  

  -- 4. SELECT team1, team2, player
  --    FROM goal JOIN game ON goal.matchid = game.id
  --    WHERE player LIKE 'Mario%'; 

  -- 5. SELECT player, teamid, coach, gtime
  --    FROM goal JOIN eteam ON goal.teamid = eteam.id
  --    WHERE gtime<=10;

  -- 6. SELECT mdate, teamname
  --    FROM eteam JOIN game ON eteam.id = game.team1
  --    WHERE coach = 'Fernando Santos';

  -- 7. SELECT player
  --    FROM goal JOIN game ON goal.matchid = game.id
  --    WHERE stadium = 'National Stadium, Warsaw';

  -- 8. SELECT DISTINCT player
  --    FROM goal JOIN game ON goal.matchid = game.id 
  --    WHERE teamid != 'GER' AND (team1 = 'GER' OR team2 = 'GER');

  -- 9. SELECT teamname, COUNT(*)
  --    FROM eteam JOIN goal ON eteam.id = goal.teamid
  --    GROUP BY teamname;

  -- 10. SELECT stadium, COUNT(*)
  --     FROM game JOIN goal ON game.id = goal.matchid
  --     GROUP BY stadium;

  -- 11. SELECT matchid, mdate, COUNT(*)
  --     FROM game JOIN goal ON game.id = goal.matchid 
  --     WHERE (team1 = 'POL' OR team2 = 'POL')
  --     GROUP BY matchid, mdate;

  -- 12. SELECT matchid, mdate, COUNT(*)
  --     FROM goal JOIN game ON goal.matchid = game.id
  --     WHERE teamid = 'GER'
  --     GROUP BY matchid, mdate;

  -- 13. SELECT mdate, 
  --        team1, 
  --        SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  --        team2,
  --        SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  --      FROM game LEFT JOIN goal ON matchid = id
  --      GROUP BY mdate, matchid, team1, team2;

-- Tutorial 7:
  -- 1. SELECT id, title
  --    FROM movie
  --    WHERE yr=1962

  -- 2. SELECT yr
  --    FROM movie
  --    WHERE title = 'Citizen Kane';

  -- 3. SELECT id, title, yr
  --    FROM movie
  --    WHERE title LIKE 'Star Trek%'
  --    ORDER BY yr;

  -- 4. SELECT id
  --    FROM actor
  --    WHERE name = 'Glenn Close';

  -- 5. SELECT id
  --    FROM movie
  --    WHERE title = 'Casablanca';

  -- 6. SELECT name
  --    FROM actor
  --    JOIN casting ON actor.id = casting.actorid
  --    JOIN movie ON casting.movieid = movie.id
  --    WHERE movie.title = 'Casablanca';

  -- 7. SELECT name
  --    FROM actor
  --    JOIN casting ON actor.id = casting.actorid
  --    JOIN movie ON casting.movieid = movie.id
  --    WHERE movie.title = 'Alien';

  -- 8. SELECT title
  --    FROM movie
  --    JOIN casting ON movie.id = casting.movieid
  --    JOIN actor ON casting.actorid = actor.id
  --    WHERE name = 'Harrison Ford';

  -- 9. SELECT title
  --    FROM movie
  --    JOIN casting ON movie.id = casting.movieid
  --    JOIN actor ON casting.actorid = actor.id
  --    WHERE name = 'Harrison Ford' AND ord != 1;

  -- 10. SELECT title, name
  --     FROM movie
  --     JOIN casting ON movie.id = casting.movieid
  --     JOIN actor ON casting.actorid = actor.id
  --     WHERE ord = 1 AND yr = 1962;

  -- 11. SELECT yr, COUNT(title) 
  --     FROM movie
  --     JOIN casting ON movie.id = casting.movieid
  --     JOIN actor ON casting.actorid = actor.id
  --     WHERE name='Rock Hudson'
  --     GROUP BY yr
  --     HAVING COUNT(title) > 2

  -- 12. SELECT title, name
  --     FROM movie
  --     JOIN casting ON movie.id = casting.movieid
  --     JOIN actor ON casting.actorid = actor.id
  --     WHERE ord = 1 AND movie.id IN (
  --     SELECT movieid FROM casting
  --     WHERE actorid IN (
  --     SELECT id FROM actor
  --     WHERE name = 'Julie Andrews'));

  -- 13. SELECT name 
  --     FROM actor
  --     JOIN casting ON actor.id = casting.actorid
  --     WHERE ord = 1 
  --     GROUP BY name HAVING COUNT(*) >= 15
  --     ORDER BY name;

  -- 14. SELECT title, COUNT(actorid)
  --     FROM movie
  --     JOIN casting ON movie.id = casting.movieid
  --     WHERE yr = 1978
  --     GROUP BY title
  --     ORDER BY COUNT(actorid) DESC, title ASC;

  -- 15. SELECT name
  --     FROM actor
  --     JOIN casting ON actor.id = casting.actorid
  --     JOIN movie ON casting.movieid = movie.id
  --     WHERE name != 'Art Garfunkel' AND movie.id IN
  --        (SELECT movieid
  --         FROM casting
  --         JOIN actor ON casting.actorid = actor.id
  --         WHERE actor.name = 'Art Garfunkel');

