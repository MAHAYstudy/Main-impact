clear
set more off
version 13


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
	global Mada "C:\Users\AFLAGAH\OneDrive - WBG\Madagascar Mahay Data\"
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
	
	
	
	
	*gl ML_BLcreate "${Mada}midline/Data/Created_Data_Midline/FINAL DATASETS/Merged BL - ML/"
	*gl TABLES "${Mada}midline/Analysis/tables/"
	*gl GRAPHS "${Mada}midline/Analysis/graphs/"

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
	global TABLES "${Mada}analysis/tables/"
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


* OCT 17: MATERNAL AND HOUSEHOLD INFO WAS ALREADY MERGED IN THE FEMALE_ALL CREATE DO FILE. DO NOT REPEAT
/*
********************************************************************************
* MERGE/APPEND baseline and INFANT OUTCOMES
********************************************************************************/
* get hh wealth quintiles, food security and water/sanitation characteristics
use "${BL_create}HH_House_final", clear

keep idmen
sort idmen
tempfile temph
save `temph'

/* get maternal education and hh size
use "${BL_create}HH_People_final", clear
bys idmen: keep if _n==1
keep idmen  hhsize HHhead_educ  m_present hhage*
sort idmen
tempfile temp
save `temp'

* get maternal depression and vocabulary
use "${BL_create}Women_final.dta", clear	
keep idmen depress_tot v_tot v_miss mother_age mother_educ
 
sort idmen
tempfile tempw
save `tempw'
*/
use "${BL_create}infantwASQ_final", clear
cap drop _m
sort idmen
tempfile tempi
save `tempi'

* use household dataset with complete idmen information as the master datafile
use `temph', clear
cap drop _m
sort idmen

* add infant information
merge idmen using `tempi'
ta _m // 1248 only from master, 2490 are merged (these are the children who weren't born yet)
drop _m
sort idmen

/* add maternal education, age
merge idmen using `temp' // 100% merged
ta _m
drop _m
sort idmen

* add maternal vocabulary and depression
merge idmen using `tempw' // 100% merged
ta _m
drop _m
sort idmen
*/

g year=2014
sort idind year
*

ta target, mis
replace target = 1 if missing(target)
ta target // 1248 missings (from the pregnant women at baseline)

tempfile bl 
save `bl'

********************************************************************************
* MERGE/APPEND midline and INFANT OUTCOMES
********************************************************************************
/* get hh wealth quintiles, food security and water/sanitation characteristics
use "${ML_create}HH_House_final", clear

keep idmen wealth_qui foodCopingStrat foodSecurityIHS hwater* hwater_cooking hhandwashing_obs garbage safewater hwall hroof1 hroof2 hfloor hcombust helectr htoilette hwater* ppyn* annum_* anyn_* 

sort idmen
tempfile tempw
save `tempw', replace

* get maternal education and hh size, age
use "${ML_create}HH_People_final", clear
bys idmen: keep if _n==1
keep idmen mother_educ hhsize HHhead_educ mother_age m_present hhage*
sort idmen
tempfile temp
save `temp', replace
*/
use "${ML_create}infantwASQ_final", clear
cap drop _m
sort idmen
tempfile tempi
save `tempi', replace

/* use household dataset with complete idmen information as the master datafile
use `tempw', clear
cap drop _m
sort idmen

* add infant information
merge idmen using `tempi' // 100% merge
ta _m
drop _m
sort idmen
* add maternal education
merge idmen using `temp' // 3549 merged, 1 only from using (mother with no HH)
ta _m
drop _m
sort idmen
*/
g year=2015

	*	Issues with the variables with wrong type (string)
	tostring a204 , replace 
	
	
*	Kodjo: Instead of merging, I append the baseline dataset 
append using `bl'  , force 

tempfile bl_ml 
sort idmen year

save `bl_ml'

/* add distance variables
	* ACDN
use "${ML_create}HHSACNDistance2015", clear
	* site
use "${ML_create}HHSSiteDstance2015", clear
*/


