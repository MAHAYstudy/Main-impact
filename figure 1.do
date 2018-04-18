clear
set more off
capture log close

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

cd /Users/Ling/Documents/MCH/MAHAY/Figure1/

use "site_gps.dta"
tab year, m
tab year, gen(year_)

save "site_gps_v2.dta", replace

*****Districts*****
shp2dta using mdg_polbnda_adm2_Distritcts_BNGRC_OCHA, data("reg-attr.dta") ///
	coord("reg-coord.dta")	genid(stid) gencentroids(cc) replace 


use "reg-attr.dta", clear

spmap using "reg-coord.dta", id(stid) ocolor(black) osize(vthin)

*****Regions*****
shp2dta using mdg_polbnda_adm1_Regions_BNGRC_OCHA, data("madaregion.dta") ///
	coord("madaregion-coord.dta")	genid(stid) gencentroids(cc) replace 


use "madaregion.dta", clear

spmap using "madaregion-coord.dta", id(stid) ocolor(black) osize(vthin)


spmap using "madaregion-coord.dta", id(stid) ///
fcolor(eggshell) ocolor(cranberry) osize(vthin) /// 
point(data("site_gps.dta") by(year) x(gps_site__longitude) y(gps_site__latitude) fcolor(blue green red) )
