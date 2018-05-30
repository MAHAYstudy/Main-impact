clear
set more off
version 13
tempfile fulldata


* SET GLOBAL MACROS for path to main directories
* : revised the set of controls
* added regional heterogeneity
* deleted education/age imputations



global d= 8
	if $d==1 {
	* "Karl"
	}
	if $d==2 {
	* "Ann" 
	global Mada "C:\Users\Dr.Desk\Box Sync\Madagascar Mahay Data\"
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
	global TABLES "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
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
	global TABLES "${Mada}analysis/tables/"
	global GRAPHS "${Mada}analysis/graphs/"
	global All_create "${Mada}analysis/all_create/"
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
	* 	Deepak (Did not want to rewrite file too much, so will use existing skeleton)
	global Mada "C:\Users\Deepak\Box Sync\Madagascar Mahay Data\"
	}
	if $d == 7 {
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
	global TABLES "/Users/mdieci/Desktop/" // "${Mada}analysis/tables/"
	global GRAPHS "/Users/mdieci/Desktop/HET_Graphs_Infant/" // "${Mada}analysis/graphs/"
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



use "${All_create}infant_All", clear


*******************************************************************************
* GLOBAL LIST OF OUTCOMES 
*******************************************************************************

/*
 1/25/2018: 

*/
#delimit;
*** VARIABLE LABELING ;


* Fams for Table 2 (Main effects - Infant);
global fam1 "hfaz stunted sevstunted wfaz wflz";
global fam5 "asq_gross_sr asq_fine_sr asq_pres_sr asq_soc_sr  asq_comm_sr  asq_all_sr ";


* Fams for Table 3 (Intermediate effects - Infant);
global fam2 "dairy_24h meat_egg_24h vitA_24h divers_24h divers_gt4";
global fam3 "morb_7days";
global fam4 "learningop playobj totbook home_score2";

lab var hfaz "height/age zscore";
lab var stunted "stunted";
lab var sevstunted "sev.stunted";
lab var wasting "wasted";
lab var wfaz "weight/age zscore";
lab var wflz "weight/length zscore";
lab var hemoglob "hemoglobin";
* need to create anemia;
lab var asqScore_gross_sresid "gross motor skills";
lab var asqScore_fine_sresid "fine motor skills";
lab var asqScore_probres_sresid "problem solving skills";
lab var asqScore_social_sresid "socio-emotional dev";
lab var asqScore_comm_sresid "communication skills";
lab var asqAllScore_sresid "ASQ score, stdres";
lab var asqdemo_1pl_sresid "ASQ demo items IRT, stdres";
lab var asqrep_1pl_sresid  "ASQ self-report items IRT, stdres";

rename asqScore_gross_sresid asq_gross_sr;
rename asqScore_fine_sresid asq_fine_sr;
rename asqScore_probres_sresid asq_pres_sr;
rename asqScore_social_sresid asq_soc_sr;
rename asqScore_comm_sresid asq_comm_sr;
rename asqAllScore_sresid asq_all_sr;
rename asqdemo_1pl_sresid asq_demo_sr;

lab var br_size "birth size";
lab var bf_still "still breastfeeding";
lab var bf_1sthr "breatfed during first hour";
lab var bf_1st3days "breasfed 1-3rd day";
lab var fd29 "appetite";
lab var legumes_24h "legumes, past 24h";
lab var dairy_24h "dairy, past 24h";
lab var meat_egg_24h "proteins, past 24h";
lab var vitA_24h "vit A, past 24h";
lab var divers_24h "food diversity, past 24h";

	* variables available only in 2016;
	foreach var of varlist $fam3 asq_gross_sr role_health role_teach depend_health depend_intel ladder_health ladder_intel asqdemo_1pl_sresid asqrep_1pl_sresid {;
	display "outcome=`var'";
	replace `var'=-99 if `var'==. & year<2016;
	};


********************************************************************************
* FOCUS ON THE TARGET CHILD. separate analysis/do file on the younger sibling in 2016 (targeted=0) 
*******************************************************************************;

drop if targeted==0;
	* panel set up to create baseline outcomes baseline;
	bys idmen year: keep if _n==1;
	tsset idmen year;
	
	
	
* baseline vars are BL`var';
foreach num in 1 2 4  {;
	foreach var of varlist ${fam`num'}  {;
		g d`var'=L2.`var' if year==2016;
		*replace d`var'=L.`var' if year==2015;
		egen BL`var' = mean(d`var'), by(idmen);
		drop d`var';
		};
};	

* fix bf variables;
# delimit ;
 recode bf_bfstart 8=. 9=.;
 recode bf_colust  9=.;
 recode bf_1sthr 8=. 98=.;
 
* tsset idind year;
 
 foreach var of varlist br_size  bf_1sthr bf_1st3days {;
	replace `var'=L.`var' 	if year==2016 & `var'==. & L.`var'!=.;
	replace `var'=L2.`var' 	if year==2016 & `var'==. & L2.`var'!=.;
};


* Generating dummy vars for het analysis;
recode mother_educ (0 1 = 1) (2 3 4 9= 0) , gen(edlow);

recode region 2=0 3=0 4=1 5=0, gen(hautep) ;
su infant_age_months if year==2016, de;
g agey=(infant_age_months<r(p50)) if year==2016;

label var edlow "Mother education<primary";
label var agey "Age target child<median";
lab var hautep "haute plateaux vs coast/south";



***********************************************;
** PREPARING DATA FOR STORING COEFFICIENTS;
***********************************************;

** RESTRICTING TO ONLY 2016;
keep if year==2016 ;

#delimit cr

** GENERATING INTERACTIONS OF SUBGROUPS WITH TREATMENT VARS ** 
forvalues i=1/4 {
	gen t`i' = treatment==`i'
}
// 32 subgroup combinations

