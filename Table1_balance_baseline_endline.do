clear
set more off
capture log close

/*
*****************************************************************************************
* FILENAME:  	Table1_balance_baseline_endline.do
* PURPOSE:   	Create table 1 information
* Last upeated:    	L. Hsin
* DATE CREATED:   -		
* DATA IN:   	infant_All female_All MAJ_Endline
* UPDATES:   04/28/18


Note from Maria Dieci @ November 2017:
* 	Rerunning Kodjo's code to include infant_ALL.dta and most recent reg specification; modifications are noted in line
*	This code provides a table that checks the balance on characteristics at baseline and endline
******************************************************************************************/

*	Global paths
global d=8
	if $d==1 {
	* "Karl"
	}
	if $d==2 {
	* "Ann" 
	}
	if $d==3 {
	* Emanuela
	global Mada "C:\Users\wb181320\Box Sync\Madagascar Mahay Data\"

	}	 

	if $d==4 {
	* Kara
	global user "/stat"
	global Mada "/Users/$user/Box Sync/Madagascar Mahay Data/"
	}
	
	if $d== 5 {
	global Mada "C:\Users\AFLAGAH\Box Sync\Madagascar Mahay Data\"
	}
	if $d== 6 {
	* Maria
	global Mada "/Users/mdieci/Dropbox/Madagascar Mahay Data/"
	
	*	Baseline folders
	gl BL_orig "${Mada}baseline/raw data2014/latest/"
	gl BL_create "${Mada}baseline/created_data2014/FINAL DATASETS/"
	gl MAJ_orig "${Mada}midline/Data/MAJ/Original/MAJ_Updated June 2016/"
	gl BASELINE "${Mada}baseline/raw data2014/final_fr/" //"/Users/mdieci/Documents/mahay/"
	
	gl who_z "${Mada}WHO igrowup STATA/"
	
	*	Midline folders
	gl MAJ_create "${Mada}midline/Data/MAJ/" //"/Users/mdieci/Documents/mahay/"
	gl ML_orig_enf "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_men "${Mada}midline/Data/data - original/Data with correct ids/"
    gl ML_orig_vil "${Mada}midline/Data/data - original/Data with correct ids/"
	gl ML_create "${Mada}midline/Data/Created_Data_Midline/FINAL DATASETS/"
	
	
	*	En dline folders 
	gl EL_orig_enf "${Mada}endline/original_data/ENFANT/"
	gl EL_orig_men "${Mada}endline/original_data/MENAGE/"
	gl EL_orig_vil "${Mada}endline/original_data/VILLAGE"
	gl EL_create "${Mada}endline/created_data/"
	gl EL_MAJ "${Mada}endline/MAJ/"	 //"/Users/mdieci/Documents/mahay/"
	
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
	global TABLES "/Users/Ling/Desktop/MadaTables/" // "${Mada}analysis/tables/" //
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	}

** 11/8/2017: MD - modified to rely on female_All and infant_All only
use "${All_create}infant_All", clear
cap drop hhsize

* 11/8/2017 change: Merging with female_All data to get female and household characteristics
// 10501 successful merges; 1255 merge = 2 of which 1248 are from baseline (pregnant mothers)

merge m:1 idmen year using "${All_create}female_All", nogen ///
keepusing(wealth_ind wealth_qui ac_yesno ac_mpreg1stvisit ac_mpreglastvisit ///
rf_factor pr_factor hygiene_score knowledge_score causediar causetyph causethinkid causenowalk causemalnur ///
mddw_score time_own time_study time_chores time_care time_work time_social time_other ///
mother_ed* hhage0_1 hhage2_5 hhage6_18 hhage19_60 hhage61_100 HHhead_educ ///
v_tot depress_tot logm_height mother_age hhsize mother_height helectr hfloor hwater_drinking htrash_disposal)


/*  Result                           # of obs.
    -----------------------------------------
    not matched                         1,255
        from master                         0  (merge==1)
        from using                      1,255  (merge==2)

    matched                            10,501  (merge==3)
    -----------------------------------------

*/

