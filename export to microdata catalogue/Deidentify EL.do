* Date Created: Sept 8, 2018 
* Purpose: Deidentifing EL data to be publicly available
* Datasets used/created: menage, identification_information, men_tableau, 
*                        men_bien, men_betails, ben_chocs, 
* 						 acn_bien, acn_calendrier, vil_chocs, vil_infr, men_liquide, 
*                        men_emploi_du_temps, enfant_idmere, acn, village
* updated: 9/10/18 LH

* Change global to change directory 
global d=8
	
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
	if $d == 5 {
		global Mada "C:\Users\AFLAGAH\Box Sync\Madagascar Mahay Data\"
	}
	if $d == 6 {
	* Maria
		global Mada "/Users/mdieci/Box Sync/Madagascar Mahay Data/"
	}
	 
	if $d == 7 {
	* Claire
		global Mada "/Users/claireboone/Dropbox/Madagascar Mahay Data"
	}
	
	if $d == 8 {
	*Ling
	global Mada "/Volumes/Macintosh HD/Users/Ling/Dropbox/Madagascar Mahay Data/"
}

global original "${Mada}endline/original_data/export to microdata catalogue/Original/"
global deidentified "${Mada}endline/original_data/export to microdata catalogue/De-identified/"
gl EL_create "${Mada}endline/created_data/"

*	Menage 
use "${original}menage" , clear 

* make all varnames lowercase (only need to do after deidentifying first time)
rename *, lower

	/*
	*Done one time to get the code. Will be used afterwards without re-doing this! 
	foreach var of varlist a02 a03 a04 a05 {
		encode `var' , gen(`var'_n) label(`var')
		drop `var' 
		rename `var'_n `var'
		}
	preserve 
		keep a01 a02 a03 a04 a05 a07 idmen 
		save "${original}identification_information" , replace 
	restore
	*/
drop a02 a03 a04 a05 a07 a09b a09b_a10e a10b a103 a12 gps*
drop res02* res05* name_sib
/*drop p2 p1a // not in midline dataset*/
isid idmen // unique identifier
merge 1:1 idmen using "${original}identification_information" // 100% match
drop _merge  
label drop a02 a03 a04 a05
order  id a01 a02 a03 a04 a05 a06
/* drop a07 // dropping additional identifiers (location) */
save "${deidentified}menage" , replace 

	*save temp data for adding idmen in data missing idmen
	tempfile idmen
	rename id parentid1
	save `idmen'


*	Menage tableau 
use "${original}men_tableau" , clear 
rename *, lower
drop b02 
merge m:1 parentid1 using `idmen', keepusing(idmen)
drop if _m ==2
drop _m parentid1
save "${deidentified}men_tableau" , replace 

*add idmen to other datasets not needing de_identifying

	*MEN
		*men_bien
		use "${original}men_bien" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_bien" , replace 
		
		*men_betails
		use "${original}men_betails" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_betails" , replace 
		
		*men_chocs
		use "${original}men_chocs" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_chocs" , replace 
		
		*emploi_temps
		use "${original}emploi_temps" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_emploi_temps" , replace 
		
		*men_sante
		use "${original}sante" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_sante" , replace 
		
		*men_assistance_aide
		use "${original}men_bien" , clear 
		rename *, lower
		merge m:1 parentid1 using `idmen', keepusing(idmen)
		drop if _m ==2
		drop _m parentid1
		save "${deidentified}men_assistance_aide" , replace 

*==================



*	Enfant id mere 
use "${original}enfant_idmere.dta" , clear 
rename *, lower
drop a02 a03 a04 a05 a07 a09b a09b_a10e a10b  // additional identification variables dropped
// potential ID questions: fl09ab fl10ab fl11b fl16b fl16 fl15b fl14b fl13b fl12b
*isid idmen // 1 pair of twins
merge m:1 idmen using "${original}identification_information"
/*  
	Result                           # of obs.
    -----------------------------------------
    not matched                             5
        from master                         0  (_merge==1)
        from using                          5  (_merge==2)

    matched                             3,643  (_merge==3)
    -----------------------------------------


*/
keep if _m == 3
drop _merge 
label drop a02 a03 a04 a05
rename indind idind
order idmen id a01 a02 a03 a04 a05 a06
drop a07 // dropping location identifier
save "${deidentified}enfant_idmere.dta" , replace

*===================

*	ACN 
use "${original}acn.dta" , clear 
preserve 
	use "${original}identification_information" , clear 
	duplicates drop a01 , force 
	drop a07 
	tempfile for_acn
	save `for_acn'
