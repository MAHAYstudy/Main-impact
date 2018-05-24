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
	global TABLES "/Users/Ling/Desktop/MadaTables/" // "${Mada}analysis/tables/" //
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

*******************************************************************************
* GLOBAL LIST OF FAMILY OF OUTCOMES;
*******************************************************************************

*Fam 1 Variables
global fam1 "hfaz wfaz wflz asq_all_sr"

	label var hfaz "Height/Age Zscore"
	label var wfaz "Weight/Age Zscore" 
	label var wflz "Weight/Length Zscore"
	
	label var male "Infant Male"
	label var infant_age_months "Infant Age (Mo.)"

	
*Intermediate indicators: Fam 2
*Fam 2 Variables
global fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h home_score2"

	lab var dairy_24h "dairy, past 24h" // binary
	lab var meat_egg_24h "proteins, past 24h" // binary
	lab var vitA_24h "vit A, past 24h" // binary
	lab var divers_24h "food diversity, past 24h" //categories 0-6
	label var home_score2 "Home Play"


*Controls	
global controls "i.wealth_qui i.birth_order mother_age"



	
	
****************************
*****Subgroup variables*****
****************************

*Indicator for older infants
sum infant_age_months if year==2016, de
g ageold=(infant_age_months>=r(p50)) if year==2016
	label var ageold "Age target child >= median"
	
*Indicator for mother higher education level
recode mother_ed (0 1 = 0) (2 3 4 9= 1) , gen(edhigh)
	label var edhigh "Mother education at least secondary"
	
recode wealth_qui (1 2 3= 1) (4 5 = 0), gen(wlow)




di "now start itt"

keep if year == 2016

* COVARIATE TABLE (stratified)


cap erase "${TABLES}graph3age.xml"
cap erase "${TABLES}graph3age.txt"
foreach var of varlist $fam1 {
	reg `var' i.treatment##ageold male i.region i.mother_educ $controls ,  robust cl(grappe)
		lincom 1.treatment 
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment 
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment 
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment 
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 1.treatment + 1.treatment#1.ageold
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment + 2.treatment#1.ageold
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment + 3.treatment#1.ageold
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment + 4.treatment#1.ageold
			outreg2 using "${TABLES}graph3age", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
	est clear
}

cap erase "${TABLES}graph3momed_child.xml"
cap erase "${TABLES}graph3momed_child.txt"
foreach var of varlist $fam1 {
	reg `var' i.treatment##mother_ed male infant_age_months i.region i.mother_educ $controls ,  robust cl(grappe)
		lincom 1.treatment 
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment 
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment 
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment 
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 1.treatment + 1.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment + 2.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment + 3.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment + 4.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_child", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
	est clear
}

