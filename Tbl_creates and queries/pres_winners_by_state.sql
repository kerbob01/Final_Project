select year, state, candidate, party, candidatevotes, totalvotes 
from election_data_by_state_2 s
--where s.year = '2016'
--and s.state = 'Arizona'
where s.candidatevotes = (select Max(ed.candidatevotes)
					 from election_data_by_state_2 ed
					 where s.year = ed.year
					 and s.state = ed.state
					 and candidate = ed.candidate
					 )
order by  s.state, s.year