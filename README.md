# Main-impact

## Heterogeneity analysis

### Tables
- in /Madagascar Mahay Data/analysis/tables/Main impact heterogeneity

### Graphs

#### Figure 3 : [heterogeneity graph (Figure 3)/Graph3-ITT infant heterogeneity.do](https://github.com/MAHAYstudy/Main-impact/blob/basic-ITT-infant/heterogeneity%20graph%20(Figure%203)/Graph3-ITT%20infant%20heterogeneity.do)

- graph files in Madagascar Mahay Data/analysis/graphs/Main-impact-paper/
- file name starts with het_
- [x] Heterogeneity by young child for each arm and multiple outcomes: HAZ, WAZ, WHZ, ASQ all
- [x] Heterogeneity by maternal ed for each arm and multiple outcomes: HAZ, WAZ, WHZ, ASQ all
- [x] Heterogeneity by maternal ed for each arm and multiple outcomes: Dairy, Meat & eggs, vitamin A foods, diet diversity, HOME


#### New figures
- [x] developmental outcomes and main effects over treatment arms (6 figures)

  1. data in ITT graph.do
  2. graph in analysis/graph/Main-impact-paper/ITT_graphs
- [x] growth outcomes over 3 age cohorts (ML and EL)


#### All growth graphs: [Madagascar Mahay Data/analysis/graphs/Main-impact-paper/All growth graphs.pdf](https://www.dropbox.com/s/013zh3p2es5e46e/All%20growth%20graphs.pdf?dl=0)
- Total endline samples, median split by age
- Without replacements and youngest cohort, median split by age
- Without replacements and youngest cohort, controlling for baseline data, median split by age
- Total endline samples, by age cohort

05/16: 
fixed codes on maternal educ missing values, updated dataset(female & infant)
update table 2 & 3

## ITT tables

### Table 1 & S1 : using Table1_balance.do (done)
- [x] redo 1 & S1 using iebaltab
- [x] create a variable to identify sibilings


### Table 2 (done) : ITT infant_for table 2 3.do 

 
### Table 3 (done) : ITT infant_for table 2 3.do, basic ITT female(2nd half table 3).do



#### Next: ACN

## 10/1/18 LH
### ML analysis
- Dofile: ITT ML.do
- tables: in analysis/tables/ITT_ML
### hygiene_score, knowledge_score
- hygiene_score: created in BL_create, ML_create, EL_create folders
  - did not change the original score
  - new score variable: hygiene_score_pca, might be a better indicator
- knowledge_score: created in BL_create, ML_create, EL_create folders
  - checked, no change needed


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
