# Quantifying-Innovativeness-of-Prizewinners
## Codes and data for reproducing results
This repository contains the code and data used to reproduce the results presented in the paper "Quantifying the Innovativeness of Science Prizewinners and their Embeddedness in Collaboration Networks". 

## Datasets
This repository includes the following datasets: 
* 'data_Fig_1_main.pkl', 'data_Fig_1_noveltyInsert.pkl', 'data_Fig_1_convergenceInsert.pkl', 'data_Fig_1_interdisciplinarityInsert.pkl' : These datasets contain the innovativeness measures of prizewinners and matched non-prizewinners, used to conduct the Figure 1.
* 'data_part_I.dta': This dataset contains the innovativeness measures of prizewinners and matched non-prizewinners, used to conduct the regressions to generate Figure 2.  
* 'data_part_II.dta': This dataset contains the embeddedness measures and innovativeness measures of prizewinners and matched non-prizewinners’ co-authorship networks, used to conduct regressions to generate Table 1.
* 'Margin_data_Figure2.xlsx': This dataset contains the results from the regressions, used to reproduce the results shown in Figure 2B.
* 'data_Fig_4.pkl':This datasets contains the embeddedness measures of prizewinners and matched non-prizewinners, used to conduct the Figure 4.

## Code 
The code for this project is organized into several scripts, each serving a specific purpose:
* 'Figures.ipynb':This Jupyter Notebook contains Python code to analyze the 'data_part_I.dta', 'data_part_II.dta' and Margin_data_Figure2.xlsx datasets.
* 'Reg_Part_I.do': This Stata script contains commands to analyze the data_part_I.dta dataset.
* 'Reg_Part_II.do': This Stata script contains commands to analyze the data_part_II.dta dataset.

### Code structure 
* 'Figures.ipynb': Reproduces results shown in Figure 1, Figure 2, and Figure 4 using Python.
* 'Reg_Part_I.do': Provides regression results using Stata.
* 'Reg_Part_II.do': Provides regression results using Stata.


