clear
set more off



* SET GLOBAL MACROS for path to main directories

global d= 8
	if $d==1 {
	* "Karl"
	}
	if $d==2 {
	* "Ann" 
	global Mada "C:\Users\Dr.Desk\Box Sync\Madagascar Mahay Data\"
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
	* 	Maria
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
	
	if $d==7 {
	*  Claire
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
	global TABLES "/Users/Ling/Desktop/MadaTables/" // "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}
	
	global survey_name "Enfant"

cd "$Mada"
clear matrix
capture log close





use "${All_create}infant_All", clear



 
*one duplicate observation
*bys idind year: keep if _n==1


** DEFINITION OF AGE_TARGET clean up age groups in 2016
* age distribution to check (end tail <19 & >38)

tabstat infant_age_months if year==2016 & targeted!=0, by(target) s(min p10 p50 p90 max)
*hist infant_age_months if year==2016 & targeted!=0, xline(20 26 32 38)
ta infant_age_months if year==2016 & targeted!=0


*******************************************************************************
* GLOBAL LIST OF FAMILY OF OUTCOMES;
*******************************************************************************;

 recode bf_bfstart 8=. 9=.
 recode bf_colust  9=.
 recode bf_1sthr 8=. 98=.

  
/*CHECK anemia cutoffs to be moved to the infant create all.do file (cutoff from baseline infant do);
#delimit ;
replace anemia = 1 if ((agemonths <2 & hemoglobin <=10) | 
	(agemonths >= 2 & agemonths < 6 & hemoglobin <= 9.5) |
 	(agemonths >= 6 & agemonths<24 & hemoglobin <= 10.5)) | 
	(agemonths >=24 & agemonths!=. & hemoglobin <= 11.5);
	
replace	anemia_mld = 1 if  hemoglobin < 11 ;
 
 * levels;
g anemia_=0 if hemoglobin>=11 & hemoglobin!=.;
replace anemia_=1 if hemoglobin>=10 & hemoglobin<11 & hemoglobin!=.;
replace anemia_=2 if hemoglobin>=7 & hemoglobin<10 & hemoglobin!=.;
replace anemia_=3 if hemoglobin<7 & hemoglobin!=.;
*/;

* May 27 modification - add in wfaz wfhz, split asq into 5th family;

* final outcomes;
global fam1 "hfaz stunted sevstunted wfaz wflz hemoglobin "
lab var hfaz "height/age zscore"
lab var stunted "stunted"
lab var sevstunted "sev.stunted"
lab var wfaz "weight/age zscore"
lab var wflz "weight/length zscore"
lab var hemoglob "hemoglobin"
* need to create anemia
global fam5 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr  asq_comm_sr  asq_all_sr "
lab var asqScore_gross_sresid "gross motor skills"
lab var asqScore_fine_sresid "fine motor skills"
lab var asqScore_probres_sresid "problem solving skills"
lab var asqScore_social_sresid "socio-emotional dev"
lab var asqScore_comm_sresid "communication skills"
lab var asqAllScore_sresid "ASQ score, stdres"
rename asqScore_gross_sresid asq_gross_sr
rename asqScore_fine_sresid asq_fine_sr
rename asqScore_probres_sresid asq_pres_sr
rename asqScore_social_sresid asq_soc_sr
rename asqScore_comm_sresid asq_comm_sr
rename asqAllScore_sresid asq_all_sr


*intermediate indicators;
		*2: breastefeeding, appetite and food diversity;
		* Removing breastfeeding (Oct 20) br_size bf_still bf_colustrum bf_1sthr bf_1st3days fd29 legumes_24h ;
global fam2 "dairy_24h meat_egg_24h vitA_24h  divers_24h bd_timesate"
lab var br_size "birth size"
lab var bf_still "still breastfeeding"
lab var bf_1sthr "breatfed during first hour"
lab var bf_1st3days "breasfed 1-3rd day"
lab var fd29 "appetite"
lab var legumes_24h "legumes, past 24h"
lab var dairy_24h "dairy, past 24h"
lab var meat_egg_24h "proteins, past 24h"
lab var vitA_24h "vit A, past 24h"
lab var divers_24h "food diversity, past 24h"
lab var bd_timesate "meal frequency, past 24h"


    * morbidity only 2016
global fam3 "morb_2days morb_3days morb_7days" 
global fam4 "learningop playobj totbook home_score2 role_health role_teach depend_health depend_intel ladder_health ladder_intel"


	* variables available only in 2016;
	foreach var of varlist $fam3 asq_gross_sr role_health role_teach depend_health depend_intel ladder_health ladder_intel {
	display "outcome=`var'"
	replace `var'=-99 if `var'==. & year<2016
	}

global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"
	
********************************************************************************
* FOCUS ON THE TARGET CHILD. separate analysis/do file on the younger sibling in 2016 (targeted=0) 
*******************************************************************************;

drop	 if targeted==0 & year==2016

	* panel set up to create baseline outcomes baseline;
	* there is one idmen missing info;
	bys idmen year: keep if _n==1
	tsset idmen year
	

	
	
* baseline vars are BL`var'
foreach num in 1 2 4 5 {
	foreach var of varlist ${fam`num'} {
		g d`var'=L2.`var' if year==2016
		*replace d`var'=L.`var' if year==2015
		egen BL`var' = mean(d`var'), by(idmen)
		drop d`var'
		}
}
	
	
di "now start itt"

* Nov 7 recode region into two groups:
recode region (4=1) (2=0) (3=0) (5=0) , gen(hautep)

*1: year loop (for the moment being use only 2016);


****RELABEL VARIABLES FOR LATEX TABLES;
#delimit ;
*Fam 1 Variables;
	label var hfaz "Height/Age Zscore"; 
	label var stunted "Stunted";
	label var sevstunted "Sev.Stunted";
	label var hemoglobin "Hemoglobin";
	label var wfaz "Weight/Age Zscore"; 
	label var wflz "Weight/Length Zscore"; 
	label var male "Infant Male";
	label var infant_age_months "Infant Age (Mo.)";
*Fam 5 Variables;
	label var asq_gross_sr "Gross Motor";
	label var asq_fine_sr "Fine Motor";
	label var asq_pres_sr "Problem Solving";
	label var asq_soc_sr  "Socio-Emo Dev";
	label var asq_comm_sr  "Comm. Skills";
*Fam 2 Variables;
	label var br_size "Birth Size";
	label var bf_still "Breastfeed";
	label var bf_1sthr "1st hr Breastfed";
	label var bf_1st3days "1st-3rd Day Breastfed";
	label var fd29 "Appetite";
	label var legumes_24h "Legumes, past 24h";
	label var dairy_24h "Dairy, past 24h"; 
	label var meat_egg_24h "Protein, past 24h";
	label var vitA_24h  "Vit. A, past 24h";
	label var divers_24h "Diversity, past 24h";
	label var bd_timesate "Meal Frequency, past 24h";
*Fam 3 Variables;
	label var morb_2days "Morbidity, Past 2 days";
	label var morb_3days "Morbidity, Past 3 days";
	label var morb_7days "Morbidity, Past 7 days";
*Fam 4 Variables;
	label var learningop "Num of Activity w/Adult";
	label var totbook "Book Reading";
	label var home_score2 "Home Play";
	label var role_health "Role: Healthy?";
	label var role_teach "Role: Teach?";
	label var depend_health "Affect Health?";
	label var depend_intel "Affect Intel?";
	label var ladder_health "Health Status";
	label var ladder_intel "Intel Status";


*------------------------------------------------------------------------------------------------------------;
*-------------------------------------ENDLINE RESULTS--------------------------------------------------------;
*------------------------------------------------------------------------------------------------------------;


	*2: family of outcomes loop;
	* for family of outcomes 1 and 4 control for baseline outcomes;
#delimit ;
set more off;
estimates clear;
* cap erase "${TABLES}fam_*_itt_2016.csv";

foreach num of numlist 1 4 5 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;
		*0 unadjusted for controls;
		eststo `var'_Basic: reg `var'  i.treatment  male infant_age_months i.region if year==2016,  robust cl(grappe);
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
		*1 with controls;
		eststo `var'_Add_Covar: reg `var' i.treatment male infant_age_months $controls i.region if year==2016,  robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
		*2 with controls and baseline outcomes;
		eststo `var'_Add_BL: reg `var' male i.treatment infant_age_months i.region $controls BL`var' if year==2016, robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
	};
		estout using "${TABLES}fam_`num'_itt.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) label
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) par) label(CI) ;		
		
		};
