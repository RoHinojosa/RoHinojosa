/*First create Common-Table Expression (CTE) for the kickers table. See kickers.xlsx for info on how the CTE is created from raw data.

Starting at line 41, uncomment the query you'd like to execute.*/

declare @gameWeek varchar
set @gameWeek = '9'; -- update this to exclude players who will have a bye on the specific week

with kickers as(
select 'Tucker' as Last_Name, 'Justin' as First_Name, 'Ravens' as Team, '8' as BYE, 'K' as Pos, 15 as Short, 10 as Mid, 5 as Long, 53 as XP, 163 as POINTS
UNION ALL select 'Butker' as Last_Name, 'Harrison' as First_Name, 'Chiefs' as Team, '12' as BYE, 'K' as Pos, 19 as Short, 8 as Mid, 3 as Long, 57 as XP, 161 as POINTS
UNION ALL select 'Zuerlein' as Last_Name, 'Greg' as First_Name, 'Cowboys' as Team, '7' as BYE, 'K' as Pos, 17 as Short, 9 as Mid, 5 as Long, 46 as XP, 158 as POINTS
UNION ALL select 'Lutz' as Last_Name, 'Wil' as First_Name, 'Saints' as Team, '6' as BYE, 'K' as Pos, 16 as Short, 9 as Mid, 4 as Long, 52 as XP, 156 as POINTS
UNION ALL select 'Bass' as Last_Name, 'Tyler' as First_Name, 'Bills' as Team, '7' as BYE, 'K' as Pos, 15 as Short, 7 as Mid, 4 as Long, 55 as XP, 148 as POINTS
UNION ALL select 'Gould' as Last_Name, 'Robbie' as First_Name, '49ers' as Team, '6' as BYE, 'K' as Pos, 20 as Short, 9 as Mid, 2 as Long, 41 as XP, 147 as POINTS
UNION ALL select 'Koo' as Last_Name, 'Younghoe' as First_Name, 'Falcons' as Team, '6' as BYE, 'K' as Pos, 21 as Short, 7 as Mid, 3 as Long, 40 as XP, 146 as POINTS
UNION ALL select 'Blankenship' as Last_Name, 'Rodrigo' as First_Name, 'Colts' as Team, '14' as BYE, 'K' as Pos, 20 as Short, 8 as Mid, 2 as Long, 42 as XP, 144 as POINTS
UNION ALL select 'Succop' as Last_Name, 'Ryan' as First_Name, 'Buccaneers' as Team, '9' as BYE, 'K' as Pos, 18 as Short, 7 as Mid, 2 as Long, 50 as XP, 142 as POINTS
UNION ALL select 'Myers' as Last_Name, 'Jason' as First_Name, 'Seahawks' as Team, '9' as BYE, 'K' as Pos, 13 as Short, 9 as Mid, 3 as Long, 49 as XP, 139 as POINTS
UNION ALL select 'Carlson' as Last_Name, 'Daniel' as First_Name, 'Raiders' as Team, '8' as BYE, 'K' as Pos, 18 as Short, 7 as Mid, 3 as Long, 42 as XP, 139 as POINTS
UNION ALL select 'Prater' as Last_Name, 'Matt' as First_Name, 'Cardinals' as Team, '12' as BYE, 'K' as Pos, 16 as Short, 5 as Mid, 5 as Long, 45 as XP, 138 as POINTS
UNION ALL select 'Boswell' as Last_Name, 'Chris' as First_Name, 'Steelers' as Team, '7' as BYE, 'K' as Pos, 18 as Short, 8 as Mid, 2 as Long, 40 as XP, 136 as POINTS
UNION ALL select 'Gay' as Last_Name, 'Matt' as First_Name, 'Rams' as Team, '11' as BYE, 'K' as Pos, 14 as Short, 8 as Mid, 4 as Long, 42 as XP, 136 as POINTS
UNION ALL select 'Crosby' as Last_Name, 'Mason' as First_Name, 'Packers' as Team, '13' as BYE, 'K' as Pos, 16 as Short, 6 as Mid, 4 as Long, 40 as XP, 132 as POINTS
UNION ALL select 'Sanders' as Last_Name, 'Jason' as First_Name, 'Dolphins' as Team, '14' as BYE, 'K' as Pos, 14 as Short, 8 as Mid, 4 as Long, 38 as XP, 132 as POINTS
UNION ALL select 'Badgley' as Last_Name, 'Mike' as First_Name, 'Chargers' as Team, '7' as BYE, 'K' as Pos, 14 as Short, 7 as Mid, 4 as Long, 40 as XP, 130 as POINTS
UNION ALL select 'Santos' as Last_Name, 'Cairo' as First_Name, 'Bears' as Team, '10' as BYE, 'K' as Pos, 17 as Short, 7 as Mid, 2 as Long, 40 as XP, 129 as POINTS
UNION ALL select 'Gano' as Last_Name, 'Graham' as First_Name, 'Giants' as Team, '10' as BYE, 'K' as Pos, 18 as Short, 7 as Mid, 4 as Long, 26 as XP, 128 as POINTS
UNION ALL select 'Slye' as Last_Name, 'Joey' as First_Name, 'Panthers' as Team, '13' as BYE, 'K' as Pos, 16 as Short, 8 as Mid, 3 as Long, 33 as XP, 128 as POINTS
UNION ALL select 'Lambo' as Last_Name, 'Josh' as First_Name, 'Jaguars' as Team, '7' as BYE, 'K' as Pos, 15 as Short, 7 as Mid, 4 as Long, 32 as XP, 125 as POINTS
UNION ALL select 'McManus' as Last_Name, 'Brandon' as First_Name, 'Broncos' as Team, '11' as BYE, 'K' as Pos, 16 as Short, 7 as Mid, 4 as Long, 28 as XP, 124 as POINTS
UNION ALL select 'Seibert' as Last_Name, 'Austin' as First_Name, 'Bengals' as Team, '10' as BYE, 'K' as Pos, 13 as Short, 8 as Mid, 2 as Long, 39 as XP, 120 as POINTS
UNION ALL select 'Hopkins' as Last_Name, 'Dustin' as First_Name, 'Redskins' as Team, '9' as BYE, 'K' as Pos, 15 as Short, 8 as Mid, 2 as Long, 33 as XP, 120 as POINTS
UNION ALL select 'Parkey' as Last_Name, 'Cody' as First_Name, 'Browns' as Team, '13' as BYE, 'K' as Pos, 14 as Short, 7 as Mid, 1 as Long, 42 as XP, 117 as POINTS
UNION ALL select 'Bullock' as Last_Name, 'Randy' as First_Name, 'Lions' as Team, '9' as BYE, 'K' as Pos, 16 as Short, 6 as Mid, 2 as Long, 34 as XP, 116 as POINTS
UNION ALL select 'Joseph' as Last_Name, 'Greg' as First_Name, 'Vikings' as Team, '7' as BYE, 'K' as Pos, 14 as Short, 4 as Mid, 3 as Long, 41 as XP, 114 as POINTS
UNION ALL select 'Ficken' as Last_Name, 'Sam' as First_Name, 'Jets' as Team, '6' as BYE, 'K' as Pos, 15 as Short, 5 as Mid, 2 as Long, 34 as XP, 109 as POINTS
UNION ALL select 'McCann' as Last_Name, 'Tucker' as First_Name, 'Titans' as Team, '13' as BYE, 'K' as Pos, 16 as Short, 5 as Mid, 1 as Long, 34 as XP, 107 as POINTS
UNION ALL select 'Ka''imi' as Last_Name, 'Fairbairn' as First_Name, 'Texans' as Team, '10' as BYE, 'K' as Pos, 14 as Short, 6 as Mid, 3 as Long, 25 as XP, 106 as POINTS
UNION ALL select 'Rohrwasser' as Last_Name, 'Justin' as First_Name, 'Patriots' as Team, '14' as BYE, 'K' as Pos, 15 as Short, 4 as Mid, 2 as Long, 35 as XP, 106 as POINTS
UNION ALL select 'Elliott' as Last_Name, 'Jake' as First_Name, 'Eagles' as Team, '14' as BYE, 'K' as Pos, 7 as Short, 5 as Mid, 3 as Long, 32 as XP, 88 as POINTS

)


