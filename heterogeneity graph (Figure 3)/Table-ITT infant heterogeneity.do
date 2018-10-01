clear
set more off
version 13
tempfile fulldata

*LH 9/20/18
*Create Heterogeneity tables with total effects and significance of interaction

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



*Age and child characteristics
cap erase "${TABLES}het_age_child.xml"
cap erase "${TABLES}het_age_child.txt"
foreach var of varlist $fam1 $fam3 {
foreach num of numlist 1/4 {
	reg `var' i.treatment##ageold male i.mother_educ i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.ageold
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.ageold
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_age_child", keep(`num'.treatment#ageold) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, Age and child outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}

/*
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
*/	


*age and household characteristics
cap erase "${TABLES}het_age_hh.xml"
cap erase "${TABLES}het_age_hh.txt"
foreach var of varlist $fam2 home_score_FCI_pca {
foreach num of numlist 1/4 {
	reg `var' i.treatment##ageold male i.mother_educ i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.ageold
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.ageold
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_age_hh", keep(`num'.treatment#ageold) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, Age and household outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}

*Mother education and child characteristics
cap erase "${TABLES}het_momed_child.xml"
cap erase "${TABLES}het_momed_child.txt"
foreach var of varlist $fam1 $fam3 {
foreach num of numlist 1/4 {
	reg `var' i.treatment##edhigh male infant_age_months i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.edhigh
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.edhigh
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_momed_child", keep(`num'.treatment#edhigh) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, maternal educational and infant outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}

*Mother education and household characteristics
cap erase "${TABLES}het_momed_hh.xml"
cap erase "${TABLES}het_momed_hh.txt"
foreach var of varlist $fam2 home_score_FCI_pca {
foreach num of numlist 1/4 {
	reg `var' i.treatment##edhigh male infant_age_months i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.edhigh
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.edhigh
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_momed_hh", keep(`num'.treatment#edhigh) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, maternal educational and household outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low , p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi , p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}

*Gender and child characteristics
cap erase "${TABLES}het_sex_child.xml"
cap erase "${TABLES}het_sex_child.txt"
foreach var of varlist $fam1 $fam3 {
foreach num of numlist 1/4 {
	reg `var' i.treatment##male infant_age_months i.mother_educ i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.male
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.male
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_sex_child", keep(`num'.treatment#male) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, gender and infant outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}

*Gender and household characteristics
cap erase "${TABLES}het_sex_hh.xml"
cap erase "${TABLES}het_sex_hh.txt"
foreach var of varlist $fam2 home_score_FCI_pca {
foreach num of numlist 1/4 {
	reg `var' i.treatment##male infant_age_months i.mother_educ i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.male
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.male
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_sex_hh", keep(`num'.treatment#male) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, gender and household outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low , p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi , p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}


*========================
* Wealth index - low/high
*========================

gen whigh = wlow
recode whigh (0=1) (1=0)
label var whigh "Wealth indicator High and Low"
label define whigh 0 "low" 1 "high"
label value whigh whigh

/*
. ta whigh treatment, col

+-------------------+
| Key               |
|-------------------|
|     frequency     |
| column percentage |
+-------------------+

           |                 type: treatment group
     whigh |        T0         T1         T2         T3         T4 |     Total
-----------+-------------------------------------------------------+----------
         0 |       448        412        420        499        405 |     2,184 
           |     62.40      55.98      57.53      68.73      55.40 |     59.98 
-----------+-------------------------------------------------------+----------
         1 |       270        324        310        227        326 |     1,457 
           |     37.60      44.02      42.47      31.27      44.60 |     40.02 
-----------+-------------------------------------------------------+----------
     Total |       718        736        730        726        731 |     3,641 
           |    100.00     100.00     100.00     100.00     100.00 |    100.00 

*/

*Wealth and child characteristics
cap erase "${TABLES}het_w_child.xml"
cap erase "${TABLES}het_w_child.txt"
foreach var of varlist $fam1 $fam3 {
foreach num of numlist 1/4 {
	reg `var' i.treatment##whigh male infant_age_months i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.whigh
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.whigh
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_w_child", keep(`num'.treatment#whigh) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, wealth and infant outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}


*Wealth and household characteristics
cap erase "${TABLES}het_w_hh.xml"
cap erase "${TABLES}het_w_hh.txt"
foreach var of varlist $fam2 home_score_FCI_pca {
foreach num of numlist 1/4 {
	reg `var' i.treatment##whigh male infant_age_months i.region  $controls ,  robust cl(grappe) 
	lincom `num'.treatment#1.whigh
	scalar p_interaction_T`num' = r(p)
		lincom `num'.treatment 
			scalar `var'_T`num'_low = r(estimate)
			scalar se`var'_T`num'_low = r(se)
			scalar p`var'_T`num'_low = r(p)
		lincom `num'.treatment + `num'.treatment#1.whigh
			scalar `var'_T`num'_hi = r(estimate)
			scalar se`var'_T`num'_hi = r(se)
			scalar p`var'_T`num'_hi = r(p)
			outreg2 using "${TABLES}het_w_hh", keep(`num'.treatment#whigh) stats(coef se pval) nocons excel ///
			title("Heteregeneity Effects, wealth and household outcomes") ///
			addt(outcome, `var', treatment, `num') adds(r_low , `var'_T`num'_low, se, se`var'_T`num'_low, p-val, p`var'_T`num'_low, ///
														r_high , `var'_T`num'_hi, se, se`var'_T`num'_hi, p-val, p`var'_T`num'_hi, ///
														p_interaction, p_interaction_T`num' ) ///
			alpha(0.001, 0.01, 0.05, 0.15) symbol(***, **, *, †)
est clear
}
}