* 1. maternal ed
gen t1xedlo = t1*edlow
gen t1xedhi = t1*(1-edlow)
gen t2xedlo = t2*edlow
gen t2xedhi = t2*(1-edlow)
gen t3xedlo = t3*edlow
gen t3xedhi = t3*(1-edlow)
gen t4xedlo = t4*edlow
gen t4xedhi = t4*(1-edlow)

gen dxedlo = program*edlow
gen dxedhi = program*(1-edlow)

* 2. young
gen t1xagey = t1*agey
gen t1xnoagey = t1*(1-agey)
gen t2xagey = t2*agey
gen t2xnoagey = t2*(1-agey)
gen t3xagey = t3*agey
gen t3xnoagey = t3*(1-agey)
gen t4xagey = t4*agey
gen t4xnoagey = t4*(1-agey)

gen dxagey = program*agey
gen dxnoagey = program*(1-agey)

* 3. south/south east
gen t1xhautep = t1*hautep
gen t1xcoast = t1*(1-hautep)
gen t2xhautep = t2*hautep
gen t2xcoast = t2*(1-hautep)
gen t3xhautep = t3*hautep
gen t3xcoast = t3*(1-hautep)
gen t4xhautep = t4*hautep
gen t4xcoast = t4*(1-hautep)

gen dxhautep = program*hautep
gen dxcoast = program*(1-hautep)

* 4. male
gen t1xmale = t1*male
gen t1xnomale = t1*(1-male)
gen t2xmale = t2*male
gen t2xnomale = t2*(1-male)
gen t3xmale = t3*male
gen t3xnomale = t3*(1-male)
gen t4xmale = t4*male
gen t4xnomale = t4*(1-male)

gen dxmale = program*male
gen dxnomale = program*(1-male)

** Generating variables to help with graph exporting
cap drop overvar overvard graphtreat graphpgm
* Overvar
	* number of locals to fill 
gen overvar = _n in 1/9 // each treatment separately
gen overvard = _n in 1/13 // program only
* Graphtreat
	* generates values of 0 - 8, loops through all elements in overvar (represents different treatment status*subgroup)
gen graphtreat = cond(mod(overvar,9)!=0,mod(overvar,9)-1,8) in 1/9 // each treatment separately
gen graphpgm = cond(mod(overvard,3)!=0,mod(overvard,3)-1,2) in 1/12 // program only

* Impact, upper, lower - empty but will store OLS estimate and upper/lower CI for each outcome
* a) treatment dummies
gen impact = .
gen upper = .
gen lower = .

forvalues i=1/4 {
gen t`i'xtrait = .
gen t`i'xnotrait = .

}

* b) program dummy
gen impactd = .
gen upperd = .
gen lowerd = .
gen dxtrait=.
gen dxnotrait=.


************************************
** STORING OUTCOMES/COVARIATES BY SUBGROUP
************************************
loc outcomevars hfaz asq_all_sr meat_egg_24h home_score2