cap erase "${TABLES}graph3momed_hh.xml"
cap erase "${TABLES}graph3momed_hh.txt"
foreach var of varlist $fam2 {
	reg `var' i.treatment##mother_ed male infant_age_months i.region i.mother_educ $controls ,  robust cl(grappe)
		lincom 1.treatment
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment 
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment 
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment 
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 1.treatment + 1.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 2.treatment + 2.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 3.treatment + 3.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
		lincom 4.treatment + 4.treatment#1.mother_ed
			outreg2 using "${TABLES}graph3momed_hh", keep(i.treatment) nocons excel adds(high, r(ub),low, r(lb),close, r(estimate))
	est clear
}
	*** high: ub of ci; low: lb of ci; close: beta coef 
	*** output data edited: sheet transposed, pasted last three lines(high low close) to sheet "export"
	*** added corresponding codes for outcome, heterogeneity and treatment
	*** saved as graph3age_modified, graph3momed_child_modified, graph3momed_hh_modified
	**********************************************************************************************************


	************************************************************	
	*For child age het graph with infant characteristics*
	************************************************************
	
import excel "/Users/Ling/Desktop/MadaTables/graph3age_modified.xlsx", sheet("export") firstrow case(lower) clear
save "${GRAPHS}/Main-impact-paper/graph3_age.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3_age.dta" , clear

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
	foreach num in 1 2 3 4 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local fname1 het_hfaz_age
	local fname2 het_wfaz_age
	local fname3 het_wflz_age
	local fname4 het_tasq_age
	
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
	
import excel "/Users/Ling/Desktop/MadaTables/graph3momed_child_modified.xlsx", sheet("export") firstrow case(lower) clear
	
save "${GRAPHS}/Main-impact-paper/graph3momed_child_modified.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3momed_child_modified.dta" , clear

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
	
	
	foreach num in 1 2 3 4 {
	local tname1 "Height for age z-score"
	local tname2 "Weight for age z-score"
	local tname3 "Weight for length z-score"
	local tname4 "Total ASQ"
	local fname1 het_hfaz_momed
	local fname2 het_wfaz_momed
	local fname3 het_wflz_momed
	local fname4 het_tasq_momed
	
	twoway rcap high low treat_het if mom_ed ==0, lcolor(gs2) || ///
			scatter close treat_het if mom_ed ==0, mlabel(mom_ed)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if mom_ed ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if mom_ed ==1, mlabel(mom_ed)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over mother education level") legend(off)  ///
			note("Black denotes mother has only primary education or less, gray denotes mother has at least secondary education", size(vsmall))  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}
		
		
		
	************************************************************	
	*For mother education het graph with household characteristics*
	************************************************************

import excel "/Users/Ling/Desktop/MadaTables/graph3momed_hh_modified.xlsx", sheet("export") firstrow case(lower) clear
	
save "${GRAPHS}/Main-impact-paper/graph3momed_hh_modified.dta", replace

use "${GRAPHS}/Main-impact-paper/graph3momed_hh_modified.dta" , clear

	destring outcome treatment mom_ed high low close, replace
	
	*fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h home_score2"
	
	label define outcome 1 "Dairy intake past 24hr" 2 "Protein intake past 24hr" ///
		3 "Vitamin A rich foods past 24hr" 4 "Dietary diversity score past 24 hr" ///
		5 "HOME score"
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
	
	
		
	*Looping for mother education het graph with infant characteristics
	foreach num in 1 2 3 4 5{
	local tname1 "Dairy intake past 24hr"
	local tname2 "Protein intake past 24hr"
	local tname3 "Vitamin A rich foods past 24hr"
	local tname4 "Dietary diversity score past 24 hr"
	local tname5 "HOME score"
	local fname1 het_dairy_24h_momed
	local fname2 het_meat_egg_24h_momed
	local fname3 het_vitA_24h_momed
	local fname4 het_divers_24h_momed
	local fname5 het_home_score_momed
	
	twoway rcap high low treat_het if mom_ed ==0, lcolor(gs2) || ///
			scatter close treat_het if mom_ed ==0, mlabel(mom_ed)  mlabc(gs1)  mlabp(1) m(D) mc(gs1)|| ///
		   rcap high low treat_het if mom_ed ==1,lcolor(gs6) yline(0, lstyle(foreground)) || ///
			scatter close treat_het if mom_ed ==1, mlabel(mom_ed)  mlabc(gs6) mlabp(5) m(S) mc(gs6) /// 
			xlabel(1.5 "T1" 4"T2" 6.5 "T3" 9"T4") xsc(r(0 10.5)) ///
			xtitle("Treatment group", margin(small) ) ///
			ytitle("β Coef.") ///
			title(`tname`num'', margin(b+2.5)) subtitle("heterogeneity over mother education level") legend(off)  ///
			note("Black denotes mother has only primary education or less, gray denotes mother has at least secondary education", size(vsmall))  || if outcome == `num'
											
		graph save "${GRAPHS}Main-impact-paper/`fname`num''", replace
		}

	
