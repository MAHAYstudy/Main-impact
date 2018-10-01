clear
set more off
version 13
tempfile fulldata


* SET GLOBAL MACROS for path to main directories
* v5: revised the set of controls
* added regional heterogeneity
* deleted education/age imputations

global d= 8
	if $d==1 {
	* "Karl"
	}
	if $d==2 {
	* "Ann" 
	global Mada "C:\Users\Dr.Desk\Box Sync\Madagascar Mahay Data\"
	*	Baseline folders
	gl BL_orig "${Mada}baseline\raw data2014\latest\"
	gl BL_create "${Mada}baseline\created_data2014\FINAL DATASETS\"
	gl MAJ_orig "${Mada}midline\Data\MAJ\Original\MAJ_Updated June 2016\"
	
	gl who_z "${Mada}WHO igrowup STATA\"
	
	*	Midline folders
	gl MAJ_create "${Mada}midline\Data\MAJ\"
	gl ML_orig_enf "${Mada}midline\Data\data - original\Data with correct ids\"
    gl ML_orig_men "${Mada}midline\Data\data - original\Data with correct ids\"
    gl ML_orig_vil "${Mada}midline\Data\data - original\Data with correct ids\"
	gl ML_create "${Mada}midline\Data\Created_Data_Midline\FINAL DATASETS\"
	
	
	*	En dline folders 
	gl EL_orig_enf "${Mada}endline\original_data\ENFANT\"
	gl EL_orig_men "${Mada}endline\original_data\MENAGE\"
	gl EL_orig_vil "${Mada}endline\original_data\VILLAGE"
	gl EL_create "${Mada}endline\created_data\"
	gl EL_MAJ "${Mada}endline\MAJ\"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data\"
	gl ADMIN_create "${Mada}admin_data\created_data\"		

	** ANALYSIS FOLDERS
	global TABLES "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}
	if $d==3 {
	* Emanuela
	global Mada "C:\Users\wb181320\Dropbox\Madagascar Mahay Data\"
	*	Baseline folders
	gl BL_orig "${Mada}baseline\raw data2014\latest\"
	gl BL_create "${Mada}baseline\created_data2014\FINAL DATASETS\"
	gl MAJ_orig "${Mada}midline\Data\MAJ\Original\MAJ_Updated June 2016\"
	
	gl who_z "${Mada}WHO igrowup STATA\"
	
	*	Midline folders
	gl MAJ_create "${Mada}midline\Data\MAJ\"
	gl ML_orig_enf "${Mada}midline\Data\data - original\Data with correct ids\"
    gl ML_orig_men "${Mada}midline\Data\data - original\Data with correct ids\"
    gl ML_orig_vil "${Mada}midline\Data\data - original\Data with correct ids\"
	gl ML_create "${Mada}midline\Data\Created_Data_Midline\FINAL DATASETS\"
	
	
	*	En dline folders 
	gl EL_orig_enf "${Mada}endline\original_data\ENFANT\"
	gl EL_orig_men "${Mada}endline\original_data\MENAGE\"
	gl EL_orig_vil "${Mada}endline\original_data\VILLAGE"
	gl EL_create "${Mada}endline\created_data\"
	gl EL_MAJ "${Mada}endline\MAJ\"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data\"
	gl ADMIN_create "${Mada}admin_data\created_data\"		

	** ANALYSIS FOLDERS
	global TABLES "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}	 

	if $d==4 {
	* Kara
	global user "/stat"
	global Mada "/Users/$user/Box Sync/Madagascar Mahay Data/"
	global ML_create "${Mada}midline/Data/Created_Data_Midline/"
	global BL_orig "/Users/$user/Box Sync/Madagascar Mahay Data/baseline/raw data2014/"
	global who_z "/Users/$user/Box Sync/Madagascar Mahay Data/WHO igrowup STATA/"
	global reports "/Users/$user/Box Sync/Madagascar Mahay Data/midline/Reports/infant/"
	}
	
	if $d == 5 {
	*	Kodjo
	global Mada "C:\Users\AFLAGAH\Box Sync\Madagascar Mahay Data\"
	}
	if $d == 6 {
	* 	Deepak (Did not want to rewrite file too much, so will use existing skeleton)
	global Mada "C:\Users\Deepak\Box Sync\Madagascar Mahay Data\"
	}
	if $d == 7 {
	* Maria
	global Mada "/Users/mdieci/Dropbox/Madagascar Mahay Data/"
	*	Baseline folders
	gl BL_orig "${Mada}baseline/raw data2014/latest/"
	gl BL_create "${Mada}baseline/created_data2014/FINAL DATASETS/"
	gl MAJ_orig "${Mada}midline/Data/MAJ/Original/MAJ_Updated June 2016/"
	
	gl who_z "${Mada}WHO igrowup STATA/"
	
	*	Midline folders
	gl MAJ_create "${Mada}midline/Data/MAJ/"
	gl ML_orig_enf "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_men "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_vil "${Mada}midline/Data/data - original/Data with correct ids/"
	gl ML_create "${Mada}midline/Data/Created_Data_Midline/FINAL DATASETS/"
	
	
	*	En dline folders 
	gl EL_orig_enf "${Mada}endline/original_data/ENFANT/"
	gl EL_orig_men "${Mada}endline/original_data/MENAGE/"
	gl EL_orig_vil "${Mada}endline/original_data/VILLAGE"
	gl EL_create "${Mada}endline/created_data/"
	gl EL_MAJ "${Mada}endline/MAJ/"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data/"
	gl ADMIN_create "${Mada}admin_data/created_data/"		

	** ANALYSIS FOLDERS
	global TABLES "/Users/mdieci/Desktop/" // "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}
	
	if $d == 8 {
	* 	Ling
	global Mada "/Volumes/Macintosh HD/Users/Ling/Dropbox/Madagascar Mahay Data/"
	*	Baseline folders
	gl BL_orig "${Mada}baseline/raw data2014/latest/"
	gl BL_create "${Mada}baseline/created_data2014/FINAL DATASETS/"
	gl MAJ_orig "${Mada}midline/Data/MAJ/Original/MAJ_Updated June 2016/"
	gl who_z "${Mada}WHO igrowup STATA/"
	
	*	Midline folders
	gl MAJ_create "${Mada}midline/Data/MAJ/"
	gl ML_orig_enf "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_men "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_vil "${Mada}midline/Data/data - original/Data with correct ids/"
	gl ML_create "${Mada}midline/Data/Created_Data_Midline/FINAL DATASETS/"

	*	Endline folders 
	gl EL_orig_enf "${Mada}endline/original_data/ENFANT/"
	gl EL_orig_men "${Mada}endline/original_data/MENAGE/"
	gl EL_orig_vil "${Mada}endline/original_data/VILLAGE/"
	gl EL_create "${Mada}endline/created_data/"
	gl EL_MAJ "${Mada}endline/MAJ/"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data/"
	gl ADMIN_create "${Mada}admin_data/created_data/"		
	
	** ANALYSIS FOLDERS
	global TABLES "${Mada}analysis/tables/" // "/Users/Ling/Desktop/MadaTables/" // "${Mada}analysis/tables/" //
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}

	global survey_name "Enfant"
	
cd "$Mada"
clear matrix
capture log close



use "${All_create}ITT_table2.dta", clear


*Drop variables not used in current analysis
drop fpc01-a204
drop fb02fenc-fd16c_s
drop fpg_demo99-fpc_rawtot
drop fpc19_rc-fps37_rc
drop fl09a_0-fd28a_5
drop fpc19b-q1_5

*******************************************************************************
* GLOBAL LIST OF FAMILY OF OUTCOMES;
*******************************************************************************

*Fam 1 Variables
global fam1 "hfaz wfaz wflz asq_all_sr stunted sevstunted wasting sevwasting"

	label var hfaz "Height/Age Zscore"
	label var wfaz "Weight/Age Zscore" 
	label var wflz "Weight/Length Zscore"
	
	label var male "Infant Male"
	label var infant_age_months "Infant Age (Mo.)"

	
*Fam 2: Intermediate indicators
global fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h bd_timesate24hr"

	lab var dairy_24h "dairy, past 24h" // binary
	lab var meat_egg_24h "proteins, past 24h" // binary
	lab var vitA_24h "vit A, past 24h" // binary
	lab var divers_24h "food diversity, past 24h" //categories 0-6
	label var home_score_FCI_pca "Home Play"
	
*Fam 3: child development indicators
global fam3 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr"

	label var asq_gross_sr "Gross Motor"
	label var asq_fine_sr "Fine Motor"
	label var asq_pres_sr "Problem Solving"
	label var asq_soc_sr  "Socio-Emotional Development"
	label var asq_comm_sr  "Communication Skills"
	
*Fam 6 : 
global fam6 "home_score2 home_score_FCI_sum home_score_FCI_pca"
	
*Controls	
global controls "i.wealth_qui i.birth_order mother_age "
	
	
	
	
	
****************************
*****Subgroup variables*****
****************************

**Indicators - moved to create infant_all V5
/*
*Indicator for older infants
sum infant_age_months if year==2016, de
*median age at EL = 30 months
g ageold=(infant_age_months>=r(p50)) if year==2016
	label var ageold "Age target child >= median"
	
*Indicator for mother higher education level
recode mother_ed (0 1 = 0) (2 3 4 9= 1) , gen(edhigh)
	label var edhigh "Mother education at least secondary"
	
recode wealth_qui (1 2 3= 1) (4 5 = 0), gen(wlow)
*/

 

di "now start itt"

keep if year == 2016


* COVARIATE TABLE 

*age and child characteristics
cap erase "${TABLES}graph3age.xml"
cap erase "${TABLES}graph3age.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam1 $fam3{
	reg `var' i.treatment##ageold male i.region i.mother_educ $controls ,  robust cl(grappe)
		lincom `num'.treatment 
			outreg2 using "${TABLES}graph3age", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + `num'.treatment#1.ageold
			outreg2 using "${TABLES}graph3age", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
	alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}

*age and child characteristics, the cohort with baseline information
cap erase "${TABLES}graph3age_originalcohort.xml"
cap erase "${TABLES}graph3age_originalcohort.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam1 $fam3 {
	reg `var' i.treatment##ageold male i.region i.mother_educ $controls if BL`var' !=. ,  robust cl(grappe)
		lincom `num'.treatment 
			outreg2 using "${TABLES}graph3age_originalcohort", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + `num'.treatment#1.ageold
			outreg2 using "${TABLES}graph3age_originalcohort", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}

*age and child characteristics - adjusted for baseline data
cap erase "${TABLES}graph3age_child_BLadj.xml"
cap erase "${TABLES}graph3age_child_BLadj.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam1 $fam3 {
	reg `var' i.treatment##ageold male i.region i.mother_educ $controls BL`var', robust cl(grappe)
		lincom `num'.treatment 
			outreg2 using "${TABLES}graph3age_child_BLadj", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + `num'.treatment#1.ageold
			outreg2 using "${TABLES}graph3age_child_BLadj", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}
	

*age and household characteristics
cap erase "${TABLES}graph3age_hh.xml"
cap erase "${TABLES}graph3age_hh.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam2 $fam6 {
	reg `var' i.treatment##ageold male i.region i.mother_educ $controls ,  robust cl(grappe)
		lincom `num'.treatment 
			outreg2 using "${TABLES}graph3age_hh", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + 1.treatment#1.ageold
			outreg2 using "${TABLES}graph3age_hh", keep(i.treatment##ageold) nocons excel addt(outcome, `var', treatment, `num') adds(age, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}

*Mother education and child characteristics
cap erase "${TABLES}graph3momed_child.xml"
cap erase "${TABLES}graph3momed_child.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam1 $fam3 {
	reg `var' i.treatment##edhigh male infant_age_months i.region  $controls ,  robust cl(grappe) 
		lincom `num'.treatment 
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment##edhigh) nocons excel ///
			addt(outcome, `var', treatment, `num') adds(mom_ed, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + `num'.treatment#1.edhigh
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment##edhigh) nocons excel addt(outcome, `var', treatment, `num') adds(mom_ed, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}


*Mother education and household characteristics
cap erase "${TABLES}graph3momed_hh.xml"
cap erase "${TABLES}graph3momed_hh.txt"
foreach num of numlist 1/4 {
foreach var of varlist $fam2 $fam6 {
	reg `var' i.treatment##edhigh male infant_age_months i.region $controls ,  robust cl(grappe)
		lincom `num'.treatment
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment##edhigh) nocons excel addt(outcome, `var', treatment, `num') adds(mom_ed, 0, high, r(ub),low, r(lb),close, r(estimate))
		lincom `num'.treatment + `num'.treatment#1.edhigh
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment##edhigh) nocons excel addt(outcome, `var', treatment, `num') adds(mom_ed, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
	est clear
}
}



	*** high: ub of ci; low: lb of ci; close: beta coef 
	*** output data edited: sheet transposed, pasted last three lines(high low close) to sheet "export"
	*** saved as filename_modified
	**********************************************************************************************************
	

	


	
*Home Environment
cap erase "${TABLES}homescore_age.xml"
cap erase "${TABLES}homescore_age.txt"
foreach var of varlist $fam1 $fam2 $fam3 asq_all_sr {
	reg `var' c.home_score_FCI_pca##ageold  male infant_age_months i.region $controls ,  robust cl(grappe)
	lincom  c.home_score_FCI_pca
			outreg2 using "${TABLES}homescore_age", keep(c.home_score_FCI_pca##ageold) nocons excel addt(outcome, `var') adds(age, 0, high, r(ub),low, r(lb),close, r(estimate))
	lincom  c.home_score_FCI_pca +  c.home_score_FCI_pca#1.ageold
			outreg2 using "${TABLES}homescore_age", keep(c.home_score_FCI_pca##ageold) nocons excel addt(outcome, `var') adds(age, 1, high, r(ub),low, r(lb),close, r(estimate)) ///
	alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †) ///
					 title("homescore heterogeneity")
					 est clear
}

import excel "${TABLES}Home score/homescore_age_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/homescore_age.dta", replace

use "${GRAPHS}/Main-impact-paper/homescore_age.dta" , clear

	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "asq_all_sr"
	replace outcome = "5" if outcome == "stunted"
	replace outcome = "6" if outcome == "sevstunted"
	replace outcome = "7" if outcome == "wasting"
	replace outcome = "8" if outcome == "sevwasting"
	replace outcome = "9" if outcome == "meat_egg_24h"
	replace outcome = "10" if outcome == "vitA_24h"
	replace outcome = "11" if outcome == "divers_24h"
	replace outcome = "12" if outcome == "bd_timesate24hr"
	replace outcome = "13" if outcome == "asq_gross_sr"
	replace outcome = "14" if outcome == "asq_fine_sr"
	replace outcome = "15" if outcome == "asq_pres_sr"
	replace outcome = "16" if outcome == "asq_soc_sr"
	replace outcome = "17" if outcome == "asq_comm_sr"
	replace outcome = "18" if outcome == "dairy_24h"
	
	
	destring outcome age high low close, replace
	
	label define age 0 "young" 1 "old"
	label value age age
	
	*generate variable for graphing
	sort age
	bys outcome: egen treat_het = rank(age)
	
	sort outcome treat_het
	
	
	*Looping for age het graph
	foreach num of numlist 1/18 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Severely Stunted"
	local tname7 "Wasting"
	local tname8 "Severely Wasting"
	local tname9 "Protein intake past 24hr"
	local tname10 "Vitamin A rich foods past 24hr"
	local tname11 "Dietary diversity score past 24 hr"
	local tname12 "Meal frequency past 24hr"
	local tname13 "ASQ gross motor"
	local tname14 "ASQ fine motor"
	local tname15 "asq_pres_sr"
	local tname16 "asq_soc_sr"
	local tname17 "asq_comm_sr"
	local tname18 "dairy_24h"
	local fname1 home_hfaz_age
	local fname2 home_wfaz_age
	local fname3 home_wflz_age
	local fname4 home_tasq_age
	local fname5 home_stun_age
	local fname6 home_sevstun_age
	local fname7 home_wasting_age
	local fname8 home_sevwastnig_age
	local fname9 home_meat_egg_age
	local fname10 home_vitA_age
	local fname11 home_divers_age
	local fname12 home_bd_timesate_age
	local fname13 home_asq_gross_age
	local fname14 home_asq_fine_age
	local fname15 home_asq_pres_age
	local fname16 home_asq_soc_age
	local fname17 home_asq_comm_age
	local fname18 home_dairy_age
	
	
	twoway rcap high low treat_het if age ==0, lcolor(gs2) || ///
			scatter close treat_het if age ==0, mlabel(age)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if age ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if age ==1, mlabel(age)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			ytitle("β Coef.") xlabel(1 "Young" 2 "Old") xsc(r(0 3)) ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over child age") legend(off)  ///
			note("Black denotes child age < median, gray denotes child age >= median")  || if outcome == `num'
		graph save "${GRAPHS}HOME/`fname`num''", replace
		}
	
	
	
	************************************************************	
	*For child age het graph with infant characteristics*
	************************************************************
	*global fam1 "hfaz wfaz wflz asq_all_sr stunted sevstunted  wasting sevwasting"
import excel "${TABLES}graph3age_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/graph3_age.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3_age.dta" , clear

	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "asq_all_sr"
	replace outcome = "5" if outcome == "stunted"
	replace outcome = "6" if outcome == "sevstunted"
	replace outcome = "7" if outcome == "wasting"
	replace outcome = "8" if outcome == "sevwasting"

	destring outcome treatment age high low close, replace
	
	label define outcome 1 "Height for age Z score" 2 "Weight for age Z score" ///
		3 "Weight for length Z score" 4 "Total ASQ"
	label value outcome outcome
	

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define age 0 "young" 1 "old"
	label value age age
	
	*generate variable for graphing
	sort treatment age
	egen rank = group(treatment age)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for age het graph
	foreach num of numlist 1/8 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Severely Stunted"
	local tname7 "Wasting"
	local tname8 "Severely Wasting"
	local fname1 het_hfaz_age
	local fname2 het_wfaz_age
	local fname3 het_wflz_age
	local fname4 het_tasq_age
	local fname5 het_stun_age
	local fname6 het_sevstun_age
	local fname7 het_wasting_age
	local fname8 het_sevwastnig_age
	
	twoway rcap high low treat_het if age ==0, lcolor(gs2) || ///
			scatter close treat_het if age ==0, mlabel(age)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if age ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if age ==1, mlabel(age)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over child age") legend(off)  ///
			note("Black denotes child age < median, gray denotes child age >= median")  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}
		
	*Looping for age het graph - colored
	foreach num of numlist 1/8 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Severely Stunted"
	local tname7 "Wasting"
	local tname8 "Severely Wasting"
	local fname1 het_hfaz_age
	local fname2 het_wfaz_age
	local fname3 het_wflz_age
	local fname4 het_tasq_age
	local fname5 het_stun_age
	local fname6 het_sevstun_age
	local fname7 het_wasting_age
	local fname8 het_sevwastnig_age
	
	twoway rcap high low treat_het if treatment == 1 , lwidth(thick) lcolor("254 226 135") yline(0, lstyle(foreground)) || ///
			rcap high low treat_het if treatment == 2 ,lwidth(thick) lcolor("240 161 112")  || ///
			rcap high low treat_het if treatment == 3 ,lwidth(thick) lcolor("179 140 118")  || ///
			rcap high low treat_het if treatment == 4 ,lwidth(thick) lcolor("96 161 55")  ///	
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) || ///
			scatter close treat_het , mlabel(age)  mlabc(gs4) mlabp(1) m(D) mc(gs4) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) ///
			legend(off) ///
			graphr(c(white)) ||  if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
	
	
	************************************************************	
	*For child age het graph with infant characteristics, original cohort*
	************************************************************
	*global fam1 "hfaz wfaz wflz asq_all_sr stunted sevstunted  wasting sevwasting"
import excel "${TABLES}graph3age_originalcohort_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/graph3age_originalcohort.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3age_originalcohort.dta" , clear

	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "asq_all_sr"
	replace outcome = "5" if outcome == "stunted"
	replace outcome = "6" if outcome == "sevstunted"
	replace outcome = "7" if outcome == "wasting"
	replace outcome = "8" if outcome == "sevwasting"

	destring outcome treatment age high low close, replace
	
	label define outcome 1 "Height for age Z score" 2 "Weight for age Z score" ///
		3 "Weight for length Z score" 4 "Total ASQ"
	label value outcome outcome
	

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define age 0 "young" 1 "old"
	label value age age
	
	*generate variable for graphing
	sort treatment age
	egen rank = group(treatment age)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for age het graph
	foreach num of numlist 1/8 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Severely Stunted"
	local tname7 "Wasting"
	local tname8 "Severely Wasting"
	local fname1 het_hfaz_age
	local fname2 het_wfaz_age
	local fname3 het_wflz_age
	local fname4 het_tasq_age
	local fname5 het_stun_age
	local fname6 het_sevstun_age
	local fname7 het_wasting_age
	local fname8 het_sevwastnig_age
	
	twoway rcap high low treat_het if age ==0, lcolor(gs2) || ///
			scatter close treat_het if age ==0, mlabel(age)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if age ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if age ==1, mlabel(age)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over child age, without replacement households") legend(off)  ///
			note("Black denotes child age < median, gray denotes child age >= median")  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''_original", replace
		}

	
	
	
	*********************************************************************
	*For child age het graph with infant characteristics adjusted for BL*
	*********************************************************************
	*global fam1 "hfaz wfaz wflz asq_all_sr stunted sevstunted  wasting sevwasting"
import excel "${TABLES}graph3age_child_BLadj_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/graph3age_child_BLadj_modified.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3age_child_BLadj_modified.dta" , clear
	
	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "asq_all_sr"
	replace outcome = "5" if outcome == "stunted"
	replace outcome = "6" if outcome == "sevstunted"
	replace outcome = "7" if outcome == "wasting"
	replace outcome = "8" if outcome == "sevwasting"
	
	destring outcome treatment age high low close, replace
	
	label define outcome 1 "Height for age Z score" 2 "Weight for age Z score" ///
		3 "Weight for length Z score" 4 "Total ASQ"
	label value outcome outcome
	

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define age 0 "young" 1 "old"
	label value age age
	
	*generate variable for graphing
	sort treatment age
	egen rank = group(treatment age)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for age het graph
	foreach num of numlist 1/8 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Severely Stunted"
	local tname7 "Wasting"
	local tname8 "Severely Wasting"
	local fname1 het_hfaz_age
	local fname2 het_wfaz_age
	local fname3 het_wflz_age
	local fname4 het_tasq_age
	local fname5 het_stun_age
	local fname6 het_sevstun_age
	local fname7 het_wasting_age
	local fname8 het_sevwastnig_age
	
	twoway rcap high low treat_het if age ==0, lcolor(gs2) || ///
			scatter close treat_het if age ==0, mlabel(age)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if age ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if age ==1, mlabel(age)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over child age, baseline adjusted") legend(off)  ///
			note("Black denotes child age < median, gray denotes child age >= median")  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''BL", replace
		}

		
	********************************************************	
	*For child age het graph with household characteristics*
	********************************************************
	*global fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h home_score2 bd_timesate24hr"
import excel "${TABLES}graph3age_hh_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/graph3_age_hh.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3_age_hh.dta" , clear
	
	replace outcome = "1" if outcome == "dairy_24h"
	replace outcome = "2" if outcome == "meat_egg_24h"
	replace outcome = "3" if outcome == "vitA_24h"
	replace outcome = "4" if outcome == "divers_24h"
	replace outcome = "5" if outcome == "bd_timesate24hr"
	replace outcome = "6" if outcome == "home_score2"
	replace outcome = "7" if outcome == "home_score_FCI_sum"
	replace outcome = "8" if outcome == "home_score_FCI_pca"
	
	destring outcome treatment age high low close, replace
	
	label define outcome 1 "Dairy intake past 24hr" 2 "Protein intake past 24hr" ///
		3 "Vitamin A rich foods past 24hr" 4 "Dietary diversity score past 24 hr" 
	label value outcome outcome
	

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define age 0 "young" 1 "old"
	label value age age
	
	*generate variable for graphing
	sort treatment age
	egen rank = group(treatment age)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for age het graph
	foreach num of numlist 1/8 {
	local tname1 "Dairy intake past 24hr"
	local tname2 "Protein intake past 24hr"
	local tname3 "Vitamin A rich foods past 24hr"
	local tname4 "Dietary diversity score past 24 hr"
	local tname5 "Meal frequency past 24hr"
	local tname6 "home score 2"
	local tname7 "Home score sum"
	local tname8 "Home score pca"
	local fname1 het_dairy_24h_age
	local fname2 het_meat_egg_24h_age
	local fname3 het_vitA_24h_age
	local fname4 het_divers_24h_age
	local fname5 het_mealfrquency_age
	local fname6 het_homescore_age
	local fname7 het_homescore_sum_age
	local fname8 het_homescore_pca_age
	
	twoway rcap high low treat_het if age ==0, lcolor(gs2) || ///
			scatter close treat_het if age ==0, mlabel(age)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if age ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if age ==1, mlabel(age)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over child age") legend(off)  ///
			note("Black denotes child age < median, gray denotes child age >= median")  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}
		
		
	************************************************************	
	*For mother education het graph with infant characteristics*
	************************************************************
	*fam1 "hfaz wfaz wflz asq_all_sr stunted sevstunted wasting sevwasting"
	
import excel "${TABLES}graph3momed_child_modified.xlsx", sheet("export") firstrow case(lower) clear
	
save "${GRAPHS}/Main-impact-paper/graph3momed_child_modified.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3momed_child_modified.dta" , clear

	
	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "asq_all_sr"
	replace outcome = "5" if outcome == "stunted"
	replace outcome = "6" if outcome == "wasting"
	replace outcome = "9" if outcome != "1" & outcome != "2" & outcome != "3" & outcome != "4" ///
		& outcome != "5" & outcome != "6"

		destring outcome treatment mom_ed high low close, replace
	
	label define outcome 1 "Height for age Z score" 2 "Weight for age Z score" ///
		3 "Weight for length Z score" 4 "Total ASQ"
	label value outcome outcome

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define mom_ed 0 "low" 1 "high"
	label value mom_ed mom_ed
	
	*generate variable for graphing
	sort treatment mom_ed
	egen rank = group(treatment mom_ed)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	foreach num of numlist 1/6 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Wasted"
	local fname1 het_hfaz_momed
	local fname2 het_wfaz_momed
	local fname3 het_wflz_momed
	local fname4 het_tasq_momed
	local fname5 het_stunted_momed
	local fname6 het_wasted_momed
	
	twoway rcap high low treat_het if mom_ed ==0, lcolor(gs2) || ///
			scatter close treat_het if mom_ed ==0, mlabel(mom_ed)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if mom_ed ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if mom_ed ==1, mlabel(mom_ed)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over mother education level") legend(off)  ///
			note("Black denotes mother has only primary education or less, gray denotes mother has at least secondary education", size(vsmall))  || ///
			if outcome == `num'								
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}
		
		
		
	*Colored graphs - Mom ed & child characteristics
	foreach num of numlist 1/6 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local tname5 "Stunted"
	local tname6 "Wasted"
	local fname1 het_hfaz_momed
	local fname2 het_wfaz_momed
	local fname3 het_wflz_momed
	local fname4 het_tasq_momed
	local fname5 het_stunted_momed
	local fname6 het_wasted_momed
	
	twoway rcap high low treat_het if treatment == 1 , lwidth(thick) lcolor("254 226 135") yline(0, lstyle(foreground)) || ///
			rcap high low treat_het if treatment == 2 ,lwidth(thick) lcolor("240 161 112")  || ///
			rcap high low treat_het if treatment == 3 ,lwidth(thick) lcolor("179 140 118")  || ///
			rcap high low treat_het if treatment == 4 ,lwidth(thick) lcolor("96 161 55")  ///	
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) || ///
			scatter close treat_het , mlabel(mom_ed)  mlabc(gs4) mlabp(1) m(D) mc(gs4) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity by mother's education level") ///
			legend(off) ///
			graphr(c(white)) ||  if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
	
		
	***************************************************************	
	*For mother education het graph with household characteristics*
	************************************************************

import excel "${TABLES}graph3momed_hh_modified.xlsx", sheet("export") firstrow case(lower) clear
	
save "${GRAPHS}/Main-impact-paper/graph3momed_hh_modified.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3momed_hh_modified.dta" , clear

	replace outcome = "1" if outcome == "dairy_24h"
	replace outcome = "2" if outcome == "meat_egg_24h"
	replace outcome = "3" if outcome == "vitA_24h"
	replace outcome = "4" if outcome == "divers_24h"
	replace outcome = "5" if outcome == "bd_timesate24hr"
	replace outcome = "6" if outcome == "home_score2"
	replace outcome = "7" if outcome == "home_score_FCI_sum"
	replace outcome = "8" if outcome == "home_score_FCI_pca"

	destring outcome treatment mom_ed high low close, replace
	
	*fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h home_score2"
	
	label define outcome 1 "Dairy intake past 24hr" 2 "Protein intake past 24hr" ///
		3 "Vitamin A rich foods past 24hr" 4 "Dietary diversity score past 24 hr" 

	label value outcome outcome

	label define treatment 1 "T1" 2 "T2" ///
		3 "T3" 4 "T4"
	label value treatment treatment
	
	label define mom_ed 0 "low" 1 "high"
	label value mom_ed mom_ed
	
	*generate variable for graphing
	sort treatment mom_ed
	egen rank = group(treatment mom_ed)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
		
	*Looping for mother education het graph with household characteristics
	foreach num of numlist 1/8 {
	local tname1 "Dairy intake past 24hr"
	local tname2 "Protein intake past 24hr"
	local tname3 "Vitamin A rich foods past 24hr"
	local tname4 "Dietary diversity score past 24 hr"
	local tname5 "Meal frequency past 24hr"
	local tname6 "home score 2"
	local tname7 "Home score sum"
	local tname8 "Home score pca"
	local fname1 het_dairy_24h_momed
	local fname2 het_meat_egg_24h_momed
	local fname3 het_vitA_24h_momed
	local fname4 het_divers_24h_momed
	local fname5 het_mealfrquency_momed
	local fname6 het_homescore_momed
	local fname7 het_homescore_sum_momed
	local fname8 het_homescore_pca_momed
	
	twoway rcap high low treat_het if mom_ed ==0, lcolor(gs2) || ///
			scatter close treat_het if mom_ed ==0, mlabel(mom_ed)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if mom_ed ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if mom_ed ==1, mlabel(mom_ed)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4 "T2" 6.5 "T3" 9 "T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over mother education level") legend(off)  ///
			note("Black denotes mother has only primary education or less, gray denotes mother has at least secondary education", size(vsmall))  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}
		
		
	*Colored graphs - Mom ed & HH characteristics
	foreach num of numlist 1/8 {
	local tname1 "Dairy intake past 24hr"
	local tname2 "Protein intake past 24hr"
	local tname3 "Vitamin A rich foods past 24hr"
	local tname4 "Dietary diversity score past 24 hr"
	local tname5 "Meal frequency past 24hr"
	local tname6 "home score 2"
	local tname7 "Home score sum"
	local tname8 "Home score pca"
	local fname1 het_dairy_24h_momed
	local fname2 het_meat_egg_24h_momed
	local fname3 het_vitA_24h_momed
	local fname4 het_divers_24h_momed
	local fname5 het_mealfrquency_momed
	local fname6 het_homescore_momed
	local fname7 het_homescore_sum_momed
	local fname8 het_homescore_pca_momed
	
	twoway rcap high low treat_het if treatment == 1 , lwidth(thick) lcolor("254 226 135") yline(0, lstyle(foreground)) || ///
			rcap high low treat_het if treatment == 2 ,lwidth(thick) lcolor("240 161 112")  || ///
			rcap high low treat_het if treatment == 3 ,lwidth(thick) lcolor("179 140 118")  || ///
			rcap high low treat_het if treatment == 4 ,lwidth(thick) lcolor("96 161 55")  ///	
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) || ///
			scatter close treat_het , mlabel(mom_ed)  mlabc(gs4) msize(small) mlabp(1) m(D) mc(gs4) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity by mother's education level") ///
			legend(off) ///
			graphr(c(white)) name(`fname`num'',replace) ||  if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
		
	global momed_hh het_divers_24h_momed het_vitA_24h_momed /// 
					het_dairy_24h_momed het_meat_egg_24h_momed ///
					het_homescore_pca_momed 

		
	graph combine $momed_hh, xcom
		
