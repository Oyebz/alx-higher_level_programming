-- script that lists all shows from hbtn_0d_tvshows_rate by their rating.
SELECT `title`, SUM(`rate`) AS `rating`
  FROM `tv_shows` AS tv
       INNER JOIN `tv_show_ratings` AS rt
       ON tv.`id` = rt.`show_id`
 GROUP BY `title`
 ORDER BY `rating` DESC;
