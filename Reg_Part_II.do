

*** use dataset data_part_II.dta 
use "data_part_II.dta", clear 

replace Relative_Publication_year = -20 if Relative_Publication_year < -20 
replace Relative_Publication_year = 20 if Relative_Publication_year > 20 


*** TABLE 1 

reghdfe Novelty i.If_prizewinner i.DID Tie_duration Tie_overlap Topic_similarity Convergence Interdisciplinarity , absorb(Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id)
est store Novelty

reghdfe Convergence i.If_prizewinner i.DID Tie_duration Tie_overlap Topic_similarity Novelty Interdisciplinarity , absorb(Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id)
est store Convergence

reghdfe Interdisciplinarity i.If_prizewinner i.DID Tie_duration Tie_overlap Topic_similarity Novelty Convergence , absorb(Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id)
est store Interdisciplinarity

outreg2 [Novelty Convergence Interdisciplinarity] using Table_1.xlsx, excel replace dec(3) alpha(0.001, 0.01, 0.05) title(regression)  
