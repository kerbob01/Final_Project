select * from election_data ed
where ed.candidatevotes = (select max(d.candidatevotes)
					  from election_data d
					  where ed.year = d.year
					  and ed.state = d.state
					  and ed.county = d.county)
