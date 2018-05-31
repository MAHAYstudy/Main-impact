# Main-impact


ITT-infant: Ling's working branch



### Figure 3 : using Graph3-ITT infant heterogeneity.do (in folder heterogeneity graph (Figure 3))
- graph files in Madagascar Mahay Data/analysis/graphs/Main-impact-paper/
- file name starts with het_
- [x] Heterogeneity by young child for each arm and multiple outcomes: HAZ, WAZ, WHZ, ASQ all
- [x] Heterogeneity by maternal ed for each arm and multiple outcomes: HAZ, WAZ, WHZ, ASQ all
- [x] Heterogeneity by maternal ed for each arm and multiple outcomes: Dairy, Meat & eggs, vitamin A foods, diet diversity, HOME

### New figures
- [ ] developmental outcomes and main effects over treatment arms (6 figures)
- [ ] growth outcomes over 3 age cohorts (ML and EL)


05/16: 
fixed codes on maternal educ missing values, updated dataset(female & infant)
update table 2 & 3

### Table 1 & S1 : using Table1_balance.do (done)
- [x] redo 1 & S1 using iebaltab
- [x] create a variable to identify sibilings


### Table 2 (done) : ITT infant_for table 2 3.do 

 
### Table 3 (done) : ITT infant_for table 2 3.do, basic ITT female(2nd half table 3).do



#### Next: ACN


## Notes for analysis use



TABLE 3

The hygiene_score at the moment is a pca of meal preparation practices as of now, (not general hygiene on water and sanitation).
In future work we might want to combine or to keep the two hygiene practices (food and wash related) separate.
It gets created in do files folder: BL_create, ML_create and EL_create
 
pca fh01M_prepfoodhandwash fh01M_premealhandwash fh01M_prepfoodwashed fh01M_foodcookwell ///
                fh01M_washdishes fh01M_noleftovers fh01M_reheatleftovers fh01M_coverleftovers ///
                fh01M_protectfoodinsects fh01M_chillfood , comp(1)


TABLE 1
We would need to edit table 1 to include median/IQR and proportions instead of means/s.e. as common practice in the LANCET as Ann indicated.
The do file in the analysis do file folder is balance_baseline_endline_v3.do

the baseline_balance_endline_v3 is the most recent dofile that creates the balance tables 
(at baseline, and then comparing replacement households at endline)


The format tables are a bit cumbersome. Is there a more straightforward way of extracting the tables?
 
On the balance tables in RCTs, a useful post from our dev impact blog https://blogs.worldbank.org/impactevaluations/should-we-require-balance-t-tests-baseline-observables-randomized-experiments