*** ----------------------------------- RUNNING SPECIFICATION WITH COVARIATES ----------------------------------- **;
*INCLUDES figures code: kdensity for subgroup male only;
* GRAPHS: must run 1x without replace option on name(`var'`x',replace) then add back in;
* temp do fam 1 outcomes only;
/* forval num=1/5;


forval num=1/5 {;

display "*------------------------family of outcomes `num'---------------------------------";
		
set more off;
    *2. loop over variables within each family;
	foreach var of varlist ${fam`num'}  {;
	* to test with a couple vars;
	*foreach var of varlist hfaz wfaz wflz  {;
	
		*3. loop over heterogeneity/subgroups;

		* Change on May 27: replace ymo with teen mom;
		* change on May 28: replaced teen with Eteen (at baseline);
		* change Nov: recoded region to hautep (binary);
		* foreach sub in edlow wlow agey male stunt nosw ymo fborn deprd {;
		* re-ordered;
		
		foreach sub in male {;
			reg `var' treatment##`sub' male infant_age_months i.region $controls,  robust cl(grappe); 	
	
			
			foreach x in 1 2 3 4{;
			twoway (kdensity `var' if male==0 & treatment==`x', lcolor(pink)) (kdensity `var' if male==1 & treatment==`x', lcolor(midblue)), name(`var'`x',replace) title("kernal density `var' treatment `x'", size(small)) legend(label(1 "female") label(2 "male")) ytitle("kdensity", size(small)) xtitle("`var'", size(small));
			};
			
			graph combine `var'1 `var'2 `var'3 `var'4, ycom xcom imargin (0 0 0 0) name(`var'_kdensity, replace) saving("${GRAPHS}`var'_kdensity.gph",replace);
					
			
				foreach x in 1 2 3 4 {;
				* loop over treatment to get the test of the difference across high and low;				
				lincom ((`x'.treatment#1.`sub' - 0.treatment#1.`sub') -(`x'.treatment#0.`sub' - 0.treatment#0.`sub'));
				scalar diff`x'_`sub'=r(estimate);
				disp diff`x'_`sub';
				test (`x'.treatment#1.`sub' - 0.treatment#1.`sub') =(`x'.treatment#0.`sub' - 0.treatment#0.`sub');
				scalar p`x'_`sub'=r(p);
				};
				
			
			*margins r.treatment, over(`sub') contrast post;
			

			* Modification June 23: saving as text file, easier import to excel .xlsx file;
			* Modification June 24: Adding in sample endline average;
			* Modification Sep 5: Adding in joint f-test and equality of treatment test;
			*outreg2 using "${TABLES}fam_`num'_inter_controls", se ctitle(`var'_`sub') bdec(3) sdec(3)
			*addstat(T1 difference, diff1_`sub', T1 pvalue, p1_`sub', T2 difference, diff2_`sub', T2 pvalue, p2_`sub',
			*T3 difference, diff3_`sub', T3 pvalue, p3_`sub', T4 difference, diff4_`sub', T4 pvalue, p4_`sub', 
			*Joint ftest, ftest, Equality test, eqtest);
			*added
			/*title("Table `num'.  Heteregeneity Effects infant outcomes, basic", @title)
			collabels(, none) mlabels(, dep) 
			posthead("")  varwidth(30) modelwidth(10)
			cells(b(star fmt(3)) se(par)) starlevels(* 0.10 ** 0.05 *** 0.001) 
			scalars(mean_y sd_y prog p_eq) r2 legend obslast 		
			addnote("All regressions control for gender/age in months and strata dummies. Standard errors clustered at the 	village level.") ; */
		estimates clear;
		};
		*end loop 3 heterogeneity sub;
	}; 
	*end loop 2 var of varlist fam`num';	
}; 
*end loop num 1;
*/;	

forval num=1/5 {;

display "*------------------------family of outcomes `num'---------------------------------";
		
