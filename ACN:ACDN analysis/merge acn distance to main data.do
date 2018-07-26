clear
set more off
version 13


**********************
*Merge DISTANCE HOUEHOLDS TO ACN/ACDN AND TO HEALTH CENTERS to main dataset
*Ling Hsin    July 2018
**********************

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
	global TABLES "/Users/Ling/Desktop/MadaTables/" // "${Mada}analysis/tables/" //
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
	
	* gps folder
	gl GPS "${Mada}gps/"
	gl GPS_do "${Mada}gps/do_files/"
	gl GPS_create "${Mada}gps/created_data/"
	}
	




	
* access the acn distance data
use "${GPS_create}idmen_distanceacn", clear
preserve

* access ACN ALL
use "${All_create}/ACN_All_wide.dta", clear

/*
Identifier:
ACN_All.dta - idacn
idmen_distanceacn.dta - id_acn, id_acdn
*/

tempfile acn
save `acn', replace

restore

merge m:1 grappe year using `acn'
drop _merge

sort idmen year

save "${All_create}ACN_All_wide_distance", replace

browse if id_acn != idacn
* some are missing id_acn but have idacn

browse if id_acdn !=Didacn
* the non-matching ones: id_acdn ends in 4, Didacn ends in 2

drop id_acn id_acdn

rename idacn id_acn
rename Didacn id_acdn

save "${All_create}ACN_All_wide_distance", replace

**idmen_distanceacn data does not include 2014 information