loc controls i.wealth_qui i.birth_order mother_age male  infant_age_months i.region i.mother_educ

#delimit;

*** ----------------------------------- RUNNING SPECIFICATION WITH COVARIATES ----------------------------------- **;

** Storing correct outcome variables for each subgroup;
forvalues i=1/4 {;
	if "`i'"=="1" {;
		loc trait edlo;
		loc notrait edhi;
		*loc controls `momcontrols';
		loc label "Low maternal ed";
	};
	else if "`i'"=="2" {;
		loc trait agey;
		loc notrait noagey;
		*loc controls `youngcontrols';
		loc label "Young child";
	};
	else if "`i'"=="3" {;
		loc trait coast;
		loc notrait hautep;
		*loc controls `regcontrols';
		loc label "Coastal region";
	};
	else if "`i'"=="4" {;
		loc trait male;
		loc notrait nomale;
		*loc controls `malecontrols';
		loc label "Male child";
	};
	
loc graphs ;
foreach var in `outcomevars' {;
		
set more off;
		
		*1. Set up with each subgroup;
			* replacing treatment*subgroup interactions with correct ones;
			replace t1xtrait = t1x`trait';
			replace t1xnotrait = t1x`notrait';
			replace t2xtrait = t2x`trait';
			replace t2xnotrait = t2x`notrait';
			replace t3xtrait = t3x`trait';
			replace t3xnotrait = t3x`notrait';
			replace t4xtrait = t4x`trait';
			replace t4xnotrait = t4x`notrait';

			reg `var' t1xnotrait t1xtrait t2xnotrait t2xtrait t3xnotrait t3xtrait t4xnotrait t4xtrait
			`controls',  robust cl(grappe); 
			mat V = r(table);
			mat list V;
			
			* storing output in locals;
			local _ols_t1_no	    = string(V[1,1],"%04.3f");
			local _upper_t1_no   	= string(V[5,1],"%04.3f");
			local _lower_t1_no   	= string(V[6,1],"%04.3f");
			local _ols_t1_yes	 	= string(V[1,2],"%04.3f");
			local _upper_t1_yes   	= string(V[5,2],"%04.3f");
			local _lower_t1_yes   	= string(V[6,2],"%04.3f");
			local _ols_t2_no	    = string(V[1,3],"%04.3f");
			local _upper_t2_no   	= string(V[5,3],"%04.3f");
			local _lower_t2_no   	= string(V[6,3],"%04.3f");
			local _ols_t2_yes	 	= string(V[1,4],"%04.3f");
			local _upper_t2_yes   = string(V[5,4],"%04.3f");
			local _lower_t2_yes   = string(V[6,4],"%04.3f");
			local _ols_t3_no	    = string(V[1,5],"%04.3f");
			local _upper_t3_no   	= string(V[5,5],"%04.3f");
			local _lower_t3_no   	= string(V[6,5],"%04.3f");
			local _ols_t3_yes	 	= string(V[1,6],"%04.3f");
			local _upper_t3_yes   	= string(V[5,6],"%04.3f");
			local _lower_t3_yes   	= string(V[6,6],"%04.3f");
			local _ols_t4_no	    = string(V[1,7],"%04.3f");
			local _upper_t4_no   	= string(V[5,7],"%04.3f");
			local _lower_t4_no   	= string(V[6,7],"%04.3f");
			local _ols_t4_yes	 	= string(V[1,8],"%04.3f");
			local _upper_t4_yes   = string(V[5,8],"%04.3f");
			local _lower_t4_yes   = string(V[6,8],"%04.3f");
			
			matrix drop V;
			
			* storing output for export;
			replace impact = `_ols_t1_no' in 2;
			replace upper = `_upper_t1_no' in 2;
			replace lower = `_lower_t1_no' in 2;
			replace impact = `_ols_t1_yes' in 3;
			replace upper = `_upper_t1_yes' in 3;
			replace lower = `_lower_t1_yes' in 3;
			replace impact = `_ols_t2_no' in 4;
			replace upper = `_upper_t2_no' in 4;
			replace lower = `_lower_t2_no' in 4;
			replace impact = `_ols_t2_yes' in 5;
			replace upper = `_upper_t2_yes' in 5;
			replace lower = `_lower_t2_yes' in 5;
			replace impact = `_ols_t3_no' in 6;
			replace upper = `_upper_t3_no' in 6;
			replace lower = `_lower_t3_no' in 6;
			replace impact = `_ols_t3_yes' in 7;
			replace upper = `_upper_t3_yes' in 7;
			replace lower = `_lower_t3_yes' in 7;
			replace impact = `_ols_t4_no' in 8;
			replace upper = `_upper_t4_no' in 8;
			replace lower = `_lower_t4_no' in 8;
			replace impact = `_ols_t4_yes' in 9;
			replace upper = `_upper_t4_yes' in 9;
			replace lower = `_lower_t4_yes' in 9;
		
	** OUTPUTTING EACH GRAPH **;
	*ylabel(-0.05(0.1)0.4, labsize(small));

	twoway (bar impact overvar if graphtreat==1, barwidth(0.9) lcolor(midblue*0.8) lwidth(medthick) fcolor(white))
   (bar impact overvar if graphtreat==2, barwidth(0.9) color(midblue*0.8) lwidth(medthick))
   (bar impact overvar if graphtreat==3, barwidth(0.9) lwidth(medthick) lcolor(midgreen*0.8) fcolor(white))
   (bar impact overvar if graphtreat==4, barwidth(0.9) color(midgreen*0.8)) 
   (bar impact overvar if graphtreat==5, barwidth(0.9) lcolor(maroon*0.8) lwidth(medthick) fcolor(white))
   (bar impact overvar if graphtreat==6, barwidth(0.9) color(maroon*0.8) lwidth(medthick))
   (bar impact overvar if graphtreat==7, barwidth(0.9) lwidth(medthick) lcolor(dkorange*0.8) fcolor(white))
   (bar impact overvar if graphtreat==8, barwidth(0.9) color(dkorange*0.8)) 
	 (rcap upper lower overvar, lcolor(gs4) lwidth(vthin)), 
	 xlabel(6 "`label'", noticks labsize(small)) 
	 xtitle("") ytitle("`var'", size(medium)) 
	 legend(style(zyx2) size(vsmall) order(1 2 3 4 5 6 7 8) cols(1) label(1 "Impact:  T1 X TRAIT = 0") label(2 "Impact:  T1 X TRAIT = 1") label(3 "Impact:  T2 X TRAIT = 0") label(4 "Impact:  T2 X TRAIT = 1") 
	 label(5 "Impact:  T3 X TRAIT = 0") label(6 "Impact:  T3 X TRAIT = 1") label(7 "Impact:  T4 X TRAIT = 0") label(8 "Impact:  T4 X TRAIT = 1") ) 
	 plotregion(lcolor(white)) ;
	 
	graph save "${GRAPHS}graph`i'_`var'", replace;
	local graphs `graphs' graph`i'_`var'.gph ;
	display "`graphs'";
  
		
	};
	*end loop 2 var of varlist;
	cd "$GRAPHS";
	grc1leg `graphs', title("Subgroup Effects: `label'") commonscheme ;
	graph export "${GRAPHS}ITT_Infant_`i'_het.pdf", replace ;
};
STOP 533;
* end loop 1 of subgroup;
cd "$Mada";

