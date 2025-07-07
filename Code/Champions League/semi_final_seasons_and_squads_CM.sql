/* Semi final stage without Greece, Turkey, Cyprus, Italy. Squads, seasons and teams*/

with semi_final as 
		(select
			kos.season_id as season_id,
			kos.team_id as team_id,
			kos.team_name as team_name,
			t.country_name as country_name,
			t.city_name as city_name,
			COUNT(kos.team_name) as count_team
		from
			knock_out_stage kos
		left join teams t on
			kos.team_id = t.team_id
		left join seasons s on
			kos.season_id = s.season_id
		where kos.knock_out_stage = 'semi-final'
		group by 1, 2, 3, 4
		order by count_team desc
		),
	result_semi_final as
		(
		select
			sf.season_id as season_id,
			sf.team_id as team_id,
			sf.team_name as team_name,
			sf.country_name as country_name,
			sf.city_name as city_name,
			sf.count_team as team_apperance
		from semi_final sf 
		left join teams t on
		sf.city_name = t.city_name
		where longitude > 12
		group by 1, 2, 3, 4
		order by team_apperance desc
		),
	result_with_season_id as 
		(select * 
		from result_semi_final
		where country_name in ('Ukraine','Germany')
		),
	final_result as (
		select
			rsi.season_id,
			rsi.team_name,  
			sqt.player,
			sqt.player_position 
		from result_with_season_id rsi
		left join squads sqt on	
		rsi.season_id = sqt.season_id
		where sqt.team_id = 8 or sqt.team_id = 130)
select s.season_year, 
	   fr.team_name, 
	   fr.player, 
	   fr.player_position
from final_result fr
left join seasons s on
fr.season_id = s.season_id;