* Saving control variables for balance
global controls "male i.mother_educ i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"
global med_controls "male i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"
global male_controls "i.mother_educ i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"


replace group="Treatment 1" if grappe==99 
replace group="Treatment 4" if grappe==96 
replace group="Treatment 2" if grappe==95 
replace group="Treatment 2" if grappe==100 


quietly tab wealth_qui , gen(quintile)
forvalues i = 1/5 {
	label var quintile`i' "Quantile `i' of wealth index"
	}
label var safewater "Hh has a safe drinking water source"

// standardizing wealth index
qui summ wealth_ind
replace wealth_ind = (wealth_ind - r(mean))/r(sd)

// Generating education level variables for head and mother
qui tab HHhead_educ, gen(HHh_ed_)
gen HHh_sec = inlist(HHhead_educ, 2,3)

qui tab mother_educ, gen(mom_ed_)
gen mom_sec = inlist(mother_educ,2,3)

// Generating floor, electricity, trash variables
qui tab helectr, gen(electr_)
qui tab hfloor, gen(floor_)
qui tab htrash_disposal, gen(trash_)

/** Merging in Midline MAJ data

* Dropping condition and status variable from endline, merging in midline values for replacement analysis
cap drop condition
cap drop status

merge m:1 idmen using "${MAJ_create}MAJ_Midpoint2.dta" , keepusing(status condition)
generate dead=(status>1 & status<6) if status!=. 

*/
** Merging in Endline MAJ data
cap drop condition 
cap drop status

merge m:1 idmen using "${EL_MAJ}MAJ_Endline.dta", keepusing(status condition)

/*  Result                           # of obs.
    -----------------------------------------
    not matched                             1
        from master                         1  (_merge==1)
        from using                          0  (_merge==2)

    matched                            11,755  (_merge==3)
    -----------------------------------------
*/

generate dead=(status>1 & status<6) if status!=. 


** Generating variables that indicate whether or not HH was surveyed at midline/endline
generate s_midline = 1 if year==2015
replace s_midline = 0 if s_midline!=1
generate s_endline = 1 if year==2016
replace s_endline = 0 if s_endline!=1


global controls "male i.mother_educ i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"
global med_controls "male i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"
global male_controls "i.mother_educ i.wealth_qui i.birth_order v_tot depress_tot logm_height mother_age"
global vtot_controls "male i.mother_educ i.wealth_qui i.birth_order depress_tot logm_height mother_age"
global border_controls "male i.mother_educ i.wealth_qui v_tot depress_tot logm_height mother_age"


** ----------------- EL BALANCE TABLE 1: BALANCE AFTER ENDLINE REPLACEMENT ------------------- **

*	This is an indicator that has 1 if hh is in the final sample after replacement, including dead people:
*		-	Condition 3 
*		-	Condition 2 where the kid died & in midline ( data is in panel form!!)
*		-	Condition 1 & in midline 
*		-	Condition 2 where the kid died & in endline ( data is in panel form!!)
*		-	Condition 1 & in endline 
	
	*label condition
	label de cond 1 "original target to investigate" 2 "not investigate" 3 "new replacement"
	label values condition cond

generate insample = (condition == 3) | (condition == 1 & s_midline == 0 ) | (condition== 2 & s_midline == 0 & dead == 1) ///
| (condition == 1 & s_endline == 0 ) | (condition== 2 & s_endline == 0 & dead == 1)