********************************************************************************
* MERGE/APPEND line and INFANT OUTCOMES
********************************************************************************
/* get hh wealth quintiles, food security and water/sanitation characteristics
use "${EL_create}HH_House_final", clear
*g idmen=grappe*100+ hh_code

keep idmen wealth_qui foodCopingStrat foodSecurityIHS hwater* hwater_cooking hhandwashing_obs garbage safewater hwall hroof1 hroof2 hfloor hcombust helectr htoilette hwater* ppyn* annum_* anyn_* 

sort idmen
tempfile temph
save `temph', replace

* get maternal education and hh size [TOO MANY MISSING?]
use "${EL_create}HH_People_final", clear

bys idmen: keep if _n==1
keep idmen mother_educ hhsize HHhead_educ mother_age m_present hhage*
sort idmen
tempfile temp
save `temp', replace

* get maternal depression and vocabulary
use "${EL_create}Women_final.dta", clear
cap drop idmen
g idmen=grappe*100+ hh_code	
keep idmen depress_tot v_tot v_miss ma05 htoilette
sort idmen
tempfile tempw
save `tempw'
*/

use "${EL_create}infantwASQ_final", clear
drop if grappe==.
cap drop _m
sort idmen
tempfile tempi
save `tempi', replace

/* Start with household with complete IDs for master dataset
use `temph', clear
cap drop _m
sort idmen

* add infant information
merge idmen using `tempi' // 4462 merged, 6 only from master (no infant info)
ta _m
drop _m
sort idmen

* add maternal education
merge idmen using `temp' // 4463 merged, 5 from master (only HH) and 1 from using (only maternal ed)
ta _m
drop _m
cap drop _m
sort idmen

* add maternal depression and vocabulary
merge idmen using `tempw' // 1 from master (only HH), 4468 merged
ta _m
drop _m
cap drop _m
sort idmen
*/

g year=2016


/* add distance variables
	* ACDN
use "${ML_create}HHSACNDistance2015", clear
	* site
use "${ML_create}HHSSiteDstance2015", clear
*/

sort idmen 
append using `bl_ml' , force 

ta target, mis
ta year



cap drop group-groups

 sort grappe
* Add in group (control & TX groups along with regions and a few others)
merge m:1 grappe using "${BL_orig}ie_sample w grappe code",	keepusing(group coderg rgion site_id codefar coderg codedistr codecom codesite code_ong code_anim codsite)
	*287 obs without grappe id
	*drop if _m==1
	ta _m
	drop _m
	
	
* impute idind if target==1 & year==2014
	* id from 2016
g idtarget=idind if targeted==1 & year==2016
egen maxid=max(idtarget), by(idmen)
br idmen idind idind_1 idind_2 year targeted idtarget maxid
replace idind=maxid if year==2014 & idind==. & maxid!=.
drop idtarget maxid
	* id from 2015
g idtarget=idind if year==2015
egen maxid=max(idtarget), by(idmen)
replace idind=maxid if year==2014 & idind==. & maxid!=.
drop idtarget maxid

// browse idmen grappe  if target==1 & year==2014
* impute grappe, treatment when missing
replace grappe=int(idmen/100) if grappe==.
egen tm=max(treatment), by(grappe)
replace treatment=tm if treatment==. & tm!=.

