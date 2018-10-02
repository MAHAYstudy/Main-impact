clear
set more off


* SET GLOBAL MACROS for path to main directories

global d= 8
	if $d==1 {
	* "Karl"
	}
	if $d==2 {
	* "Ann" 
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

	*	Endline folders 
	gl EL_orig_enf "${Mada}endline\original_data\ENFANT\"
	gl EL_orig_men "${Mada}endline\original_data\MENAGE\"
	gl EL_orig_vil "${Mada}endline\original_data\VILLAGE"
	gl EL_create "${Mada}endline\created_data\"
	gl EL_MAJ "${Mada}endline\MAJ\"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data\"
	gl ADMIN_create "${Mada}admin_data\created_data\"		

	
** ANALYSIS FOLDERS
	global TABLES "${Mada}analysis\tables\"
	global GRAPHS "${Mada}analysis\graphs\"
	global All_create "${Mada}analysis\all_create\"


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
	*	Maria
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

	*	Endline folders 
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

	if $d == 7 {
	*	Claire
	global Mada "/Users/claireboone/Dropbox/Madagascar Mahay Data/"
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
	gl EL_orig_vil "${Mada}endline/original_data/VILLAGE"
	gl EL_create "${Mada}endline/created_data/"
	gl EL_MAJ "${Mada}endline/MAJ/"
	
	* Admin data
	gl ADMIN_orig "${Mada}admin_data/"
	gl ADMIN_create "${Mada}admin_data/created_data/"		

	
** ANALYSIS FOLDERS
	global TABLES "/Users/claireboone/Desktop/" // "${Mada}analysis/tables/"
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
	global TABLES  "${Mada}analysis/tables/" // "/Users/Ling/Desktop/MadaTables/" //
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}

	
	
	global survey_name "Enfant"	
	

cd "$Mada"
clear matrix
capture log close


use "${All_create}female_All", clear

** DEFINITION OF AGE_TARGET clean up age groups in 2016
/* age distribution to check (end tail <19 & >38)

tabstat infant_age_months if year==2016 , by(target) s(min p10 p50 p90 max)
*hist infant_age_months if year==2016 & targeted!=0, xline(20 26 32 38)
ta infant_age_months if year==2016 


g at=.
replace at=1 if infant_age_months<27
replace at=2 if infant_age_months>26 & infant_age_months<=32
replace at=3 if infant_age_months>32 & infant_age_months<39 & infant_age_months!=.

tabstat infant_age_months, by(at) s(min p10 p50 p90 max)
replace at=. if (infant_age_months<18 | infant_age_months>38) & year==2016
replace at=. if year<2016
*drop if at==. & year==2016
egen age_target=max(at), by(idind)
lab var age_target "age groups at endline 18-26,27-32,33-38"
drop at
*/


* Generating target groups based on exposure time (Program start date: October 1, 2014)
cap drop age_pgst age_target

* String/datetime variable for program start date
gen program_start = date("10/1/2014", "MDY")
format program_start %tdDD/NN/CCYY

* String/datetime variable for DOB
foreach var in infant_birth_day infant_birth_month {
	tostring `var', replace
}
forvalues i=1/9 {
	replace infant_birth_day = "0`i'" if infant_birth_day=="`i'"
	replace infant_birth_month = "0`i'" if infant_birth_month=="`i'"
}
egen dob = concat(infant_birth_year infant_birth_month infant_birth_day), punct(-)
replace dob = "" if dob==".-.-."
foreach var in infant_birth_day infant_birth_month {
	destring `var', replace
}
count if missing(dob) // 1248 missing values here

gen clock_dob = date(dob, "YMD")
format clock_dob %tdDD/NN/CCYY

* Calculating age at start of program
replace program_start = . if missing(clock_dob)
gen age_pgst = floor((program_start - clock_dob)/30.4375)

* Generating age_target based on age at start of program
gen age_target = .
replace age_target = 1 if age_pgst <0 & !missing(age_pgst)
replace age_target = 2 if age_pgst>=0 & age_pgst<6 & !missing(age_pgst)
replace age_target = 3 if age_pgst>6 & !missing(age_pgst)


* Nov 8 2017: add temporary fam4 to create foodsecure binary variable (1-high food security) for intermediate outcomes table: (checked worked, have same # missings)
recode foodSecurityIHS (1=1) (2=0) (3=0) (4=0) , gen(foodsecure)
lab var foodsecure "foodsecurity binary"

* hygiene practices (need to add sanitation);
g hhwash=(hhandwashing_obs ==1) if hhandwashing_obs !=.

/* replace age_target = 1 if missing(age_pgst) & year==2014 & target==1 // 1248 corresponding to the infants not born at baseline

* Commented this out 10/31 to since we are now using updated "${All_create}female_All" with fewer missings
* There are a total of 860 missing values of age_target, because we don't have birthday information for these households
* Using infant_age_months to fill in these missing values
replace age_target = 2 if missing(age_target) & (infant_age_months > 0 & infant_age_months<6) & year==2014
replace age_target = 3 if missing(age_target) & (infant_age_months >= 6 & !missing(infant_age_months)) & year==2014
replace age_target = 2 if missing(age_target) & inrange(infant_age_months,12,17) & year==2015
replace age_target = 3 if missing(age_target) & inrange(infant_age_months,18,30) & year==2015
replace age_target = 1 if missing(age_target) & infant_age_months<24 & year==2016
replace age_target = 2 if missing(age_target) & inrange(infant_age_months,24,29) & year==2016
replace age_target = 3 if missing(age_target) & inrange(infant_age_months,30,42) & year==2016

* edit 10/31 - vars already in "${All_create}female_All"
* clean up education variables
recode mother_educ 4=3 8=3 
cap drop mothered_miss
g mothered_miss=(mother_educ==.)
recode mother_educ .=9 
*/


*******************************************************************************
* GLOBAL LIST OF FAMILY OF OUTCOMES;
*******************************************************************************;
* EDITED FOR TABLE2 - fams include only outcomes for IIT paper


*pr_factor rf_factor apply only to those who are currently breasfed (bf_or_comp==1). none in 2016;

* food diversity;
egen protein=rsum(fanta4 fanta5 fanta6)

* final outcomes; 
* hygiene and knowledge;
global fam1 "hhwash knowledge_score"
global fam2 "mddw foodsecure"

*Fam 6 : For table 3 , second half (home_score2 in ITT infant)
global fam6 "hygiene_score hygiene_score_pca mealprep knowledge_score mddw_score foodSecurityIHS "
/*
hygiene_score continuous
knowledge_score continuous
mddw_score 0-8
foodSecurityIHS 1-4
*/

/*http://www.fantaproject.org/monitoring-and-evaluation/minimum-dietary-diversity-women-indicator-mddw*/
lab var fanta1 "grains"
lab var fanta2 "pulses"

lab var fanta4 "dairy"
lab var fanta5 "fish/meat/poultry"
lab var fanta6 "eggs"
lab var fanta7 "dark green veg"
lab var fanta8 "vitA fruit/veg"
lab var fanta9 "other veg"
lab var fanta10 "other fruit"
lab var protein "dairy, fish/meat/poultry, eggs"
lab var mddw_score "minimum diet diversity score"





/* 
antenatal?;
replace ac_currentantenatal=ac_currentantenatal_c if ac_currentantenatal==. & ac_currentantenatal_c!=. & year==2016;
replace ac_currentantenatal=ac_currentantenatal_s if ac_currentantenatal==. & ac_currentantenatal_s!=. & year==2016;

	* current and previous pregnancy. estimate only for 2016;
	foreach var of varlist ac_currentantenatal {;
	display "outcome=`var'";
	replace `var'=-99 if `var'==. & year<2016;
	};
*/	
	

	* panel set up to create baseline outcomes baseline;
	* there is no idmen missing info;
	bys idmen year: keep if _n==1
	tsset idmen year

/* baseline vars are BL`var';
foreach num in 1 2 3  {;
	foreach var of varlist ${fam`num'} {;
		g d`var'=L2.`var' if year==2016;
		replace d`var'=L.`var' if year==2015;
		egen BL`var' = mean(d`var'), by(idmen);
		drop d`var';
		};
};
*/
	
di "now start itt"

	
*******************************************************************************
* ITT WITH TREATMENT VILLAGE DUMMIES, CONTROLLING FOR STRATA (REGION)
* TARGET AGE CATEGORIES ARE DIFFICULT AS REPLACEMENT WAS NOT DONE CLEANLY ACCORDING TO AGE GROUPS 
********************************************************************************;



*1: year loop (for the moment being use only 2016);


global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"
*------------------------------------------------------------------------------------------------------------;
*-------------------------------------ENDLINE RESULTS--------------------------------------------------------;
*------------------------------------------------------------------------------------------------------------;
* EDITED FOR FINAL TABLES - covariate specification only
* for table 3 - intermediate indicators

	*2: family of outcomes loop;
foreach num of numlist 1 2 6{
estimates clear
	display "*------------------------family of outcomes `num'---------------------------------"
	
	foreach var of varlist ${fam`num'} {
		display "outcome=`var'   - basic ITT"
			
			
		********************************************************************************
		*  BASIC ITT + COVARIATES 
		* controlling for covariates: i.mother_educ i.wealth_qui mother_age i.birth_order
		* (final covariate decision Nov. 8)
		********************************************************************************;
			eststo n_`var': reg `var'  i.treatment infant_sex infant_age_months i.region $controls ///
   if year==2016, robust cl(grappe) 
			qui sum `var' if e(sample) & program==0, de
			estadd scalar median = r(p50) 
			estadd scalar IQR = r(p75)-r(p25) 
			estadd scalar mean_y=r(mean)
			estadd scalar sd_y=r(sd)
			testparm 1.treatment 2.treatment 3.treatment 4.treatment 
			estadd scalar prog=r(p)
			test 2.treatment =3.treatment
			estadd scalar p_value_2_3=r(p)
			test 1.treatment = 2.treatment
			estadd scalar p_value_1_2=r(p)
			test 1.treatment = 3.treatment
			estadd scalar p_value_1_3=r(p)
			test 1.treatment = 4.treatment
			estadd scalar p_value_1_4=r(p)
			estadd scalar adjr2=e(r2_a)
			
		
		}
		estout using "${TABLES}female_`num'_2016_table3.txt",  replace keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
		stats(adjr2 r2 N median IQR mean_y sd_y prog p_value_2_3 p_value_1_2 p_value_1_3 p_value_1_4, fmt(%9.3f %9.0g)) ///
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par) ) 

	
		/*title("Table `num'.  ITT Effects female outcomes, basic", @title)
		collabels(, none) mlabels(, dep) 
		posthead("")  varwidth(30) modelwidth(10)
		cells(b(star fmt(3)) se(par)) starlevels(* 0.10 ** 0.05 *** 0.001) 
		scalars(mean_y sd_y prog p_eq) r2 legend obslast 		
		addnote("All regressions control for gender/age in months and strata dummies. Standard errors clustered at the village level.") ;*/
		}
		
 
