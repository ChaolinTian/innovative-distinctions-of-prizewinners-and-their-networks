
*** use dataset data_part_I.dta 
use "data_part_I.dta", clear 

gen If_prizewinner = (Type == "Prizewinner") 
gen DID = If_prizewinner*Post

replace Relative_Publication_year = -20 if Relative_Publication_year < -20 
replace Relative_Publication_year = 20 if Relative_Publication_year > 20 

gen ts = Team_size 
replace ts = 6 if Team_size > 5

*** Table 1
reghdfe Novelty i.If_prizewinner i.DID Convergence Interdisciplinarity b1.ts, absorb( Group Relative_Publication_year Award ) vce(cluster Author_id )
est store novelty 

reghdfe Convergence i.If_prizewinner i.DID Novelty Interdisciplinarity b1.ts, absorb( Group Relative_Publication_year Award ) vce(cluster Author_id )
est store convergence

reghdfe Interdisciplinarity i.If_prizewinner i.DID Novelty Convergence b1.ts, absorb( Group Relative_Publication_year Award ) vce(cluster Author_id )
est store interdisciplinarity

outreg2 [novelty convergence interdisciplinarity] using Table_1.xlsx, excel replace dec(3) alpha(0.001, 0.01, 0.05) title(main_regression) 

*** Figure 2
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

reghdfe Novelty i.If_prizewinner##b4.NPY Convergence Interdisciplinarity b1.ts, absorb(Group Award) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Novelty") 

reghdfe Convergence i.If_prizewinner##b4.NPY Novelty Interdisciplinarity b1.ts, absorb(Group Award) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Convergence") 

reghdfe Interdisciplinarity i.If_prizewinner##b4.NPY Novelty Convergence b1.ts, absorb(Group Award) vce(cluster Author_id ) 
margins i.If_prizewinner#NPY, post
marginsplot,  xdimension(NPY) ytitle("Interdisciplinarity") 








