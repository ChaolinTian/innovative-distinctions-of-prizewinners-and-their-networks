# Quantifying-Innovativeness-of-Prizewinners

## Overview
This repository contains the code and metadata for reproducing the results presented in the paper:

**"Quantifying the Innovativeness of Science Prizewinners and their Embeddedness in Collaboration Networks"**

## Data Availability
To facilitate reproducibility and long-term access, all datasets used in this project are archived and publicly available on the **[Harvard Dataverse](https://dataverse.harvard.edu/)**.

📂 **Access the dataset here**: [https://doi.org/10.7910/DVN/XXXXXXX](https://doi.org/10.7910/DVN/XXXXXXX)  
*(Replace with your actual DOI)*

> *Note: Due to file size limitations on GitHub, the datasets are not stored in this repository.*

## Dataset Descriptions
The following datasets are described in the study and can be downloaded via Harvard Dataverse:

- `data_Fig_1_main.pkl`, `data_Fig_1_noveltyInsert.pkl`, `data_Fig_1_convergenceInsert.pkl`, `data_Fig_1_interdisciplinarityInsert.pkl`  
  → Innovativeness measures of prizewinners and matched non-prizewinners (used for Figure 1)

- `data_part_I.dta`  
  → Used to estimate regression models for Figure 2

- `data_part_II.dta`  
  → Contains embeddedness and innovativeness metrics for co-authorship networks (used in Table 1)

- `Margin_data_Figure2.xlsx`  
  → Regression margin estimates for Figure 2B

- `data_Fig_4.pkl`  
  → Embeddedness measures of prizewinners and matched non-prizewinners (used in Figure 4)

## Code Structure
This repository includes both Python and Stata scripts used for analysis and visualization:

- `Figures.ipynb`  
  → Python notebook to reproduce Figures 1, 2, and 4

- `Reg_Part_I.do`  
  → Stata script for regression analysis using `data_part_I.dta`

- `Reg_Part_II.do`  
  → Stata script for regression analysis using `data_part_II.dta`

## Citation
If you use the data or code in this repository, please cite the corresponding paper and data DOI.