#delimit ;
set more off;
estimates clear;



* intermediate outcomes;
foreach num of numlist 2 3 {;

estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;
		*0 unadjusted for controls;
		eststo `var'_Basic: reg `var'  i.treatment  male infant_age_months i.region if year==2016,  robust cl(grappe);
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
		*1 with controls;
		eststo `var'_Add_Covar: reg `var' i.treatment  male infant_age_months $controls i.region if year==2016,  robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
		
	};
		
		estout using "${TABLES}fam_`num'_itt.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;
};

/* pregnant moms at baseline only;
#delimit ;
set more off;
estimates clear;

foreach num of numlist 1 2 {;

estimates clear;
loc ftest ;
loc eqtest ;
foreach var of varlist ${fam`num'} {;
		*0 unadjusted for controls;
		reg `var'  i.treatment  male infant_age_months i.region if year==2016 & age_target==1,  robust cl(grappe);
		est store `var'_Basic;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		loc 1=round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		loc 2=round(r(p),.001);
		*1 with controls;
		reg `var' i.treatment  male infant_age_months $controls i.region if year==2016 & age_target==1,  robust cl(grappe) ;
		est store `var'_Add_Covar;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		loc 3=round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		loc 4=round(r(p),.001);
		
		loc ftest `ftest' `1' `3';
		loc eqtest `eqtest' `2' `4';
		
	};

		display "`ftest'";
		display "`eqtest'";
		
		mata:st_matrix("ftest", strtoreal(tokens(st_local("ftest"))));
		mata:st_matrix("eqtest", strtoreal(tokens(st_local("eqtest"))));
		
		
		outreg2 [*Basic *Add*] using "${TABLES}fam_`num'_itt_preg.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment)
		bdec(3) sdec(3);
		
		* Adding in testparm and test values to new sheet - will manually copy/paste;
		putexcel set "${TABLES}fam_`num'_itt_preg.xls", replace;
		putexcel A1 = "Pval Ftest";
		putexcel A2 = "Pval Equiv Test";
		putexcel B1 = matrix(ftest);
		putexcel B2 = matrix(eqtest);
};

*/
/*		esttab *M* using "${TABLES}fam_`num'_itt_2016_AW.csv",  replace 
		label
		mgroups(, pattern(1 0 0))  mtitles("Basic" "covariates" "covariates&baseline outcomes") nonumbers 
		keep(1.treatment 2.treatment 3.treatment 4.treatment) 
		cells(b(star fmt(3)) se(par)) starlevels(* 0.10 ** 0.05 *** 0.001) 
		;

*/	