--Create A-F grading scale for each point slot relative to category leader


select first_name
, last_name
, team
, case when short = shortLeader.points then 'A+'  --Begin case statements to rank leaders as A+, 90%+ as A, 80%+ as B ...
	when short > shortLeader.points *.9 then 'A' 
	when short > shortLeader.points *.8 then 'B'
	when short > shortLeader.points *.75 then 'C'
	when short > shortLeader.points *.70 then 'D'
else 'F' end as 'Short Grade'
, case when mid = midLeader.points then 'A+' 
	when mid > midLeader.points *.9 then 'A' 
	when mid > midLeader.points *.8 then 'B'
	when mid > midLeader.points *.75 then 'C'
	when mid > midLeader.points *.70 then 'D'
else 'F' end as 'Mid Grade'
, case when long = longLeader.points then 'A+' 
	when long > longLeader.points *.9 then 'A' 
	when long > longLeader.points *.8 then 'B'
	when long > longLeader.points *.75 then 'C'
	when long > longLeader.points *.70 then 'D'
else 'F' end as 'Long Grade'
, case when XP = xpLeader.points then 'A+' 
	when XP > xpLeader.points *.9 then 'A' 
	when XP > xpLeader.points *.8 then 'B'
	when XP > xpLeader.points *.75 then 'C'
	when XP > xpLeader.points *.70 then 'D'
else 'F' end as 'XP Grade'
, case when kickers.points = pointsLeader.points then 'A+' 
	when kickers.points > pointsLeader.points *.9 then 'A' 
	when kickers.points > pointsLeader.points *.8 then 'B'
	when kickers.points > pointsLeader.points *.75 then 'C'
	when kickers.points > pointsLeader.points *.70 then 'D'
else 'F' end as 'Points Grade'
from kickers
cross apply (select max(short) as points --creates shortLeader.points that will be baseline to grade against, no curves on this exam!
	from kickers
	where 1=1) as shortLeader
cross apply (select max(mid) as points
	from kickers
	where 1=1) as midLeader
cross apply (select max(long) as points
	from kickers
	where 1=1) as longLeader
cross apply (select max(XP) as points
	from kickers
	where 1=1) as xpLeader
cross apply (select max(points) as points
	from kickers
	where 1=1) as pointsLeader
where 1=1 --Not really needed, but I add these so that future where clauses are easier to comment in / out





--select only kickers within 15% of the Points leader

/*

select kickers.*, round(cast(kickers.points as float) / cast(pointLeader.points as float),2) * 100 as 'Percent of Leader'
from kickers
cross apply (select max(points) as points
	from kickers) pointLeader
where kickers.points >= .85 * pointLeader.points

*/