set more off;
    *2. loop over variables within each family;
	foreach var of varlist ${fam`num'}  {;
	* to test with a couple vars;
	*foreach var of varlist hfaz wfaz wflz  {;
	
		*3. loop over heterogeneity/subgroups;

		
		foreach sub in agey {;
			reg `var' treatment##`sub' male infant_age_months i.region $controls,  robust cl(grappe); 	
	
			
			/*foreach x in 1 2 3 4{;
			twoway (lowess `var' infant_age_months if agey==0 & treatment==`x', lcolor(green)) (lowess `var' infant_age_months if agey==1 & treatment==`x', lcolor(purple)), name(`var'`x',replace) title("lowess `var' treatment `x'", size(small)) legend(label(1 "age > median") label(2 "age < median")) ytitle("`var'", size(small)) xtitle("age in months", size(small));
			};
			
			graph combine `var'1 `var'2 `var'3 `var'4, ycom xcom imargin (0 0 0 0) name(`var'_lowess, replace) saving("${GRAPHS}`var'_lowess.gph",replace);
			*/;		
			
				foreach x in 1 2 3 4 {;
				* loop over treatment to get the test of the difference across high and low;				
				lincom ((`x'.treatment#1.`sub' - 0.treatment#1.`sub') -(`x'.treatment#0.`sub' - 0.treatment#0.`sub'));
				scalar diff`x'_`sub'=r(estimate);
				disp diff`x'_`sub';
				test (`x'.treatment#1.`sub' - 0.treatment#1.`sub') =(`x'.treatment#0.`sub' - 0.treatment#0.`sub');
				scalar p`x'_`sub'=r(p);
				};
				
			
			*margins r.treatment, over(`sub') contrast post;
			
			*bayley;
	 /*twoway kdensity bayley_score_sresid  if year==2016 & treatment==4 & pr_admin==1 ||  
			kdensity bayley_score_sresid  if year==2016 & treatment==4 & pr_admin==0 ||  
			kdensity bayley_score_sresid  if year==2016 & treatment!=4 & bayley_score_sresid>-3,
	   
	   legend(label(1 "T4 participants") label(2 "T4 nonparticipants") label(3 "T0-T2-T3") )
	   ytitle("Bayley score std residual",size(mediumsmall)) 
	   title("kernel density bayley score, subsample", size(medium))   
	   saving("${GRAPHS}bayley_2016_subsample.gph", replace);
	   */

			* Modification June 23: saving as text file, easier import to excel .xlsx file;
			* Modification June 24: Adding in sample endline average;
			* Modification Sep 5: Adding in joint f-test and equality of treatment test;
			
			
		outreg2 using "${TABLES}fam_`num'_inter_controls", se ctitle(`var'_`sub') bdec(3) sdec(3)
			addstat(T1 difference, diff1_`sub', T1 pvalue, p1_`sub', T2 difference, diff2_`sub', T2 pvalue, p2_`sub',
			T3 difference, diff3_`sub', T3 pvalue, p3_`sub', T4 difference, diff4_`sub', T4 pvalue, p4_`sub')
			title("Table `num'.  Heteregeneity Effects infant outcomes, basic", @title)
			collabels(, none) mlabels(, dep) 
			posthead("")  varwidth(30) modelwidth(10)
			cells(b(star fmt(3)) se(par)) starlevels(* 0.10 ** 0.05 *** 0.001) 
			scalars(mean_y sd_y prog p_eq) r2 legend obslast 		
			addnote("All regressions control for gender/age in months and strata dummies. Standard errors clustered at the 	village level.") ; */
		estimates clear;
		};
		*end loop 3 heterogeneity sub;
	}; 
	*end loop 2 var of varlist fam`num';	
}; 
*end loop num 1;	

				
/*** ----------------------------------- RUNNING SPECIFICATION WITHOUT COVARIATES ----------------------------------- **;

forval num=1/5 { ;

display "*------------------------family of outcomes `num'---------------------------------";
		
