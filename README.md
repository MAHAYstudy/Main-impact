# Main-impact


Ling's working branch on ITT-infant

- Table 2
 - [x] stunted & severely stunted as proportion
- Table 3 
  -[x] done using updated variables (criteria non-modified)
  -[x] adjusted for sex
  -[x] CI, Median & IQR
  -[x]table 3: need to add proportions for binary outcomes (check all the variables)
  -[ ]table 3: add mealprep

Questions:
table 3 - consider the construct of outcome variables for hygiene score, ECD score




###Table 1:
use balance_baseline_endline_v3.do
[ ]include median/IQR and proportions instead of means/s.e.




#####notes for analysis use



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
