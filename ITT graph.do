clear
set more off
version 13


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
drop clonefpc01-clonefpc_1pl_sresid
drop fpc19_rc-fps37_rc
drop fl09a_0-fd28a_5
drop fpc19b-q1_5

*keep only EL data
keep if year == 2016


*******************************************************************************
* GLOBAL LIST OF FAMILY OF OUTCOMES;
*******************************************************************************

*Fam 1 Variables
global fam1 "hfaz wfaz wflz stunted sevstunted"

	label var hfaz "Height/Age Zscore"
	label var wfaz "Weight/Age Zscore" 
	label var wflz "Weight/Length Zscore"
	
	label var male "Infant Male"
	label var infant_age_months "Infant Age (Mo.)"

*Fam 3: child development indicators
global fam3 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr"

	label var asq_gross_sr "Gross Motor"
	label var asq_fine_sr "Fine Motor"
	label var asq_pres_sr "Problem Solving"
	label var asq_soc_sr  "Socio-Emotional Development"
	label var asq_comm_sr  "Communication Skills"


*Controls	
global controls "i.wealth_qui i.birth_order mother_age"

* COVARIATE TABLE 

	*1.Child development
	cap erase "${TABLES}child_dev_main_effect.xml"
	cap erase "${TABLES}child_dev_main_effect.txt"
	foreach var of varlist $fam3 {
		reg `var' i.treatment male infant_age_months i.region i.mother_educ $controls ,  robust cl(grappe)
			lincom 1.treatment
				outreg2 using "${TABLES}child_dev_main_effect", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
			lincom 2.treatment 
				outreg2 using "${TABLES}child_dev_main_effect", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
			lincom 3.treatment 
				outreg2 using "${TABLES}child_dev_main_effect", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
			lincom 4.treatment 
				outreg2 using "${TABLES}child_dev_main_effect", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		est clear
	}
	
	*2.Child development by age cohort
	
	cap erase "${TABLES}child_dev_agecohort.xml"
	cap erase "${TABLES}child_dev_agecohort.txt"
	foreach num of numlist 1/4 {
	foreach var of varlist $fam3 {
		reg `var' i.treatment##i(1/3).age_cohort male i.region i.mother_educ $controls ,  robust cl(grappe)
			lincom `num'.treatment
				outreg2 using "${TABLES}child_dev_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 1, high, r(ub),low, r(lb),close, r(estimate))
			lincom `num'.treatment + `num'.treatment#2.age_cohort
				outreg2 using "${TABLES}child_dev_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 2, high, r(ub),low, r(lb),close, r(estimate))
			lincom `num'.treatment + `num'.treatment#3.age_cohort
				outreg2 using "${TABLES}child_dev_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 3, high, r(ub),low, r(lb),close, r(estimate))
		est clear
	}
	}
	
	*3.Child growth by age cohort
	
	cap erase "${TABLES}child_growth_agecohort.xml"
	cap erase "${TABLES}child_growth_agecohort.txt"
	foreach num of numlist 1/4 {
	foreach var of varlist $fam1 {
		reg `var' i.treatment##i(1/3).age_cohort male i.region i.mother_educ $controls ,  robust cl(grappe)
			lincom `num'.treatment
				outreg2 using "${TABLES}child_growth_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 1, high, r(ub),low, r(lb),close, r(estimate))
			lincom `num'.treatment + `num'.treatment#2.age_cohort
				outreg2 using "${TABLES}child_growth_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 2, high, r(ub),low, r(lb),close, r(estimate))
			lincom `num'.treatment + `num'.treatment#3.age_cohort
				outreg2 using "${TABLES}child_growth_agecohort", keep(i.treatment) nocons excel addt(outcome, `var', treatment, `num') adds(agecohort, 3, high, r(ub),low, r(lb),close, r(estimate))
		est clear
	}
	}
	
	*** high: ub of ci; low: lb of ci; close: beta coef 
	*** output data edited: sheet transposed, pasted last three lines(high low close) to sheet "export"
	*** added corresponding codes for outcome and treatment
	*** saved as "'filename'_modified"
	**********************************************************************************************************

	
	
	
	***********************************************************	
	*      For the main effect on child development           *
	***********************************************************
	/*global fam3 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr"

	label var asq_gross_sr "Gross Motor"
	label var asq_fine_sr "Fine Motor"
	label var asq_pres_sr "Problem Solving"
	label var asq_soc_sr  "Socio-Emotional Development"
	label var asq_comm_sr  "Communication Skills" */
	
import excel "${TABLES}child_dev_main_effect_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/child_dev_main_effect.dta", replace

use "${GRAPHS}/Main-impact-paper/child_dev_main_effect.dta" , clear

	destring outcome treatment high low close, replace
	
	label define outcome 1 "Gross Motor" 2 "Fine Motor" 3 "Problem Solving" ///
		 4 "Socio-Emotional Development" 5 "Communication Skills" 6 "Total ASQ"
	label value outcome outcome
	

	label define treatment 1 "T1" 2 "T2" 3 "T3" 4 "T4"
	label value treatment treatment

	
	*generate variable for graphing
	gen treat_het = treatment
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for graph
	foreach num of numlist 1/6 {
	local tname1 "Gross Motor"
	local tname2 "Fine Motor"
	local tname3 "Problem Solving"
	local tname4 "Socio-Emotional Development"
	local tname5 "Communication Skills"
	local tname6 "Total ASQ"
	local fname1 ITT_dev_GM
	local fname2 ITT_dev_FM
	local fname3 ITT_dev_PS
	local fname4 ITT_dev_SED
	local fname5 ITT_dev_CS
	local fname6 ITT_dev_tASQ
	
	twoway rcap high low treat_het if treatment == 1 , lcolor("254 226 135") yline(0, lstyle(foreground)) || ///
			rcap high low treat_het if treatment == 2 , lcolor("240 161 112")  || ///
			rcap high low treat_het if treatment == 3 , lcolor("179 140 118")  || ///
			rcap high low treat_het if treatment == 4 , lcolor("96 161 55")  ///	
			xlabel(1 "T1" 2.5 "T2" 4 "T3" 5.5 "T4") xsc(r(0 6.5)) || ///
			scatter close treat_het , m(D) mc(gs1) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("Main effects") legend(off) || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
		
	***********************************************************	
	*      age cohort and child development        *
	***********************************************************
	/*global fam3 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr"

	label var asq_gross_sr "Gross Motor"
	label var asq_fine_sr "Fine Motor"
	label var asq_pres_sr "Problem Solving"
	label var asq_soc_sr  "Socio-Emotional Development"
	label var asq_comm_sr  "Communication Skills" */
	
import excel "${TABLES}child_dev_agecohort_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/child_dev_agecohort.dta", replace

use "${GRAPHS}/Main-impact-paper/child_dev_agecohort.dta" , clear

	replace outcome = "1" if outcome == "asq_gross_sr"
	replace outcome = "2" if outcome == "asq_fine_sr"
	replace outcome = "3" if outcome == "asq_pres_sr"
	replace outcome = "4" if outcome == "asq_soc_sr"
	replace outcome = "5" if outcome == "asq_comm_sr"
	replace outcome = "6" if outcome == "asq_all_sr"
	
	destring outcome treatment agecohort high low close, replace
	
	label define treatment 1 "T1" 2 "T2" 3 "T3" 4 "T4"
	label value treatment treatment
	
	label define agecohort 1 "A" 2 "B" 3 "C"
	label value agecohort agecohort
	
	

	*generate variable for graphing
	sort treatment agecohort
	egen rank = group(treatment agecohort)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for graph
	foreach num of numlist 1/6 {
	local tname1 "Gross Motor"
	local tname2 "Fine Motor"
	local tname3 "Problem Solving"
	local tname4 "Socio-Emotional Development"
	local tname5 "Communication Skills"
	local tname6 "Total ASQ"
	local fname1 ITT_dev_GM_agecohort
	local fname2 ITT_dev_FM_agecohort
	local fname3 ITT_dev_PS_agecohort
	local fname4 ITT_dev_SED_agecohort
	local fname5 ITT_dev_CS_agecohort
	local fname6 ITT_dev_tASQ_agecohort
	
	twoway rcap high low treat_het if agecohort ==1, lcolor("125 141 170") yline(0, lstyle(foreground)) || ///
			scatter close treat_het if agecohort ==1,   mlabc("125 141 170")  mlabp(1) m(O) mc("125 141 170") || ///
		   rcap high low treat_het if agecohort ==2, lcolor("46 81 166") || ///
			scatter close treat_het if agecohort ==2,  mlabc("46 81 166")  mlabp(1) m(D) mc("46 81 166") || ///
		   rcap high low treat_het if agecohort ==3, lcolor("26 48 97") || ///
			scatter close treat_het if agecohort ==3,  mlabc("26 48 97")  mlabp(1) m(S) mc("26 48 97")  ///
			xlabel(2 "T1" 5.5 "T2" 9 "T3" 12.5 "T4") xsc(r(0 14.5))  ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("Main effects by age cohort") ///
			legend(label(2 "Age cohort A") lab(4 "Age cohort B") lab(6 "Age cohort C") rows(1) order(2 4 6)) || if  outcome ==  `num' 
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
		
	***********************************************************	
	*      age cohort and child growth        *
	***********************************************************
*global fam1 "hfaz wfaz wflz stunted sevstunted"
	
import excel "${TABLES}child_growth_agecohort_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/child_dev_agecohort.dta", replace

use "${GRAPHS}/Main-impact-paper/child_dev_agecohort.dta" , clear

	replace outcome = "1" if outcome == "hfaz"
	replace outcome = "2" if outcome == "wfaz"
	replace outcome = "3" if outcome == "wflz"
	replace outcome = "4" if outcome == "stunted"
	replace outcome = "5" if outcome == "sevstunted"
	
	destring outcome treatment agecohort high low close, replace
	
	label define treatment 1 "T1" 2 "T2" 3 "T3" 4 "T4"
	label value treatment treatment
	
	label define agecohort 1 "A" 2 "B" 3 "C"
	label value agecohort agecohort
	
	

	*generate variable for graphing
	sort treatment agecohort
	egen rank = group(treatment agecohort)
	bys outcome: egen treat_het = rank(rank)
	
	*adjust the values to make proper gaps in the graph
	foreach tnum in 1 2 3 {
	replace treat_het = (treat_het + `tnum'*0.5) if treatment == `tnum'+1
	}
	
	sort outcome treat_het
	
	
	*Looping for graph
	foreach num of numlist 1/5 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Stunted"
	local tname5 "Severely stunted"
	local fname1 ITT_growth_hfaz_agecohort
	local fname2 ITT_growth_wfaz_agecohort
	local fname3 ITT_growth_wflz_agecohort
	local fname4 ITT_growth_stunted_agecohort
	local fname5 ITT_growth_sevstunted_agecohort
	
	twoway rcap high low treat_het if agecohort ==1, lcolor("125 141 170") yline(0, lstyle(foreground)) || ///
			scatter close treat_het if agecohort ==1,   mlabc("125 141 170")  mlabp(1) m(O) mc("125 141 170") || ///
		   rcap high low treat_het if agecohort ==2, lcolor("46 81 166") || ///
			scatter close treat_het if agecohort ==2,   mlabc("46 81 166")  mlabp(1) m(D) mc("46 81 166") || ///
		   rcap high low treat_het if agecohort ==3, lcolor("26 48 97") || ///
			scatter close treat_het if agecohort ==3,  mlabc("26 48 97")  mlabp(1) m(S) mc("26 48 97")  ///
			xlabel(2 "T1" 5.5 "T2" 9 "T3" 12.5 "T4") xsc(r(0 14.5))  ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("Main effects by age cohort") /// 
			legend(label(2 "Age cohort A") lab(4 "Age cohort B") lab(6 "Age cohort C") rows(1) order(2 4 6)) || if  outcome ==  `num' 
		graph save "${GRAPHS}Main-impact-paper/ITT_graphs/`fname`num''", replace
		}
		
