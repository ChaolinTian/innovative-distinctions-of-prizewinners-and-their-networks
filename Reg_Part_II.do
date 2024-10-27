
*** use dataset data_part_II.dta

use 'data_part_II.dta',clear
gen If_prizewinner = (Type == "Prizewinner") 

*** Figure 4 

reghdfe Tie_duration i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
margins If_prizewinner
marginsplot

reghdfe Tie_overlap i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
margins If_prizewinner
marginsplot

reghdfe Topic_similarity i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
margins If_prizewinner
marginsplot

*** Table 2 
reghdfe Novelty Tie_duration Tie_overlap Topic_similarity i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
est store novelty

reghdfe Convergence Tie_duration Tie_overlap Topic_similarity i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
est store convergence 

reghdfe Interdisciplinarity Tie_duration Tie_overlap Topic_similarity i.If_prizewinner , absorb(Group Discipline Publication_year ) vce(cluster Author_id) 
est store interdisciplinarity

outreg2 [novelty convergence interdisciplinarity] using Table_2.xlsx, excel replace se dec(3) alpha(0.001, 0.01, 0.05) title(Innovation_vs_Network_embededness_reg)  