preserve 
	keep if insample == 1 & inlist(year,2014,2016) // keeping only baseline and endline data for this comparison
	
	*	Keeping only variables that are almost certain not to have changed 
	
	*	HH charactheristics
	global HHvars HHh_ed_1 HHh_ed_2 HHh_sec hhsize hhage0_1 hhage2_5 hhage6_18 hhage19_60 ///
	wealth_ind electr_1 electr_3 floor_1 floor_2 floor_3
	*	Women char
	global Wvars mom_ed_1 mom_ed_2 mom_sec mother_height mother_age v_tot
	*	Kids char 
	global Ivars male infant_age_months birth_order br_size
	
	global Xvars : di "$Ivars $Wvars $HHvars"
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
		// removing maternal education as a covariate for these outcome vars (collinearities)
		if "`var'"=="mom_sec" | "`var'"=="mom_ed_1" | "`var'"=="mom_ed_2" {
			xi: regress `var' i.treatment infant_age_months i.region $med_controls ,  robust cl(grappe)
		}
		// removing male as a covariate for this outcome var (collinearity)
		else if "`var'"=="male" {
			xi: regress `var' i.treatment infant_age_months i.region $male_controls ,  robust cl(grappe)
		}
		// removing vocab score as covariate for this outcome var (collinearity)
		else if "`var'"=="v_tot" {
			xi: regress `var' i.treatment infant_age_months i.region $vtot_controls ,  robust cl(grappe)
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
		matrix stars[`j',2] = (eff[1,1] < .01) + (eff[1,1] < .015) + (eff[1,1] < .1)
		matrix `var'=n`var',. , m[1,1], c[1,1], m[1,2], c[1,2], m[1,3], c[1,3], m[1,4], c[1,4], ///
					 m[1,5], c[1,5],eff[1,1], . 
		matrix rownames `var'=`var'	
		
		if "`var'" == "`last'" {
		local matrx : di "`matrx' `var' "
			}
		else {
		local matrx : di "`matrx' `var' \ "
			}
		
		}

		matrix balance = `matrx'
					   
	frmttable using "${TABLES}BALANCE TESTS_v3" , addtable pretext("\page") statmat(balance) substat(1)  /// annotate(stars) asymbol(*,**,***) /// The last part is for stars. Need to figure out better hwo to do it
		title("Table 4: Balance test post-replacement Endline") coljust(l; l)  ///
		ctitles("" ,N, C, T1 , T2 , T3 , T4 ,P-val) varlabels basefont(fs10) titlfont(fs11 b) sdec(0, 2, 2, 2 ,2) landscape

restore


** ----------------- EL BALANCE TABLE 2: REPLACED TO REPLACEMENT HOUSEHOLDS AT ENDLINE ------------------- **


*	2-	
generate insample2 = condition == 3 | ( condition == 2 & status == 6) | ( condition == 2 & status == 1) 
// new replacement, OR dead and child moved outside of catchment area, OR dead and original household interviewed

generate replacement = insample2 == 1 & condition == 3 
// generate replacement = 1 if child is listed as being a new replacement

*	Adjusting the construction of hh composition for age

preserve
	use "${BASELINE}MEN_TABLEAU" , clear 
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
	replace hhage`class' = hhage`class'_adj if (condition == 2 & s_midline == 0) | (condition == 2 & s_endline == 0) 
	}
	keep if insample2 == 1 & inlist(year,2014,2016)

	*	Keeping only variables that are almost certain not to have changed 
	*	HH charactheristics
	global HHvars HHh_ed_1 HHh_ed_2 HHh_sec hhsize hhage0_1 hhage2_5 hhage6_18 hhage19_60 ///
	wealth_ind electr_1 electr_3 floor_1 floor_2 floor_3
	*	Women char
	global Wvars mom_ed_1 mom_ed_2 mom_sec mother_height mother_age v_tot
	*	Kids char 
	global Ivars male infant_age_months birth_order br_size
	
	global Xvars : di "$Ivars $Wvars $HHvars"
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
						   
	frmttable using "${TABLES}BALANCE TESTS_v3" , addtable pretext("\page") statmat(balance) substat(1)  /// annotate(stars) asymbol(*,**,***) /// The last part is for stars. Need to figure out better hwo to do it
		title("Table 5: Comparing replacement hh to the old ones Endline ") coljust(l; l)  ///
		ctitles("" ,N, Kids replaced , New kids ,P-val of diff) varlabels basefont(fs10) titlfont(fs11 b) sdec(0, 2, 2, 2 ,2) landscape

restore

*	Analysis of balance after replacement in endline 
*	Take final sample and see how it is balanced on baseline characteristics 

*	Comparing replacement to those replaced 
*	replacement condition in 2015 = 3 | condition in 2016 = 3 
*	replaced all but still present in 2016 
generate rep = (condition == 3 & year == 2015) | (condition == 3 & year == 2016)