restore 
	
rename *, lower
drop a02 a03 a04 a05 a07 a11 a12 a103 
merge m:1 a01 using `for_acn'
keep if _merge == 3 // 100% match
drop _merge 
label drop a02 a03 a04 a05
order  id a01 a02 a03 a04 a05 a06
save "${deidentified}acn.dta" , replace

*temp data for idacn information
*(using ACN_final from EL because acn.dta doesn't have idacn)
	tempfile idacn
	use "${EL_create}ACN_final", clear             
	rename idcapi_acn parentid1
	g idacn=idacn_old
	g idacn2=idacn
	replace idacn2=grappe*10+3 if idacn==. & tacn==1
	replace idacn2=grappe*10+4 if idacn==. & tacn==2
	* same acn/acdn as in baseline
	for num 26 27 29 34 37 38 41 78: replace idacn2=grappe*10+2 if tacn==2 & grappe==X
	* different acdn between 2015 and 2016
	for num 107 112 120 121: replace idacn2=grappe*10+5 if tacn==2 & grappe==X
	
	rename idacn idacn_orig
	rename idacn2 idacn
	save `idacn'
	
	*acn_bien
	use "${deidentified}acn.dta", clear
	rename id parentid1
	merge m:1 parentid1 using `idacn', keepusing(idacn)
		keep if _m ==3
		drop _m parentid1
		save "${deidentified}acn.dta" , replace

*add missing identifiers to acn* dataset
	*acn_bien
	use "${original}bienmeubles.dta", clear
	rename *, lower
	merge m:1 parentid1 using `idacn', keepusing(idacn)
		keep if _m ==3
		drop _m parentid1
		save "${deidentified}acn_bien" , replace 
		
	*acn_bien
	use "${original}acn_calendrier.dta", clear
	rename *, lower
	merge m:1 parentid1 using `idacn', keepusing(idacn)
		keep if _m ==3
		drop _m parentid1
		save "${deidentified}acn_calendrier" , replace 

*====================

*	Village 
use "${original}village.dta" , clear 
rename *, lower
drop vg2a a02v a03v a04v a05v
rename a01v a01
merge 1:1 a01 using `for_acn' // 100% merge
drop _merge 
order id a01 a02 a03 a04 a05 a06
label drop a02 a03 a04 a05
* drop a11vcx vd1_o // dropping specific intervention/NGO names in village ("other, specify")
save "${deidentified}village" , replace  
	*save temp data for adding idmen in data missing idmen
	tempfile ida01
	rename id parentid1
	save `ida01'

*add missing identifiers to acn* dataset
	*vil_chocs
	use "${original}vil_chocs.dta", clear
	rename *, lower
	merge m:1 parentid1 using `ida01', keepusing(a01)
	keep if _m ==3
	drop _m parentid1
	save "${deidentified}vil_chocs" , replace
	
	*vil_infr
	use "${original}vil_infr.dta", clear
	rename *, lower
	merge m:1 parentid1 using `ida01', keepusing(a01)
	keep if _m ==3
	drop _m parentid1
	save "${deidentified}vil_infr" , replace 
	
	*vil_assistance_aide
	use "${original}assistance_aide_village.dta", clear
	rename *, lower
	merge m:1 parentid1 using `ida01', keepusing(a01)
	keep if _m ==3
	drop _m parentid1
	save "${deidentified}vil_assistance_aide" , replace 
	
	*vil_roster_securite_alimentaire
	use "${original}roster_securite_alimentaire.dta", clear
	rename *, lower
	merge m:1 parentid1 using `ida01', keepusing(a01)
	keep if _m ==3
	drop _m parentid1
	save "${deidentified}vil_roster_securite_alimentaire" , replace 
		
