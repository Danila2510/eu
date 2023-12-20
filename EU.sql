SELECT SUM(country_1_score + country_2_score) AS 'Vsego golov
'
FROM Match;

SELECT
  m.ID AS match_id,
  m.country_1_score,
  m.country_2_score,
  (m.country_1_score + m.country_2_score) / 2.0 AS 'AVG'
FROM
  Match m;


SELECT TOP 1
  m.ID AS match_id,
  m.country_1_score + m.country_2_score AS total_goals,
  m1.name AS team_1,
  m2.name AS team_2
FROM
  Match m
  INNER JOIN Country m1 ON m.id_country_1 = m1.ID
  INNER JOIN Country m2 ON m.id_country_2 = m2.ID
ORDER BY
  total_goals DESC;


SELECT TOP 1
  m.ID AS match_id,
  m.country_1_score + m.country_2_score AS total_goals,
  m1.name AS team_1,
  m2.name AS team_2
FROM
  Match m
  INNER JOIN Country m1 ON m.id_country_1 = m1.ID
  INNER JOIN Country m2 ON m.id_country_2 = m2.ID
ORDER BY
  total_goals;



SELECT SUM(visitors) AS 'Vsego posetiteley'
FROM Match;


SELECT AVG(visitors) AS 'Sredneye kolichestvo posetiteley za match'
FROM Match;


SELECT TOP 10 p.name AS 'Igrok',
              COUNT(gm.ID) AS 'Goly zaschityvayutsya'
FROM Player p
JOIN Goal_moment gm ON p.ID = gm.id_player
GROUP BY p.name
ORDER BY 'Goly zaschityvayutsya' DESC;