set more off ;
    *2. loop over variables within each family ;
	foreach var of varlist ${fam`num'}  { ;
	
		*3. loop over heterogeneity/subgroups;

		* Change on May 27: replace ymo with teen mom;
		* change on May 28: replaced teen with Eteen (at baseline);
		* change Nov: recoded region to hautep (binary);
		* foreach sub in edlow wlow agey male stunt nosw ymo fborn deprd {;
		* re-ordered;
		// foreach sub in agey edlow wlow nosw Eteen fborn male stunt deprd fdsecure foodcope vil_fdsec_bsl vil_fdcop_bsl hautep {;
		foreach sub in agey edlow Eteen male wlow hautep {;

			reg `var' treatment##`sub' male infant_age_months i.region,  robust cl(grappe); 	
			testparm 1.treatment 2.treatment 3.treatment 4.treatment;
			scalar ftest=round(r(p),.001);
			test 1.treatment =2.treatment =3.treatment =4.treatment;
			scalar eqtest=round(r(p),.001);
				
				foreach x in 1 2 3 4 {;
				* loop over treatment to get the test of the difference across high and low;				
				lincom ((`x'.treatment#1.`sub' - 0.treatment#1.`sub') -(`x'.treatment#0.`sub' - 0.treatment#0.`sub'));
				scalar diff`x'_`sub'=r(estimate);
				disp diff`x'_`sub';
				test (`x'.treatment#1.`sub' - 0.treatment#1.`sub') =(`x'.treatment#0.`sub' - 0.treatment#0.`sub');
				scalar p`x'_`sub'=r(p);
				};
			
			margins r.treatment, over(`sub') contrast post;
			
			* Modification June 23: saving as text file, easier import to excel .xlsx file;
			* Modification June 24: Adding in sample endline average;
			* Modification Sep 5: Adding in joint f-test and equality of treatment test;
			outreg2 using "${TABLES}fam_`num'_inter_basic", se ctitle(`var'_`sub') bdec(3) sdec(3)
			addstat(T1 difference, diff1_`sub', T1 pvalue, p1_`sub', T2 difference, diff2_`sub', T2 pvalue, p2_`sub',
			T3 difference, diff3_`sub', T3 pvalue, p3_`sub', T4 difference, diff4_`sub', T4 pvalue, p4_`sub', 
			Joint ftest, ftest, Equality test, eqtest);
			*added
			/*title("Table `num'.  Heteregeneity Effects infant outcomes, basic", @title)
			collabels(, none) mlabels(, dep) 
			posthead("")  varwidth(30) modelwidth(10)
			cells(b(star fmt(3)) se(par)) starlevels(* 0.10 ** 0.05 *** 0.001) 
			scalars(mean_y sd_y prog p_eq) r2 legend obslast 		
			addnote("All regressions control for gender/age in months and strata dummies. Standard errors clustered at the 	village level.") ; */
		estimates clear;
		};
		*end loop 3 heterogeneity sub;
	}; 
	*end loop 2 var of varlist fam`num';	
}; 
*end loop num 1;
*/ 

/*****************************;
* Combine T2 & T3, T1 and T4;
#delimit ;
gen tx_3 = treatment;
recode tx_3 (4=1) (3=2);

*1.family of outcomes loop;
forval num=1/4 {;

display "*------------------------family of outcomes `num'---------------------------------";
		
set more off;
    *2. loop over variables within each family;
	foreach var of varlist ${fam`num'}  {;
	
		*3. loop over heterogeneity/subgroups;

		foreach sub in edlow wlow agey male stunt nosw ymo fborn deprd {;

			reg `var' tx_3##`sub' male infant_age_months i.region $controls,  robust cl(grappe); 	
			
				foreach x in 1 2 {;
				* loop over tx_3 to get the test of the difference across high and low;				
				lincom ((`x'.tx_3#1.`sub' - 0.tx_3#1.`sub') -(`x'.tx_3#0.`sub' - 0.tx_3#0.`sub'));
				scalar diff`x'_`sub'=r(estimate);
				disp diff`x'_`sub';
				test (`x'.tx_3#1.`sub' - 0.tx_3#1.`sub') =(`x'.tx_3#0.`sub' - 0.tx_3#0.`sub');
				scalar p`x'_`sub'=r(p);
				};

			margins r.tx_3, over(`sub') contrast post;	
			outreg2 using "${TABLES}fam_`num'_inter_tx3.xml", excel se ctitle(`var'_`sub') bdec(3) sdec(3) 
			addstat(T1 difference, diff1_`sub', T1 pvalue, p1_`sub', T2 difference, diff2_`sub', T2 pvalue, p2_`sub');
	
	estimates clear;
	
		};
		*end loop 3 heterogeneity sub;
	}; 
	*end loop 2 var of varlist fam`num';	

}; 
*end loop num 1;					
*/;