* NOTE - STILL WORKING ON THIS!

* CB note Nov 7: If running these should comment out above tables output and global specifications?
*-------------------------------------  FINAL  TABLES -------------------------------------------------------;
*-------------------------------------  ENDLINE RESULTS  ----------------------------------------------------;
*--------------------------------------TABLE 2 ITT INFANT----------------------------------------------------;




* final outcomes

global fam1 "hfaz stunted sevstunted wfaz wflz hemoglobin"
lab var hfaz "height/age zscore"
lab var stunted "stunted"
lab var sevstunted "sev.stunted"
lab var wfaz "weight/age zscore"
lab var wflz "weight/length zscore"

global fam5 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr "


/*lab var asqScore_gross_sresid "gross motor skills";
lab var asqScore_fine_sresid "fine motor skills";
lab var asqScore_probres_sresid "problem solving skills";
lab var asqScore_social_sresid "socio-emotional dev";
lab var asqScore_comm_sresid "communication skills";
lab var asqAllScore_sresid "ASQ score, stdres";
rename asqScore_gross_sresid asq_gross_sr;
rename asqScore_fine_sresid asq_fine_sr;
rename asqScore_probres_sresid asq_pres_sr;
rename asqScore_social_sresid asq_soc_sr;
rename asqScore_comm_sresid asq_comm_sr;
rename asqAllScore_sresid asq_all_sr;
*/;


