/* Top 30 players with the most minutes played in all Champions League seasons */
select
	s2.player, 
	SUM(s2.min_played) as all_min_played
from
	knock_out_stage kos
left join teams t on
	kos.team_id = t.team_id
left join seasons s on
	kos.season_id = s.season_id
left join squads s2 on
	kos.team_id = s2.team_id
group by 1
order by
	all_min_played desc
limit 30;