* Generating target groups based on exposure time (Program start date: October 1, 2014)
cap drop program_start end_dob clock_dob age_pgst age_target

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
egen end_dob = concat(infant_birth_year infant_birth_month infant_birth_day), punct(-)
replace end_dob = "" if end_dob==".-.-."
replace dob = end_dob if missing(dob)
foreach var in infant_birth_day infant_birth_month {
	destring `var', replace
}
drop end_dob
count if missing(dob) // 1,257 missing values here. 1,248 from baseline, 2 from midline and 7 from endline 
gen clock_dob = date(dob, "YMD")
format clock_dob %tdDD/NN/CCYY

* Calculating age at start of program
replace program_start = . if missing(clock_dob)
gen age_pgst = floor((program_start - clock_dob)/30.4375)

* EG: impute negative age at the start of the program for siblings
g agediff=infant_age_months-agemonths if targeted==0
	replace age_pgst=age_pgst - agediff if targeted==0 

count if missing(age_pgst) // 1,271 missing values

* Impute negative age at start of program for target=1 children at baseline (not born yet) from later rounds
sort idmen year
gen impute_age = age_pgst if targeted!=0 // not siblings
egen minage = min(impute_age), by(idmen) // how does this treat missing values??
replace minage = . if targeted==0 // replacing with missing for siblings, irrelevant
replace age_pgst = minage if year==2014 & missing(age_pgst) & !missing(minage)
br idmen year age_pgst minage targeted target
drop impute_age minage

* Generating age_target based on age at start of program
gen age_target = .
replace age_target = 1 if age_pgst <0 & !missing(age_pgst)
replace age_target = 2 if age_pgst>=0 & age_pgst<6 & !missing(age_pgst)
replace age_target = 3 if age_pgst>6 & !missing(age_pgst)
replace age_target = 1 if missing(age_pgst) & year==2014 & target==1 // 1248 corresponding to the infants not born at baseline

* There are a total of 860 missing values of age_target, because we don't have birthday information for these households
* Using infant_age_months to fill in these missing values
replace age_target = 2 if missing(age_target) & (infant_age_months > 0 & infant_age_months<6) & year==2014
replace age_target = 3 if missing(age_target) & (infant_age_months >= 6 & !missing(infant_age_months)) & year==2014
replace age_target = 2 if missing(age_target) & inrange(infant_age_months,12,17) & year==2015
replace age_target = 3 if missing(age_target) & inrange(infant_age_months,18,30) & year==2015
replace age_target = 1 if missing(age_target) & infant_age_months<24 & year==2016
replace age_target = 2 if missing(age_target) & inrange(infant_age_months,24,29) & year==2016
replace age_target = 3 if missing(age_target) & inrange(infant_age_months,30,42) & year==2016

g sevstunted=(hfaz<=-3) if hfaz!=.
g sevunderwt=(wfaz<=-3) if wfaz!=.
lab var sevstunted "severe stunting HAZ<=-3"
lab var sevunderwt "severe underweight WAZ<=-3"
* region
encode province, g(region)

* IMPORTANT FIX 6/5/15

replace group="Treatment 1" if grappe==99 
replace group="Treatment 4" if grappe==96 
replace group="Treatment 2" if grappe==95 
replace group="Treatment 2" if grappe==100 
cap drop treat1-treat4

* treatment data, encode into a numeric group variable
encode group, gen(groupn)
for num 1/4: gen treatX=(group=="Treatment X") if group!=""
lab var treat1 "T1: intensive counseling"
lab var treat2 "T2: LNS children 6-18"
lab var treat3 "T3: LNS pregnant/lactating and children"
lab var treat4 "T4: nutrition and early stimulation"

g program=(group!="Control") if group!=""

for num 1/4: g int_tX_age2=(group=="Treatment X")*(target==2) 
for num 1/4: g int_tX_age3=(group=="Treatment X")*(target==3) 

* alternative age grouping 
g d=1 if infant_age_months<=26 & year==2016
replace d=2 if infant_age_months>26 & infant_age_months<=32 & year==2016
replace d=3 if infant_age_months>32 & infant_age_months<=38 & year==2016
egen target2=max(d), by(idind)
label var target2 "age categories from endline"


*------------------------------------------------------------
*birth order
recode ma14 0=.
replace ma14=4 if ma14>4 & ma14!=.
rename ma14 birth_order
*delivery where
recode br_csb 9=.
lab var br_csb "=1 if assisted delivery"






*------------------------------------------------------------
* MORBIDITY INDICATORS (2016) 
for var fm_*sameday fm_*days : recode X 99=. 98=.

egen morb_2days=rsum(fm_*2days)
lab var morb_2days "cumulative occurrences of morbidity reported in the past 2 days"
egen morb_3days=rsum(fm_*3days)
lab var morb_3days "cumulative occurrences of morbidity reported in the past 3 days"
egen morb_7days=rsum(fm_*7days)
lab var morb_7days "cumulative occurrences of morbidity reported in the past 7 days"

recode fd14 6=.

*------------------------------------------------------------
** HOME SCORE ** play activities, books and play objects
recode hholdobj 9=.
recode hholdobj 2=0 if year>2014
recode playobj 99=.
recode genbook 25=15

#delimit ;
set more off;
gen home_score=.;
gen home_score2=.;
*gen home_std=.;
forval t=4/6 {;	
	pca learningop leftchild leftalone noadult playobj play3 MOMactiv DADactiv OTHactiv NOactiv if year==201`t';
	predict home_score_`t';
	su home_score_`t';
	
	factor readbook toldstory sangsong tookout spenttime playobj played genbook childbook  if year==201`t';
	predict home_score2_`t';
		
	replace home_score=home_score_`t' if year==201`t';
	replace home_score2=home_score2_`t' if year==201`t';
		
	drop home_score_`t'  home_score2_`t';

	};
lab var home_score "pca learning opport, play objects and activities";
lab var home_score2 "pca activities, play materials and books";