*============================
*    Descriptive graphs
*============================


twoway (lowess divers_24h infant_age_months, ///
lcolor(midblue)), ytitle(Food Diversity past 24 hr) ///
xtitle(Child Age in Months) xline(6 12 18 24 30, ///
lpattern(dash) lcolor(black)) xmtick(0(6)36)
graph save "${GRAPHS}For policy report/fooddiv_lowess.gph", replace

twoway (lowess bd_timesate24hr infant_age_months, ///
lcolor(midblue)), ytitle(Meal Frequency past 24 hr) ///
xtitle(Child Age in Months) xline(6 12 18 24 30, ///
lpattern(dash) lcolor(black)) xmtick(0(6)36)
graph save "${GRAPHS}For policy report/mealfreq_lowess.gph", replace

graph combine "${GRAPHS}For policy report/fooddiv_lowess.gph" "${GRAPHS}For policy report/mealfreq_lowess.gph"

twoway (lowess home_score_FCI_pca infant_age_months if treatment <4, ///
lcolor(midblue)) (lowess home_score_FCI_pca infant_age_months if treatment == 4, lcolor(red)), ///
ytitle(Home score) xtitle(Child Age in Months) xline(6 12 18 24 30, ///
lpattern(dash) lcolor(black)) xmtick(0(6)36) legend(label(1 "T0-T3") label(2 "T4"))

graph save "${GRAPHS}For policy report/homescore_age_lowess.gph", replace

global home "totbook source_playobj play3 playactiv"

foreach var of varlist $home {
local totbook "Total Number of Books"
local source_playobj "Sources of Play Objects"
local play3 "More than 3 toys at home"
local playactiv "Play Activities"
twoway (lowess `var' infant_age_months if treatment == 0| treatment == 1 | treatment == 2 |treatment == 3, ///
lcolor(midblue)) (lowess `var' infant_age_months ///
if treatment == 4, lcolor(red)), ///
ytitle(``var'') xtitle(Child Age in Months) xline(6 12 18 24 30, ///
lpattern(dash) lcolor(black)) xmtick(0(6)36) legend(label(1 "T0-T3") label(2 "T4")) name(`var',replace)

graph save "${GRAPHS}For policy report/`var'_lowess.gph", replace
}


graph combine $home , xcom 
graph save "${GRAPHS}For policy report/All_home_lowess.gph", replace
