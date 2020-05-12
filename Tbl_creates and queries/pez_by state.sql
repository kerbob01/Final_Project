select year, state, state_po, candidate, party, candidatevotes, totalvotes from election_data ed
where ed.candidatevotes = (select max(d.candidatevotes)
					  from election_data d
					  where ed.year = d.year
					  and ed.state = d.state
					  )