*=====================================================================================================================*;
	
*** ----------------------------------- intermediate outcomes ----------------------------------- **;

foreach var in `intervar' {;
		
set more off;
		
		*1. Maternal Education;
			
			replace dxtrait = dxedlo;
			replace dxnotrait = dxedhi;
			
			reg `var' dxtrait dxnotrait 
			`momcontrols',  robust cl(grappe); 
			mat V = r(table);
			mat list V;
			
			* storing output in locals;
			local _ols_d_no	    = string(V[1,1],"%04.3f");
			local _upper_d_no  	= string(V[5,1],"%04.3f");
			local _lower_d_no  	= string(V[6,1],"%04.3f");
			local _ols_d_yes	= string(V[1,2],"%04.3f");
			local _upper_d_yes  = string(V[5,2],"%04.3f");
			local _lower_d_yes  = string(V[6,2],"%04.3f");
			
			
			matrix drop V;
			
			* storing output for export;
			replace impactd = `_ols_d_no' in 2;
			replace upperd = `_upper_d_no' in 2;
			replace lowerd = `_lower_d_no' in 2;
			replace impactd = `_ols_d_yes' in 3;
			replace upperd = `_upper_d_yes' in 3;
			replace lowerd = `_lower_d_yes' in 3;
		
		*2. young child
			replace dxtrait = dxagey;
			replace dxnotrait = dxnoagey;
						
			reg `var' dxtrait dxnotrait 
			`youngcontrols',  robust cl(grappe); 
			mat V = r(table);
			mat list V;
			
			* storing output in locals;
			local _ols_d_no	    = string(V[1,1],"%04.3f");
			local _upper_d_no 	= string(V[5,1],"%04.3f");
			local _lower_d_no 	= string(V[6,1],"%04.3f");
			local _ols_d_yes	= string(V[1,2],"%04.3f");
			local _upper_d_yes  = string(V[5,2],"%04.3f");
			local _lower_d_yes  = string(V[6,2],"%04.3f");
		
			
			matrix drop V;
			
			* storing output for export;
			replace impactd = `_ols_d_no' in 5;
			replace upperd = `_upper_d_no' in 5;
			replace lowerd = `_lower_d_no' in 5;
			replace impactd = `_ols_d_yes' in 6;
			replace upperd = `_upper_d_yes' in 6;
			replace lowerd = `_lower_d_yes' in 6;
		

		
		*3. Male;
			replace dxtrait = dxmale;
			replace dxnotrait = dxnomale;
						
			reg `var' dxtrait dxnotrait 
			`malecontrols',  robust cl(grappe); 
			mat V = r(table);
			mat list V;
			
			* storing output in locals;
			local _ols_d_no	    = string(V[1,1],"%04.3f");
			local _upper_d_no  = string(V[5,1],"%04.3f");
			local _lower_d_no  = string(V[6,1],"%04.3f");
			local _ols_d_yes	= string(V[1,2],"%04.3f");
			local _upper_d_yes  = string(V[5,2],"%04.3f");
			local _lower_d_yes  = string(V[6,2],"%04.3f");
			
			
			matrix drop V;
			
			* storing output for export;
			replace impactd = `_ols_d_no' in 8;
			replace upperd = `_upper_d_no' in 8;
			replace lowerd = `_lower_d_no' in 8;
			replace impactd = `_ols_d_yes' in 9;
			replace upperd = `_upper_d_yes' in 9;
			replace lowerd = `_lower_d_yes' in 9;

		*4. Region;
			replace dxtrait = dxcoast;
			replace dxnotrait =dxhautep;
			
			reg `var' dxtrait dxnotrait 
			`regcontrols',  robust cl(grappe); 
			mat V = r(table);
			mat list V;
			
			* storing output in locals;
			local _ols_d_no	    = string(V[1,1],"%04.3f");
			local _upper_d_no  = string(V[5,1],"%04.3f");
			local _lower_d_no 	= string(V[6,1],"%04.3f");
			local _ols_d_yes	= string(V[1,2],"%04.3f");
			local _upper_d_yes  = string(V[5,2],"%04.3f");
			local _lower_d_yes  = string(V[6,2],"%04.3f");
			
			
			matrix drop V;
			
			* storing output for export;
			replace impactd = `_ols_d_no' in 11;
			replace upperd = `_upper_d_no' in 11;
			replace lowerd = `_lower_d_no' in 11;
			replace impactd = `_ols_d_yes' in 12;
			replace upperd = `_upper_d_yes' in 12;
			replace lowerd = `_lower_d_yes' in 12;
			
	** OUTPUTTING ALL GRAPHS **;
	*ylabel(-0.05(0.1)0.4, labsize(small));

	twoway (bar impactd overvard if graphpgm==1, barwidth(0.9) lcolor(midblue*0.8) lwidth(medthick) fcolor(white))
   (bar impactd overvard if graphpgm==2, barwidth(0.9) color(midblue*0.8) lwidth(medthick))
	 (rcap upperd lowerd overvard, lcolor(gs4) lwidth(vthin)), 
	 xlabel(3 `" "Low maternal ed" "" "' 6 `" "Young child" "" "' 9 `" "Male child" "" "' 12 `" "Region" "', noticks labsize(small)) 
	 xtitle("") ytitle("`var'", size(medium)) 
	 legend(order(1 2) cols(1) label(1 "Impact:  PROGRAM X TRAIT = 0") label(2 "Impact:  PROGRAM X TRAIT = 1"))
	 plotregion(lcolor(white)) ;
  
graph export "${GRAPHS}ITT_Infant_`var'_het_program.pdf", replace ;
		
	};
