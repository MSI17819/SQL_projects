/* Teams that have reached the corresponding CM stage */

/* Round 1 of 16 without Greece, Turkey, Cyprus, Italy, Denmark, Austria */

with round_1_of_16 as 
		(select
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
		where kos.knock_out_stage = 'round 1 of 16'
		group by 1, 2, 3
		order by count_team desc
		),
	result_query as
	(
		select r.team_name as team_name,
		r.country_name as country_name,
		r.city_name as city_name,
		r.count_team as team_apperance
		from round_1_of_16 r 
		left join teams t on
		r.city_name = t.city_name
		where longitude > 12
		group by 1, 2, 3
		order by team_apperance desc
		)
select * from result_query 
where country_name not in ('Greece'
						   ,'Turkey'
						   ,'Cyprus'
						   ,'Italy'
						   ,'Denmark'
						   ,'Austria');

/* Quater final stage without Greece, Turkey, Cyprus, Italy, Croatia */

with quater_final as 
		(select
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
		where kos.knock_out_stage = 'quater-final'
		group by 1, 2, 3
		order by count_team desc
		),
	result_quater_final as
		(
		select qf.team_name as team_name,
		qf.country_name as country_name,
		qf.city_name as city_name,
		qf.count_team as team_apperance
		from quater_final qf 
		left join teams t on
		qf.city_name = t.city_name
		where longitude > 12
		group by 1, 2, 3
		order by team_apperance desc
		)
select * from result_quater_final
where country_name not in ('Greece'
						   ,'Turkey'
						   ,'Cyprus'
						   ,'Italy'
						   ,'Croatia');

/* Semi final stage without Greece, Turkey, Cyprus, Italy */

with semi_final as 
		(select
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
		group by 1, 2, 3
		order by count_team desc
		),
	result_semi_final as
		(
		select sf.team_name as team_name,
		sf.country_name as country_name,
		sf.city_name as city_name,
		sf.count_team as team_apperance
		from semi_final sf 
		left join teams t on
		sf.city_name = t.city_name
		where longitude > 12
		group by 1, 2, 3
		order by team_apperance desc
		)
select * from result_semi_final 
where country_name not in ('Greece'
						   ,'Turkey'
						   , 'Cyprus'
						   , 'Italy');

/* Final stage */

with final_stage as 
		(select
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
		where kos.knock_out_stage = 'final'
		group by 1, 2, 3
		order by count_team desc
		),
	result_final as
		(
		select fs.team_name as team_name,
		fs.country_name as country_name,
		fs.city_name as city_name,
		fs.count_team as team_apperance
		from final_stage fs 
		left join teams t on
		fs.city_name = t.city_name
		where longitude > 12
		group by 1, 2, 3
		order by team_apperance desc
		)
select * from result_final;