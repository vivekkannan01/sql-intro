-- Who was the leading home run hitter for each team in 2019?
-- NOTE: need more advanced SQL to answer this question without
--       raising a warning: "Field of aggregated query neither grouped nor aggregated"

SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
FROM stats 
INNER JOIN players ON players.id = stats.player_id
INNER JOIN teams ON teams.id = stats.team_id
WHERE teams.year = 2019
GROUP BY stats.team_id
ORDER BY teams.name



-- Expected result:
--
-- +-------------------------------+------------+-------------+----------------------+
-- | Arizona Diamondbacks          | Eduardo    | Escobar     | 35                   |
-- | Atlanta Braves                | Ronald     | Acuna       | 41                   |
-- | Baltimore Orioles             | Trey       | Mancini     | 35                   |
-- | Boston Red Sox                | J. D.      | Martinez    | 36                   |
-- | Chicago Cubs                  | Kyle       | Schwarber   | 38                   |
-- | Chicago White Sox             | Jose       | Abreu       | 33                   |
-- | Cincinnati Reds               | Eugenio    | Suarez      | 49                   |
-- | Cleveland Indians             | Carlos     | Santana     | 34                   |
-- | Colorado Rockies              | Nolan      | Arenado     | 41                   |
-- | Detroit Tigers                | Brandon    | Dixon       | 15                   |
-- | Houston Astros                | Alex       | Bregman     | 41                   |
-- | Kansas City Royals            | Jorge      | Soler       | 48                   |
-- | Los Angeles Angels of Anaheim | Mike       | Trout       | 45                   |
-- | Los Angeles Dodgers           | Cody       | Bellinger   | 47                   |
-- | Miami Marlins                 | Starlin    | Castro      | 22                   |
-- | Milwaukee Brewers             | Christian  | Yelich      | 44                   |
-- | Minnesota Twins               | Nelson     | Cruz        | 41                   |
-- | New York Mets                 | Pete       | Alonso      | 53                   |
-- | New York Yankees              | Gleyber    | Torres      | 38                   |
-- | Oakland Athletics             | Matt       | Chapman     | 36                   |
-- | Philadelphia Phillies         | Bryce      | Harper      | 35                   |
-- | Pittsburgh Pirates            | Josh       | Bell        | 37                   |
-- | San Diego Padres              | Hunter     | Renfroe     | 33                   |
-- | San Francisco Giants          | Kevin      | Pillar      | 21                   |
-- | Seattle Mariners              | Dan        | Vogelbach   | 30                   |
-- | St. Louis Cardinals           | Paul       | Goldschmidt | 34                   |
-- | Tampa Bay Rays                | Austin     | Meadows     | 33                   |
-- | Texas Rangers                 | Rougned    | Odor        | 30                   |
-- | Toronto Blue Jays             | Randal     | Grichuk     | 31                   |
-- | Washington Nationals          | Anthony    | Rendon      | 34                   |
-- +-------------------------------+------------+-------------+----------------------+