* eg: FROM FEMALE_ALL V2.DO impute grappe, treatment when missing
replace grappe=int(idmen/100) if grappe==.
cap drop tm
egen tm=max(treatment), by(grappe)
replace treatment=tm if treatment==. & tm!=.

* indicator of replacements (fix outliers and baseline);
recode condition 2=1 if year==2016;
replace condition=1 if year==2014;

count if missing(idmen);
if `r(N)'==2 {;
	drop if missing(idmen);
};

#delimit cr
sort idmen year

save "${All_create}infant_All", replace



/*** Checking that target = 0 is consistent with sibling data, using Enfant_idind.dta from Endline
** Added Aug 28, 2017 by Maria Dieci
** Merging in garbage hwater_available_obs hhandwashing_obs htoilette from female_All dataset on 04/11/2018 (Maria Dieci)

sort idmen year
br idmen idind idind_1 idind_2 year // why does it look like we have individual IDs for siblings but not for target children?
STOP 
merge m:1 idmen idind using "${EL_create}Enfant_idind.dta"
*/
use "${All_create}female_All", clear
#delimit ;
keep idmen year wealth_* foodCopingStrat foodSecurityIHS hwater* safewater mother_ed* 
hhsize HHhead_educ mother_age m_present hhage* HHhead_educ mother_voc depress_tot v_tot 
logm_height mother_age mother_height helectr hfloor hwater_drinking htrash_disposal
ac_yesno ac_mpreg1stvisit ac_mpreglastvisit rf_factor pr_factor hygiene_score knowledge_score 
causediar causetyph causethinkid causenowalk causemalnur
mddw_score time_own time_study time_chores time_care time_work time_social time_other 
garbage hwater_available_obs hhandwashing_obs htoilette db13cb*
;

#delimit cr

sort idmen year
cap drop _m
merge   idmen year using "${All_create}infant_All"
ta _m
* target==1 & _m==1 are not present in the infant file
keep if _m==3
drop _m
sort idmen year

** 05/01/2018 MD: code added to create modified hygiene and sanitation variables
* Creating modified variables for hygiene and sanitation
* soap present
gen hsoap_available = 0
replace hsoap_available = 1 if db13cb_none==0 | db13cb_ash_mud_sand==0

* safe water ladder
gen safewater_scale = .
replace safewater_scale=1 if inlist(hwater_drinking,6,7,8,11,12)
replace safewater_scale=2 if inlist(hwater_drinking,4,5)
replace safewater_scale=3 if inlist(hwater_drinking,1,2,3,10) 
label define swater 1 "river,dam,lake,pond" 2 "unprotected well/spring" 3 "improved source"
label values safewater_scale swater

* pit latrine
gen pit_toilet = htoilette==2 // 1 if open pit, 0 otherwise (either no toilet or bucket toilet)

* handwashing station // either observed that there is water available, or handwashing station in home
gen handwash_avail = hwater_available_obs==1
replace handwash_avail = 1 if hhandwashing_obs==1


save "${All_create}infant_All", replace

*** add correct interviewer code Jan 11 2018 by EG

use "${BL_orig}Mada Baseline Mnage et Femme 2014", clear
keep idmen int_code
g year=2014
sort idmen year
tempfile intcode
save `intcode', replace

use "${ML_orig_enf}Mada Midline Mnage et Femme2015", clear
rename *, lower
* need to recover identifiers

* 15duplicates (3 to identify)
drop if a10a==30982
drop if a10a==48211
drop if a10a==55262
drop if a10a==62042
drop if a10a==75211
drop if a10a==79082
drop if a10a==101128
drop if a10a==101151
drop if a10a==114111
drop if a10a==114080
drop if a10a==119994

gen idmen = a01 * 100 + a11 
duplicates tag idmen , generate(dup)
drop if dup>0
keep idmen int_code
g year=2015
sort idmen year

merge idmen year using `intcode'
ta _m
drop _m
sort idmen year
save `intcode', replace

use "${EL_orig_men}Mada Endline Mnage et Femme v10Aug2016_fusion_avec_mom_fin", clear
rename *, lower
keep idmen int_code
g year=2016
sort idmen year
merge idmen year using `intcode'
ta _m
drop _m
sort idmen year
save `intcode', replace


use "${All_create}infant_All", clear
cap drop _m
sort idmen year
merge idmen year using `intcode'
ta _m
drop if _m==2

drop _m
sort idmen year

save "${All_create}infant_All", replace
