# Innovative-Distinctions-of-Prizewinners-and-their-Networks

## Overview
This repository contains the code and metadata for reproducing the analyses presented in the paper:

**"The Innovative Distinctions of Prizewinners and their Networks"**

## Data Availability
To ensure transparency and reproducibility, all datasets used in this study are archived on the **[Harvard Dataverse](https://dataverse.harvard.edu/)**.

📂 **Access the dataset**: [https://doi.org/10.7910/DVN/QOEK1B](https://doi.org/10.7910/DVN/QOEK1B)

> ⚠️ Due to GitHub's file size limitations, datasets are not stored directly in this repository.

## Dataset Descriptions
The following datasets are available for download via the Harvard Dataverse:

- `data_Fig_1_main.pkl`, `data_Fig_1_noveltyInsert.pkl`, `data_Fig_1_convergenceInsert.pkl`, `data_Fig_1_interdisciplinarityInsert.pkl`  
  → Innovativeness measures of prizewinners and matched non-prizewinners used in Figure 1.

- `data_part_I.dta`  
  → Innovativeness indicators used in regression analyses for Figure 2A.

- `data_part_II.dta`  
  → Embeddedness and innovativeness measures used in regressions for Table 1.

- `data_Figure2B_margin.xlsx`  
  → Regression margin results used in Figure 2B.

- `data_Fig_4.pkl`  
  → Embeddedness metrics used to construct Figure 4.

## Code Structure
The repository includes both Python and Stata scripts organized by analytical component:

- `Figures.ipynb`  
  → Python code for generating Figures 1, 2, and 4.

- `Reg_Part_I.do`  
  → Stata script for regression analyses using `data_part_I.dta`.

- `Reg_Part_II.do`  
  → Stata script for regression analyses using `data_part_II.dta`.
