capture log close
clear
set more off
version 13
clear matrix



*********************************
*ITT Midline main impact analysis
*Ling Hsin    09/30/2018
*Updated: 
*********************************

* SET GLOBAL MACROS for path to main directories

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
	global TABLES  "${Mada}analysis/tables/" 
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}
	
	
	cd "$Mada"
	


	
*==================	
*Set up the Infant_all dataset for midline analysis
*==================
use "${All_create}infant_All", clear

	* panel set up to create baseline outcomes baseline;
	* there is one idmen missing info;
	bys idmen idind year: keep if _n==1
	drop if idind == .
	tsset idind year
	
	rename asqScore_gross_sresid asq_gross_sr
	rename asqScore_fine_sresid asq_fine_sr
	rename asqScore_probres_sresid asq_pres_sr
	rename asqScore_social_sresid asq_soc_sr
	rename asqScore_comm_sresid asq_comm_sr
	rename asqAllScore_sresid asq_all_sr
	
	recode bf_bfstart 8=. 9=.
	recode bf_colust  9=.
	recode bf_1sthr 8=. 98=.
	
	* recode region into two groups:
	recode region (4=1) (2=0) (3=0) (5=0) , gen(hautep)
	
	* variables available only in 2016
	foreach var of varlist $fam3 asq_gross_sr role_health role_teach depend_health depend_intel ladder_health ladder_intel {
	display "outcome=`var'"
	replace `var'=-99 if `var'==. & year<2016
	}
	
	*******************************************************************************
	* GLOBAL LIST OF FAMILY OF OUTCOMES;
	*******************************************************************************;
		
	*Fam 1 Variables
	global fam1 "hfaz stunted sevstunted wfaz wflz hemoglobin"
	
	*Fam 5 Variables
	global fam5 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr asq_comm_sr asq_all_sr"
		
	*intermediate indicators: Fam 2 3 4
	*Fam 2 Variables: breastefeeding, appetite and food diversity
	global fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h divers_gt4"
	
		* divers_gt4 // binary
		* divers_gt4 Child 6-12 mo received foods from 4 or more food groups in past 24hr
	
	*Fam 3 Variables: * morbidity only 2016
	global fam3 " morb_7days"
		
	*Fam 4 Variables: Home learning environment
	global fam4 "learningop playobj totbook role_health role_teach depend_health depend_intel ladder_health ladder_intel"
		
	*Fam 6 : For table 3 , second half 
	global fam6 "home_score2 home_score_FCI_sum home_score_FCI_pca"
			
	*Fam 7 : underwt, wasting
	global fam7 "wasting sevwasting underwt sevunderwt"
			
	*Controls	
	global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"	
	
	***************
	
	* baseline vars are BL`var'
	foreach num in 1 2 4 5 6 7{
		foreach var of varlist ${fam`num'} {
			g d`var'=L2.`var' if year==2016
			replace d`var'=L.`var' if year==2015
			egen BL`var' = mean(d`var'), by(idind)
			drop d`var'
			}
	}
	
	bys idind: replace targeted = F.targeted if year == 2015
	
*===============================================================================
	
	 
*ITT for midline
drop if targeted == 0 & year == 2015


	* Main impact tales
		*1 COVARIATE 
		foreach num of numlist 1 2 3 5 6 {
		foreach var of varlist ${fam`num'} {	
		
			eststo `var'_covar: reg `var' i.treatment male infant_age_months i.region $controls if year==2015,  robust cl(grappe) 
			qui sum `var' if year==2015 & treatment==0, de
			estadd scalar mean = r(mean) 
			estadd scalar sd = r(sd)
			testparm 1.treatment 2.treatment 3.treatment 4.treatment
			estadd scalar ftest= round(r(p),.001)
			test 1.treatment =2.treatment =3.treatment =4.treatment
			estadd scalar eqtest = round(r(p),.001)
			test 2.treatment =3.treatment
			estadd scalar p_value_2_3=r(p)
			test 1.treatment = 2.treatment
			estadd scalar p_value_1_2=r(p)
			test 1.treatment = 3.treatment
			estadd scalar p_value_1_3=r(p)
			test 1.treatment = 4.treatment
			estadd scalar p_value_1_4=r(p)
					}
			estout using "${TABLES}ITT_ML/fam`num'_ML.txt", replace keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
			stats(r2 r2_a N mean sd ftest eqtest p_value_2_3 p_value_1_2 p_value_1_3 p_value_1_4, fmt(%9.3fc)) ///
			cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par)) 
			estimates clear 
			}
			
		*2 Covar + BL-adjusted	
		foreach num of numlist 1 2 5 6 {
		foreach var of varlist ${fam`num'} {
			*2 Covariate + Baseline adjusted
			eststo `var'_covar_BL: reg `var' i.treatment male infant_age_months i.region $controls BL`var' if year==2015, robust cl(grappe)
			qui sum `var' if year==2015 & treatment==0, de
			estadd scalar mean = r(mean) 
			estadd scalar sd = r(sd) 
			testparm 1.treatment 2.treatment 3.treatment 4.treatment
			estadd scalar ftest= round(r(p),.001)
			test 1.treatment =2.treatment =3.treatment =4.treatment
			estadd scalar eqtest = round(r(p),.001)
			}
			estout using "${TABLES}ITT_ML/fam`num'_ML.txt", append keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
			stats(r2 r2_a N mean sd ftest eqtest, fmt(%9.3fc)) ///
			cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par))	
			estimates clear
			}
	

	
*==================	
*Set up the female dataset for midline analysis
*==================
use "${All_create}female_All", clear

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

	*******************************************************************************
	* GLOBAL LIST OF FAMILY OF OUTCOMES;
	*******************************************************************************;
	* EDITED FOR TABLE2 - fams include only outcomes for IIT paper
	
	global controls "i.mother_educ i.wealth_qui i.birth_order mother_age"
	
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
		

		
*===============================================================================
	
*===============
*ITT for midline
*===============
		
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
   if year==2015, robust cl(grappe) 
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
		estout using "${TABLES}ITT_ML/Female_fam`num'_ML.txt",  replace keep(1.treatment 2.treatment 3.treatment 4.treatment) ///
		stats(adjr2 r2 N median IQR mean_y sd_y prog p_value_2_3 p_value_1_2 p_value_1_3 p_value_1_4, fmt(%9.3f %9.0g)) ///
		cells(b(star fmt(3) label(Coef.)) ci(fmt(3) label(CI) par) ) 

		}
