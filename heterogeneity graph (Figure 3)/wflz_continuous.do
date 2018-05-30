* Heterogeneity over child age
* Get average marginal effect for plots


clear
set more off

global d= 8


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

* load data
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
global fam1 "hfaz wfaz wflz"

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
	

	gen Treatment = treatment
	replace Treatment = 14 if inlist(treatment,0,1,4)	
	

* model  - cont age
foreach var in $fam1 {
	reg `var' i.Treatment c.infant_age_months i.Treatment#c.infant_age_months male i.region i.mother_educ $controls if year == 2015 | year == 2016, robust cl(grappe)
	testparm i.Treatment#c.infant_age_months
	margins i.Treatment, at(c.infant_age_months = (9 10 11 12 13 14 15 16 17 18 19 20 ///
												 21 22 23 24 25 26 27 28 29 30 31 32 ///
												 33 34 35 36 37 38 39)) saving(`var'_cont, replace)
												 
	use `var'_cont, clear
	export delimited using "${GRAPHS}Main-impact-paper/`var'_cont.csv", quote replace	
												 }

												 