* only output ITT effects for: haz, stunting, severe stunting, [waz, whz], asq (total and subdomains) 
* ASQ - Gross, fine, PS, SED, CS
* rearranging so that outputs all outcomes in a table basic, covariate, baseline adjusted

* for family of outcomes 1 and 4 control for baseline outcomes;

set more off
estimates clear

* THIS MIGHT BE AN ISSUE. If so: rename to controls1. Or, manually type in these contols instead of '$controls'
* set global controls;

global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"

* BASIC TABLE

foreach num of numlist 1 5 {
estimates clear
loc ftest 
loc eqtest 
loc median 
loc IQR 
foreach var of varlist ${fam`num'} {
		*0 BASIC - Unadjusted for controls;
		eststo `var'_Basic: reg `var'  i.treatment  male infant_age_months i.region if year==2016,  robust cl(grappe)
		qui sum `var' if year==2016 & treatment==0, de 
		estadd scalar median = r(p50) 
		estadd scalar IQR = r(p75)-r(p25) 
		testparm 1.treatment 2.treatment 3.treatment 4.treatment
		estadd scalar ftest= round(r(p),.001)
		test 1.treatment =2.treatment =3.treatment =4.treatment
		estadd scalar eqtest = round(r(p),.001)
		
		}
		estout using "${TABLES}fam_`num'_itt.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
		stats(r2 N median IQR ftest eqtest, fmt(%9.3f %9.0g)) ///
		cells(b(star fmt(%9.3f) label(Coef.)) ///
			  ci(fmt(3) label(CI) par)) 
		}

			
* COVARIATE TABLE		

foreach num of numlist 1 5 {
estimates clear
loc ftest 
loc eqtest 
loc median  
loc IQR  
foreach var of varlist ${fam`num'} {
		*1 COVARIATE - Adjusted with controls;
		eststo `var'_Add_Covar: reg `var' i.treatment male infant_age_months i.region $controls if year==2016,  robust cl(grappe) 
		qui sum `var' if year==2016 & treatment==0
		estadd scalar median = r(p50) 
		estadd scalar IQR = r(p75)-r(p25) 
		testparm 1.treatment 2.treatment 3.treatment 4.treatment
		estadd scalar ftest= round(r(p),.001)
		test 1.treatment =2.treatment =3.treatment =4.treatment
		estadd scalar eqtest = round(r(p),.001)
				}
		estout using "${TABLES}fam_`num'_itt.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
		stats(r2 N median IQR ftest eqtest, fmt(%9.3f %9.0g)) ///
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) 
		}
		
			

* BASELINE-ADJUSTED TABLE

foreach num of numlist 1 5 {
estimates clear
loc ftest 
loc eqtest 
loc median 
loc IQR 
foreach var of varlist ${fam`num'} {
		*2 BASELINE - adjusted with controls and baseline outcomes
		eststo `var'_Add_BL: reg `var' male i.treatment infant_age_months i.region $controls BL`var' if year==2016, robust cl(grappe)
		qui sum `var' if year==2016 & treatment==0
		estadd scalar median = r(p50) 
		estadd scalar IQR = r(p75)-r(p25)  
		testparm 1.treatment 2.treatment 3.treatment 4.treatment
		estadd scalar ftest= round(r(p),.001)
		test 1.treatment =2.treatment =3.treatment =4.treatment
		estadd scalar eqtest = round(r(p),.001)
	}
		estout using "${TABLES}fam_`num'_itt.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment)///
		stats(r2 N median IQR ftest eqtest, fmt(%9.3f %9.0g)) ///
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;	
}

set more off
estimates clear




*-------------------------------------  FINAL  TABLES -------------------------------------------------------;
*-------------------------------------  ENDLINE RESULTS  ----------------------------------------------------;
*-------------------------------TABLE 3 INTERMEDIATE INDICATORS ---------------------------------------------;

* Child: diet diversity, morbidity, mat. Knowledge/hygiene, home
* Household: food security

* for family of outcomes 1 and 4 control for baseline outcomes;
#delimit ;
set more off;
estimates clear;

* THIS MIGHT BE AN ISSUE. If so: rename to 'controls1'. Or, manually type in these contols instead of '$controls'
* set global controls
global controls "i.mother_educ i.wealth_qui i.birth_order mother_age";


* from fam2: divers_24h
* from fam3: morb_2days, morb_3days morb_7days [DO WE WANT ALL 3?]
* from fam4: home_score2 

* nothing from fam1 or fam5 for this table (those are in table 2)

******** FOR FAM 4 ********
* BASIC TABLE;
foreach num of numlist 4 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;
		*0 BASIC - Unadjusted for controls;
		eststo `var'_Basic: reg `var'  i.treatment  male infant_age_months i.region if year==2016,  robust cl(grappe);
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
		
		};
		estout using "${TABLES}fam_`num'_itt.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;
		};
			
