clear
set more off
version 13


/* v2: 1) incorporate age_target created from the infant_all v2 file as well as the age_pgst
       
*/
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
	global Mada "C:\Users\AFLAGAH\Box Sync\Madagascar Mahay Data\"
	}

	
	if $d == 6 {
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
	//global TABLES "${Mada}analysis/tables/"
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

********************************************************************************
* BASELINE
********************************************************************************
* get hh wealth quintiles, food security and water/sanitation characteristics
* Maria Dieci: 04/12/2018 added in soap variables
use "${BL_create}HH_House_final", clear
keep idmen wealth_*  foodCopingStrat foodSecurityIHS hwater* hhandwashing_obs garbage safewater anyn* ppyn* annum_* hfloor helect hroof1 htoilette db13cb*

sort idmen
tempfile temph
save `temph'

* get maternal education and hh size
use "${BL_create}HH_People_final", clear
bys idmen: keep if _n==1
keep idmen mother_educ hhsize HHhead_educ mother_age m_present hhage*
sort idmen
tempfile temp
save `temp'

* get maternal height (included in the infant file only at baseline)

use "${BL_create}infantwASQ_final", clear
keep idmen ma04 ma05 ma07* ma08 
sort idmen
tempfile tempw
save `tempw'

*-----------------------------------------

use "${BL_create}Women_final.dta", clear

sort idmen
* add wealth, food sec and wash
merge idmen using `temph'
ta _m
drop if _m==2
drop _m
sort idmen

* add maternal education
merge idmen using `temp'
ta _m
drop if _m==2
drop _m
sort idmen

* add maternal anthropometrics
merge idmen using `tempw'
ta _m
drop if _m==2
drop _m
sort idmen


g year=2014
sort idmen year

tempfile bl 
save `bl'

********************************************************************************
* ADD MIDLINE
********************************************************************************
* get hh wealth quintiles, food security and water/sanitation characteristics
* Maria Dieci 04/12/18 added in soap variables
use "${ML_create}HH_House_final", clear
keep idmen wealth_*  foodCopingStrat foodSecurityIHS hwater* hhandwashing_obs garbage safewater anyn* ppyn* annum_* hfloor helect hroof1 htoilette db13cb*


sort idmen
tempfile temph
save `temph'

* get maternal education and hh size
use "${ML_create}HH_People_final", clear
bys idmen: keep if _n==1
keep idmen mother_educ hhsize HHhead_educ mother_age m_present hhage*
sort idmen
tempfile temp
save `temp'

* get maternal depression and vocabulary
use "${ML_create}Women_final.dta", clear	
sort idmen
drop hhsize // string variable. using correctly coded hhsize variable from HH survey

* add wealth, food sec and wash
merge idmen using `temph'
ta _m
drop if _m==2
drop _m
sort idmen

* add maternal education
merge idmen using `temp'
ta _m
drop if _m==2
drop _m
sort idmen

g year=2015
sort idmen year

*	Kodjo: Instead of merging, I append the baseline dataset 
append using `bl'  , force 

tempfile bl_ml 

save `bl_ml'

********************************************************************************
* ADD ENDLINE
********************************************************************************
* get hh wealth quintiles, food security and water/sanitation characteristics
* Maria Dieci 04/12/2018 added in soap variables
use "${EL_create}HH_House_final", clear
*g idmen=grappe*100+ hh_code
keep idmen wealth_*  foodCopingStrat foodSecurityIHS hwater* hhandwashing_obs garbage safewater anyn* ppyn* annum_* hfloor helect hroof1 htoilette db13cb*

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
replace idmen=grappe*100+ hh_code if missing(idmen) // MD: 8/30/2017 modified this line becasue idmen is brough in in Women.do file; but 5 missing values need to be corrected
sort idmen
* add wealth, food sec and wash
merge idmen using `temph'
ta _m
drop if _m==2
drop _m
sort idmen

* add maternal education
merge idmen using `temp'
ta _m
drop if _m==2
drop _m
sort idmen
g year=2016

sort idmen year

append using `bl_ml' , force 
ta year
cap drop group-groups

 sort grappe
* Add in group (control & TX groups along with regions and a few others)
merge m:1 grappe using "${BL_orig}ie_sample w grappe code",	keepusing(group coderg rgion site_id codefar coderg codedistr codecom codesite code_ong code_anim codsite)
	*287 obs without grappe id
	*drop if _m==1
	ta _m
	drop _m
	
* region
encode province, g(region)

* IMPORTANT FIX 6/5/1

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

g d=1 if infant_age_months<=26 & year==2016
replace d=2 if infant_age_months>26 & infant_age_months<=32 & year==2016
replace d=3 if infant_age_months>32 & infant_age_months<=38 & year==2016
egen target2=max(d), by(idind)
label var target2 "age categories from endline"

* impute grappe, treatment when missing
replace grappe=int(idmen/100) if grappe==.
egen tm=max(treatment), by(grappe)
replace treatment=tm if treatment==. & tm!=.


* indicator of replacements (fix outliers and baseline)
recode condition 2=1 if year==2016
replace condition=1 if year==2014


* clean up education variables
recode mother_educ 4=3 8=1 
g mothered_miss=(mother_educ==.)
recode mother_educ .=9 




recode HHhead_educ .5=0 1.5=1 4=3 5=3


* eg: FROM FEMALE_ALL V2.DO impute grappe, treatment when missing
replace grappe=int(idmen/100) if grappe==.
cap drop tm
egen tm=max(treatment), by(grappe)
replace treatment=tm if treatment==. & tm!=.


* indicator of replacements (fix outliers and baseline)
recode condition 2=1 if year==2016
replace condition=1 if year==2014

* missing values
recode ma05 9999=.
recode ma05 0=.
recode ma05  214.3=.

sort idmen year



*----------------------------------------------------------------------
* USE ALL YEARS TO IMPUTE HEIGHT, AGE AND EDUCATION/VOCABULARY IF MISSING

* take average height to minimize measurement error if measured in both BL and EL 
* (have to keep one obs per housheold/mother

bys idmen year: keep if _n==1
tsset idmen year

** fix inconsistencies in maternal age. 
g dd=1 if mother_age<12
egen flagd=max(dd) , by(idmen)
replace mother_age=. if flagd==1 & dd==1
drop dd

* impute from other years if missing
g mage=mother_age
replace mage=F.mother_age-1 if m_present==0 & F.mother_age!=.
replace mage=L.mother_age+1 if m_present==0 & L.mother_age!=.
replace mage=L.mother_age+1 if mother_age==. & L.mother_age!=.
replace mage=F.mother_age-1 if mother_age==. & F.mother_age!=.
replace mother_age=mage 				if mage!=. &  mother_age==.
drop mage

/*
g meduc=mother_educ

replace meduc=L.mother_educ if mother_educ==. & L.mother_educ!=.
replace meduc=F.mother_educ if mother_educ==. & F.mother_educ!=.
replace meduc=L2.mother_educ if mother_educ==. & L2.mother_educ!=.
replace mother_educ=meduc 				if meduc!=. &  mother_educ==.
drop meduc
*/

g dd=1 if mother_educ==9 & year==2016 // dd marks mothers at EL missing education data
egen missed=max(dd), by(idmen)
ta mother_ed year if missed==1
replace mother_educ=L2.mother_educ if missed==1 & year==2016 & L2.mother_educ != 9 & L2.mother_educ != .
drop dd missed
g dd=1 if mother_educ==9 & year==2016 
egen missed=max(dd), by(idmen)
replace mother_educ=L.mother_educ if missed==1 & year==2016 & L.mother_educ != 9 & L.mother_educ != .
ta mother_educ year
summ mother_ed if year == 2016, d // <10% missing, replace to mean
replace mother_educ=1 if mother_educ==9
drop dd missed

g lagheight=L2.ma05
egen mh=rmean(ma05 lagheight)  if ma05!=. & lagheight!=.
replace mh=ma05 				if ma05!=. & lagheight==.
replace mh=lagheight 			if ma05==. & lagheight!=.
egen mother_height=max(mh), by(idmen)
drop lagheight mh

lab var mother_height "maternal height in cm"
g logm_height=log(mother_height)
lab var logm_height "log maternal height"

replace v_tot=. if vocabulary==0
replace v_tot=. if year==2015 /*not administered*/
g lagvoc=L2.v_tot

egen mv=rmean(v_tot lagvoc)  if v_tot!=. & lagvoc!=. & lagvoc!=0
replace mv=v_tot 				if v_tot!=. & lagvoc==.
replace mv=lagvoc 			if (v_tot==. | v_tot==0) & lagvoc!=. & lagvoc!=0
egen mother_voc=max(mv), by(idmen)
drop mv

*----------------------------------------------------------------------
* housing conditions
codebook hfloor
ta hfloor
recode hfloor 4=3 5=3 8=3

codebook helect
recode helect 6=1 7=1 2=3 8=3

codebook htoilette
recode htoilette 1=2 3=2
*----------------------------------------------------------------------



sort idmen year
cap drop _m

save "${All_create}female_All", replace

* ADD AGE TARGET AND AGE AT PROGRAM START DEFINED IN THE INFANT ALL CREATE DO FILE
use "${All_create}infant_All", clear
sort idmen year
cap drop d
g d=(targeted==0) & year==2016
egen havesibling=max(d), by(idmen)

drop if targeted==0
lab var havesibling "=1 if younger sibling born after baseline"
drop d
replace havesibling=. if year<2016

* 3 duplicate hh at midline. drop
bys idmen year: keep if _n==1 // 3 observations deleted

keep idmen year age_target age_pgst havesibling idind male birth_order
rename idind idind_c
sort idmen year
merge idmen year using "${All_create}female_All"
ta _m

* generating post variable, for age at program start
sort idmen year
gen post = age_pgst<0 // only for the target child
replace post = 1 if target==1 & year!=2014 // all pregnant women at baseline, for year not 2014

* impute idind from the infant file for unborn at baseline
replace idind=idind_c if idind==. & target==1 & year==2014
drop idind_c
* impute gender from the infant file for unborn at baseline 
recode infant_sex 2=0 9=.
egen gender=max(male) , by(idmen)
replace infant_sex=gender if infant_sex==. & year==2014 & gender!=.
drop gender male
sort idmen year

save "${All_create}female_All", replace
