
*** use dataset data_part_I.dta 
use "data_part_I.dta", clear 

replace Relative_Publication_year = -20 if Relative_Publication_year < -20 
replace Relative_Publication_year = 20 if Relative_Publication_year > 20 

*** FIGURE 2A
reghdfe Novelty i.If_prizewinner i.DID Convergence Interdisciplinarity , absorb( Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id )
est store novelty 

reghdfe Convergence i.If_prizewinner i.DID Novelty Interdisciplinarity, absorb( Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id )
est store convergence

reghdfe Interdisciplinarity i.If_prizewinner i.DID Novelty Convergence, absorb( Team_size Group Relative_Publication_year Award Author_position) vce(cluster Author_id )
est store interdisciplinarity

outreg2 [novelty convergence interdisciplinarity] using FIGURE_2A.xlsx, excel replace dec(3) alpha(0.001, 0.01, 0.05) title(main_regression) 

*** FIGURE 2B
gen  NormPubYClass_5= .
replace NormPubYClass_5 = -4 if Relative_Publication_year >= -20 & Relative_Publication_year < -15
replace NormPubYClass_5 = -3 if Relative_Publication_year >= -15 & Relative_Publication_year < -10
replace NormPubYClass_5 = -2 if Relative_Publication_year >= -10 & Relative_Publication_year < -5
replace NormPubYClass_5 = -1 if Relative_Publication_year >= -5 & Relative_Publication_year < 0
replace NormPubYClass_5 = 0 if Relative_Publication_year ==0 
replace NormPubYClass_5 = 1 if Relative_Publication_year > 0 & Relative_Publication_year < 5
replace NormPubYClass_5 = 2 if Relative_Publication_year >= 5 & Relative_Publication_year < 10
replace NormPubYClass_5 = 3 if Relative_Publication_year >= 10 & Relative_Publication_year < 15
replace NormPubYClass_5 = 4 if Relative_Publication_year >= 15  
gen NPY = NormPubYClass_5+5  

** FIGURE 2B (a) 
reghdfe Novelty i.If_prizewinner##b4.NPY Convergence Interdisciplinarity, absorb(Team_size Group Award Author_position) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Novelty") 

** FIGURE 2B (b) 
reghdfe Convergence i.If_prizewinner##b4.NPY Novelty Interdisciplinarity, absorb(Team_size Group Award Author_position) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Convergence") 

** FIGURE 2B (c) 
reghdfe Interdisciplinarity i.If_prizewinner##b4.NPY Novelty Convergence, absorb(Team_size Group Award Author_position) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Interdisciplinarity") 








