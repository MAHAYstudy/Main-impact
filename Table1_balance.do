/*
********************************************************************************
*	FILENAME: Table1_balance.do
* 	PURPOSE:  Creates balance tables(TABLE1, S1, S2) for the main impact paper
				(1) sample characteristics at baseline, 
				(2) sample characteristics after replacement (using baseline and endline rounds), and 
				(3) comparing replaced and replacement households
*	LAST MODIFIED: 05/01/18 Ling Hsin
*	DATA IN:  infant_All.dta, female_All.dta, MAJ_Midpoint2.dta, MAJ_Endline.dta


EG may 2018

***table 1
use infant_all
keep if year==2014

iebaltab [list of variables], grpvar(treatment) fixed(region) covariates(male infant_age_months) save([pathfortables]balance.xlsx) replace vce(cluster grappe)

*** table S1
use infant_all
drop if targeted==0
keep if year==2016
iebaltab xx

********************************************************************************
*/

clear
clear matrix
set more off
*	Global paths
global d=8

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
	
	
	
	
	*gl ML_BLcreate "${Mada}midline\Data\Created_Data_Midline\FINAL DATASETS\Merged BL - ML\"
	*gl TABLES "${Mada}midline\Analysis\tables\"
	*gl GRAPHS "${Mada}midline\Analysis\graphs\"

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
	global TABLES "${Mada}analysis\tables\"
	global GRAPHS "${Mada}analysis\graphs\"
	global All_create "${Mada}analysis\all_create\"
	}	 

	if $d== 6 {
	* Maria
	global Mada "/Users/mdieci/Dropbox/Madagascar Mahay Data/"
	
	*	Baseline folders
	gl BL_orig "${Mada}baseline/raw data2014/latest/"
	gl BL_create "${Mada}baseline/created_data2014/FINAL DATASETS/"
	gl MAJ_orig "${Mada}midline/Data/MAJ/Original/MAJ_Updated June 2016/"
	gl BASELINE "${Mada}baseline/raw data2014/final_fr/" 
	
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
	global TABLES "/Users/mdieci/Desktop/" //"${Mada}analysis/tables/" //"/Users/mdieci/Desktop/"
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
		
cd "$Mada"
capture log close

****************************************************************************
****using infant_ALL data and merging in household and woman indicators*****
****************************************************************************


use "${All_create}infant_All", clear

/*
drop if idind == .
tsset idind year
g dd=1 if targeted == 1 & year==2016
egen targeted2015=max(dd), by(idind)
replace targeted = F.targeted if targeted2015 == 1 & year == 2015
ta targeted year
drop dd targeted2015
*/

* WE NOW HAVE 375 obs AT MIDLINE WITH THE SAME IDMEN IN 2015 
* THEY ARE THE SIBLINGS BORN BETWEEN BASELINE AND MIDLINE (SEE THAT THE IDIND IS DIFFERENT 
* CAN WE CREATE THE VARIABLE TARGETED (0 FOR SIBING, 1 FOR TARGET CHILD FOR 2015?
* FOR THE MOMENT BEING KEEP ONLY ONE OBSERVATION IN 2015 
bys idmen year: gen num=_n
egen dd=max(num), by(idmen year)
ta dd year
ta target year, m
*brow idmen idind num hh_code mother_name infant_name target infant_birth_*  hfaz if dd>1
drop if target==. & year==2015
drop dd num




** IDENTIFIERS ARE MISSING FOR HOUSEHOLDS OF PREGNANT WOMEN AT BASELINE - TARGET=1. NEED TO 
bys year: inspect region
egen dd=max(region), by(grappe)
replace region=dd if year==2014 & region==.
drop dd





quietly tab wealth_qui , gen(quintile)
forvalues i = 1/5 {
	label var quintile`i' "Quintile `i' of wealth index"
	}
	
label var safewater "Hh has a safe drinking water source"
label var v_tot "Maternal vocabulary (PPVT) raw score"

// standardizing wealth index
qui summ wealth_ind
replace wealth_ind = (wealth_ind - r(mean))/r(sd)

// Generating education level variables for mother
qui tab mother_educ, gen(mom_ed_)
gen mom_unsch=inlist(mother_educ,0)
gen mom_prim=inlist(mother_educ,1)
gen mom_sec = inlist(mother_educ,2,3)

// Generating floor, electricity, trash variables
qui tab helectr, gen(electr_)
qui tab hfloor, gen(floor_)
qui tab htrash_disposal, gen(trash_)





** Storing characteristics to be used in balance tables

*===Panel A: Baseline household characteristics===*
/*
Household size
Number of household members aged: 0-1 years old
                               2-5 years old
                               6-18 years old
                               19-60 years old
Asset index (housing, assets and livestock) quintiles
Household access to safe drinking water source
Mother education:     Did not attend school
                    Primary or less
                    Secondary or higher
Maternal height (cm)
Mother/caregiver age (years)
Maternal vocabulary (PPVT) raw score†
Child birth order†
*/
global HHvars hhsize hhage0_1 hhage2_5 hhage6_18 hhage19_60 quintile* ///
	safewater mom_ed_1 mom_ed_2 mom_sec mother_height mother_age v_tot 

*===Panel B: Child characteristics at baseline===*
/*
Length for age z-score†
Weight for age z-score†
Weight for length z-score†
ASQ-I child development z-score†
*/
global Cvars birth_order hfaz wfaz wflz asqAllScore_sresid 

*===Panel C: : Family characteristics at baseline===*
/*
Maternal knowledge index score
Material diet diversity score index (MDDW)
Learning opportunities: # of activities with any adult† 
Total books, general plus children's books†
Play objects and materials†
Family care indicators (FCI) score †
Child food diversity score: 24-hour recall †
*/
global Fvars knowledge_score mddw_score learningop totbook playobj home_score_FCI_pca divers_24h

/* Saving control variables for balance [update with final list of controls dec 2017)

global controls "male i.mother_educ i.wealth_qui i.birth_order mother_age"
global med_controls 	"male i.wealth_qui i.birth_order mother_age"
global male_controls 	"i.mother_educ i.wealth_qui i.birth_order mother_age"
global border_controls 	"male i.mother_educ i.wealth_qui mother_age"
global mage_controls 	"male i.mother_educ i.wealth_qui i.birth_order"
*/
*Drop variables not used in current analysis
drop fpc01-a204
drop fb02fenc-fd16c_s
drop fpg_demo99-fpc_rawtot
drop fpc19_rc-fps37_rc
drop fl09a_0-fd28a_5
drop fpc19b-q1_5

tab infant_age_months year , m
tab infant_age_months target , m
tab male year , m
tab male target , m
gen impute_infant_age = infant_age_months
replace impute_infant_age = -3 if infant_age_months == .
gen impute_male = male
replace impute_male = 3 if male ==.

preserve

	keep if year == 2014


	** ------- BALANCE TABLE 1: FULL SAMPLE AT BASELINE ------------- **
summ $HHvars if treatment == 0, de
summ $Cvars $Fvars if treatment == 0 & target != 1, de


* the F TEST REQUIRES TO TACKLE THE MISSING VARIABLES (ft) BLOCKED OUT FOR THE MOMENT BEING 
	iebaltab $HHvars , grpvar(treatment) save("${TABLES}balance_baseline_HH.xlsx")  fixed(region) /// 
		    vce(cluster grappe) feqtest pftest form(%9.3fc) replace rowvarlabel

	iebaltab $HHvars , grpvar(treatment) save("${TABLES}balance_baseline_HH_cov.xlsx")  fixed(region) /// 
		    covariates(impute_male impute_infant_age) vce(cluster grappe) feqtest pftest form(%9.3fc) replace rowvarlabel

* balance tables if the child was alive/born at baseline
	drop if target==1
	iebaltab $Cvars $Fvars , grpvar(treatment) save("${TABLES}balance_baseline_CF.xlsx")  fixed(region) /// 
		 covariates(male infant_age_months) vce(cluster grappe) form(%9.3fc) feqtest pftest replace rowvarlabel
	iebaltab $Cvars $Fvars , grpvar(treatment) save("${TABLES}balance_baseline_CFnotest.xlsx")  fixed(region) /// 
		 covariates(male infant_age_months) vce(cluster grappe) form(%9.2fc) replace rowvarlabel

	** ------- BALANCE TABLE S1: FULL SAMPLE AT ENDLINE ------------- **
restore
	

* only keeping target child
drop if targeted==0
	keep if year == 2016
	
summ $HHvars birth_order if treatment == 0, de

	iebaltab $HHvars birth_order, grpvar(treatment) save("${TABLES}balance_endline_HHnotest.xlsx")  fixed(region) /// 
		    covariates(impute_male impute_infant_age) vce(cluster grappe) form(%9.2fc) replace rowvarlabel

	iebaltab $HHvars birth_order, grpvar(treatment) save("${TABLES}balance_endline_HH_test.xlsx")  fixed(region) /// 
		    covariates(impute_male impute_infant_age) vce(cluster grappe) feqtest pftest form(%9.3fc) replace rowvarlabel


	
/*
	
** Starting Loop for Export 
global Xvars : di "$HHvars $Cvars $Fvars"
local Nvars : word count $Xvars
local last : word `Nvars' of $Xvars
matrix stars = J(`Nvars',2,0)
local j = 0

foreach var in $Xvars{ 	
	local j = `j'+1
	mean `var'
	matrix n`var' = e(_N)
	mean `var', over(treatment)
	matrix m = e(b)
	estat sd
	matrix c = r(sd)
	// removing maternal education as a covariate for these outcome vars (collinearities)
	if "`var'"=="mom_sec" | "`var'"=="mom_ed_1" | "`var'"=="mom_ed_2" {
		xi: regress `var' i.treatment infant_age_months i.region $med_controls ,  robust cl(grappe)
	}
	// removing male as a covariate for this outcome var (collinearity)
	else if "`var'"=="male" {
		xi: regress `var' i.treatment infant_age_months i.region $male_controls ,  robust cl(grappe)
	}
	// removing vocab score as covariate for this outcome var (collinearity)
	*else if "`var'"=="v_tot" {
	*	xi: regress `var' i.treatment infant_age_months i.region $vtot_controls ,  robust cl(grappe)
	*}
	// removing mother age as covariate for this outcome var (collinearity)
	else if "`var'"=="mother_age" {
		xi: regress `var' i.treatment infant_age_months i.region $mage_controls ,  robust cl(grappe)
	}
	// removing birth order as covariate for this outcome var (collinearity)
	else if "`var'"=="birth_order" {
		xi: regress `var' i.treatment infant_age_months i.region $border_controls ,  robust cl(grappe)
	}
	// all other outcome vars, all covariates are included
	else {
		xi: regress `var' i.treatment infant_age_months i.region $controls ,  robust cl(grappe)
	}
	testparm _Itreatment* 
	matrix eff = r(p)
	matrix stars[`j',2] = (eff[1,1] < .01) + (eff[1,1] < .05) + (eff[1,1] < .1)
	matrix `var'=n`var',. , m[1,1], c[1,1], m[1,2], c[1,2], m[1,3], c[1,3], m[1,4], c[1,4], ///
			     m[1,5], c[1,5],eff[1,1], . //, v`var'
	matrix rownames `var'=`var'	
	
	if "`var'" == "`last'" {
	local matrx : di "`matrx' `var' "
		}
	else {
	local matrx : di "`matrx' `var' \ "
		}
	
	}

	matrix balance = `matrx'
				   
** ------- EXPORTING TABLE ------------- **
frmttable using "${TABLES}BALANCE TESTS_v4" , replace statmat(balance) substat(1)  /// annotate(stars) asymbol(*,**,***) /// The last part is for stars. Need to figure out better hwo to do it
	title("Table 1: Balance test at baseline") coljust(l; l)  ///
	ctitles("" ,N, C, T1 , T2 , T3 , T4 ,P-val) varlabels basefont(fs10) titlfont(fs11 b) sdec(0, 2, 2, 2 ,2) landscape

restore


** ------- GENERATING VARIABLES TO CONDUCT BALANCE ON REPLACEMENT SAMPLE  ------------- **

tempfile infant_temp
save `infant_temp', replace

use "${MAJ_create}MAJ_Midpoint2.dta", clear
keep idmen status condition

generate dead_ml=(status>1 & status<6) if status!=. 

rename status status_ml
rename condition condition_ml

merge 1:1 idmen using "${EL_MAJ}MAJ_Endline.dta", keepusing(status condition) nogen
generate dead_el=(status>1 & status<6) if status!=. 

rename status status_el
rename condition condition_el

isid idmen // unique ID

* Merge back in with infant_All data
merge 1:m idmen using `infant_temp', nogen

/*  merge 1:m idmen using `infant_temp', nogen
(label region already defined)

    Result                           # of obs.
    -----------------------------------------
    not matched                             1
        from master                         1  
        from using                          0  

    matched                            10,928  
    -----------------------------------------
*/

** Generating variables that indicate whether or not HH was surveyed at midline/endline
generate s_midline = 1 if year==2015
replace s_midline = 0 if s_midline!=1
generate s_endline = 1 if year==2016
replace s_endline = 0 if s_endline!=1

* MIDLINE
generate insample_ml = (condition_ml == 3) | (condition_ml == 1 & midline == 0 ) | (condition_ml== 2 & midline == 0 & dead_ml == 1)

generate insample2_ml = condition_ml == 3 | ( condition_ml == 2 & status_ml == 6) | ( condition_ml == 2 & status_ml == 1) 

generate replacement_ml = insample2_ml == 1 & condition_ml == 3 

* ENDLINE
generate insample_el = (condition_el == 3) | (condition_el == 1 & s_midline == 0 ) | (condition_el== 2 & s_midline == 0 & dead_el == 1) ///
| (condition_el == 1 & s_endline == 0 ) | (condition_el== 2 & s_endline == 0 & dead_el == 1)

generate insample2_el = condition_el == 3 | ( condition_el == 2 & status_el == 6) | ( condition_el == 2 & status_el == 1) 
// new replacement, OR dead and child moved outside of catchment area, OR dead and original household interviewed

generate replacement_el = insample2_el == 1 & condition_el == 3 
// generate replacement = 1 if child is listed as being a new replacement

** Now, creating replacement, insample, and insample2 variables that span the entire time period

gen insample = insample_ml==1 | insample_el==1
gen insample2 = insample2_ml==1 | insample2_el==1
gen replacement = replacement_ml==1 | replacement_el==1

// drop *_ml
// drop *_el

** ------- BALANCE TABLE 2: BALANCE AFTER REPLACEMENT  ------------- **

********************************************************************************
*	Testing whether replacement of kids was done as expected 
*	1- Do the new kids while replacing the old one leads to a balanced sample?
*	2- Is there any systematic difference between the kids replaced and those that replaced them?
********************************************************************************

preserve 

	keep if insample == 1 & inlist(year,2014,2016) // baseline and endline outcomes
	
	*	Keeping only variables that are almost certain not to have changed 

	
	*	HH charactheristics (wealth_ind_14 was changed to wealth_ind)
global HHvars hhsize hhage0_1 hhage2_5 hhage6_18 hhage19_60 wealth_ind safewater

*	Women char -- Time use to be added 
global Wvars mom_ed_1 mom_ed_2 mom_sec mother_height mother_age v_tot ///
knowledge_score mddw_score

*	Kids char -- Learning opportunities 
global Ivars wfaz hfaz wflz learningop totbook playobj home_score2 divers_24h ///
 birth_order asqAllScore_sresid

	
	global Xvars : di "$HHvars $Wvars $Ivars"
	local Nvars : word count $Xvars
	local last : word `Nvars' of $Xvars
	matrix stars = J(`Nvars',2,0)
	local j = 0
	local matrx  ""
	
	foreach var in $Xvars{ 	
		local j = `j'+1
		mean `var' 
		matrix n`var' = e(_N)
		mean `var' , over(treatment)
		matrix m = e(b)
		estat sd
		matrix c = r(sd)
		
		matrix c = r(sd)
	// removing maternal education as a covariate for these outcome vars (collinearities)
	if "`var'"=="mom_sec" | "`var'"=="mom_ed_1" | "`var'"=="mom_ed_2" {
		xi: regress `var' i.treatment infant_age_months i.region $med_controls ,  robust cl(grappe)
	}
	// removing male as a covariate for this outcome var (collinearity)
	else if "`var'"=="male" {
		xi: regress `var' i.treatment infant_age_months i.region $male_controls ,  robust cl(grappe)
	}
	// removing vocab score as covariate for this outcome var (collinearity)
	*else if "`var'"=="v_tot" {
	*	xi: regress `var' i.treatment infant_age_months i.region $vtot_controls ,  robust cl(grappe)
	*}
	// removing mother age as covariate for this outcome var (collinearity)
	else if "`var'"=="mother_age" {
		xi: regress `var' i.treatment infant_age_months i.region $mage_controls ,  robust cl(grappe)
	}
	// removing birth order as covariate for this outcome var (collinearity)
	else if "`var'"=="birth_order" {
		xi: regress `var' i.treatment infant_age_months i.region $border_controls ,  robust cl(grappe)
	}
	// all other outcome vars, all covariates are included
	else {
		xi: regress `var' i.treatment infant_age_months i.region $controls ,  robust cl(grappe)
	}
	
		// all other outcome vars, all covariates are included
		else {
			xi: regress `var' i.treatment infant_age_months i.region $controls ,  robust cl(grappe)
		}
		testparm _Itreatment* 
		matrix eff = r(p)
		matrix stars[`j',2] = (eff[1,1] < .01) + (eff[1,1] < .015) + (eff[1,1] < .1)
		matrix `var'=n`var',. , m[1,1], c[1,1], m[1,2], c[1,2], m[1,3], c[1,3], m[1,4], c[1,4], ///
					 m[1,5], c[1,5],eff[1,1], . //, v`var'
		matrix rownames `var'=`var'	
		
		if "`var'" == "`last'" {
		local matrx : di "`matrx' `var' "
			}
		else {
		local matrx : di "`matrx' `var' \ "
			}
		
		}

		matrix balance = `matrx'

** ------- EXPORTING TABLE ------------- **
	frmttable using "${TABLES}BALANCE TESTS_v4" , addtable pretext("\page") statmat(balance) substat(1)  /// annotate(stars) asymbol(*,**,***) /// The last part is for stars. Need to figure out better hwo to do it
		title("Table 2: Balance test post-replacement") coljust(l; l)  ///
		ctitles("" ,N, C, T1 , T2 , T3 , T4 ,P-val) varlabels basefont(fs10) titlfont(fs11 b) sdec(0, 2, 2, 2 ,2) landscape

restore


** ------- BALANCE TABLE 3: COMPARING REPLACED TO REPLACEMENT HOUSEHOLDS ------------- **

*	Adjusting the construction of hh composition for age 
preserve 
	use "${BL_orig}MEN_TABLEAU" , clear 
	generate age2015 = b08b + 1 
	egen agegrp = cut(age2015) , at(0,2,6,19,61,150)
	quiet tab agegrp , generate(age)
	rename age1 age0_1 
	rename age2 age2_5 
	rename age3 age6_18 
	rename age4 age19_60 
	rename age5 age61_100
	
	foreach class in 0_1 2_5 6_18 19_60 61_100 {
	bysort idmen: egen hhage`class'_adj = sum(age`class')
	}	
	keep if b03 == 1 
	keep idmen hhage*adj
	tempfile comp_adj 
	save `comp_adj' 
restore 

capture drop _merge 
merge m:1 idmen using `comp_adj'

preserve 
	foreach class in 0_1 2_5 6_18 19_60 61_100 {
	replace hhage`class' = hhage`class'_adj if condition == 2 & midline == 0 
	}
	
	
	keep if insample2 == 1 & inlist(year,2014,2016) // baseline and endline samples
	ta year	
	ta year replacement
	ta targeted
	drop if replacement==0 & year==2016
	
	*	treatment status
	global Tvars treat1 treat2 treat3 treat4 program
	
	*	HH charactheristics (wealth_ind_14 was changed to wealth_ind)
	global HHvars hhsize hhage0_1 hhage2_5 hhage6_18 hhage19_60 wealth_ind safewater

	*	Women char -- Time use to be added 
	global Wvars mom_ed_1 mom_ed_2 mom_sec mother_height mother_age v_tot ///
	knowledge_score mddw_score

	*	Kids char -- Learning opportunities 
	global Ivars wfaz hfaz wflz learningop totbook playobj home_score2 divers_24h ///
	infant_age_months birth_order
	
	global Xvars : di "$Tvars $HHvars $Wvars $Ivars "
	local Nvars : word count $Xvars
	local last : word `Nvars' of $Xvars
	matrix stars = J(`Nvars',2,0)
	local j = 0
	local matrx  ""
	
	foreach var in $Xvars{ 	
		local j = `j'+1
		mean `var' 
		matrix n`var' = e(_N)
		mean `var' , over(replacement)
		matrix m = e(b)
		estat sd
		matrix c = r(sd)
		xi: regress `var' replacement i.target i.region , robust cl(grappe)
		testparm replacement
		matrix eff = r(p)
		matrix stars[`j',2] = (eff[1,1] < .01) + (eff[1,1] < .015) + (eff[1,1] < .1)
		matrix `var'=n`var',. , m[1,1], c[1,1], m[1,2], c[1,2] , eff[1,1], . //, v`var'
		matrix rownames `var'=`var'	
		
		if "`var'" == "`last'" {
		local matrx : di "`matrx' `var' "
			}
		else {
		local matrx : di "`matrx' `var' \ "
			}
		
		}

		matrix balance = `matrx'
		
	
	
** ------- EXPORTING TABLE ------------- **
	frmttable using "${TABLES}BALANCE TESTS_v4" , addtable pretext("\page") statmat(balance) substat(1)  /// annotate(stars) asymbol(*,**,***) /// The last part is for stars. Need to figure out better hwo to do it
		title("Table 3: Comparing replacement households to replaced households") coljust(l; l)  ///
		ctitles("" ,N, Kids replaced , New kids ,P-val of diff) varlabels basefont(fs10) titlfont(fs11 b) sdec(0, 2, 2, 2 ,2) landscape

restore