* COVARIATE TABLE		;
foreach num of numlist 4 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;
		*1 COVARIATE - Adjusted with controls;
		eststo `var'_Add_Covar: reg `var' i.treatment male infant_age_months i.region $controls if year==2016,  robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
				};
		estout using "${TABLES}fam_`num'_itt.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;
		};
			

* BASELINE-ADJUSTED TABLE;
foreach num of numlist 4 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;	
		*2 BASELINE - adjusted with controls and baseline outcomes;
		eststo `var'_Add_BL: reg `var' male i.treatment infant_age_months i.region $controls BL`var' if year==2016, robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
	};
		estout using "${TABLES}fam_`num'_itt.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;		
};




******** FOR FAM 2, FAM3 ********

* BASIC TABLE;
foreach num of numlist 2 3 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;

foreach var of varlist ${fam`num'} {;
		*0 BASIC - Unadjusted for controls;
		eststo `var'_Basic: reg `var'  i.treatment  male infant_age_months i.region if year==2016,  robust cl(grappe);
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);
};
		estout using "${TABLES}fam_`num'_itt.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;
	};	

	
* COVARIATE TABLE;
foreach num of numlist 2 3 {;
estimates clear;
loc ftest ;
loc eqtest ;
loc means ;
loc sds ;
foreach var of varlist ${fam`num'} {;		
		*1 COVARIATE - Adjusted with controls;
		eststo `var'_Add_Covar: reg `var' i.treatment  male infant_age_months i.region $controls if year==2016,  robust cl(grappe) ;
		qui sum `var' if year==2016 & treatment==0;
		estadd scalar mean = r(mean) ;
		estadd scalar sd = r(sd) ;
		testparm 1.treatment 2.treatment 3.treatment 4.treatment;
		estadd scalar ftest= round(r(p),.001);
		test 1.treatment =2.treatment =3.treatment =4.treatment;
		estadd scalar eqtest = round(r(p),.001);		
	};
		estout using "${TABLES}fam_`num'_itt.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment)
		stats(r2 N mean sd ftest eqtest, fmt(%9.3f %9.0g)) 
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) ;
};

#delimit ;
set more off;
estimates clear;



