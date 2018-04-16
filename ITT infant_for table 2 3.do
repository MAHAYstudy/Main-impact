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
 
 ********************************************************************************
* FOCUS ON THE TARGET CHILD. separate analysis/do file on the younger sibling in 2016 (targeted=0) 
*******************************************************************************;

drop	 if targeted==0 & year==2016

	* panel set up to create baseline outcomes baseline;
	* there is one idmen missing info;
	bys idmen year: keep if _n==1
	tsset idmen year
	
rename asqScore_gross_sresid asq_gross_sr
rename asqScore_fine_sresid asq_fine_sr
rename asqScore_probres_sresid asq_pres_sr
rename asqScore_social_sresid asq_soc_sr
rename asqScore_comm_sresid asq_comm_sr
rename asqAllScore_sresid asq_all_sr
	
	
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


* recode region into two groups:
recode region (4=1) (2=0) (3=0) (5=0) , gen(hautep)



*Fam 1 Variables
global fam1 "hfaz stunted sevstunted wfaz wflz hemoglobin"

	label var hfaz "Height/Age Zscore"
	label var stunted "Stunted"
	label var sevstunted "Sev.Stunted"
	label var hemoglobin "Hemoglobin"
	label var wfaz "Weight/Age Zscore" 
	label var wflz "Weight/Length Zscore"
	
	
	label var male "Infant Male"
	label var infant_age_months "Infant Age (Mo.)"

*Fam 5 Variables
global fam5 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr"


	label var asq_gross_sr "Gross Motor"
	label var asq_fine_sr "Fine Motor"
	label var asq_pres_sr "Problem Solving"
	label var asq_soc_sr  "Socio-Emo Dev"
	label var asq_comm_sr  "Comm. Skills"
	
*Controls	
global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"

*-------------------------------------  FINAL  TABLES -------------------------------------------------------
*-------------------------------------  ENDLINE RESULTS  ----------------------------------------------------
*--------------------------------------TABLE 2 ITT INFANT----------------------------------------------------

* BASIC TABLE

foreach num of numlist 1 5 {
estimates clear
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


estimates clear
