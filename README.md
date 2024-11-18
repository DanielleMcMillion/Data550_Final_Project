# Healthcare Payments Data (HPD) Healthcare Measures Analysis

## Repository Contents
This repository contains the code, data, and instructions necessary to analyze the *Healthcare Payments Data (HPD) Healthcare Measures* dataset. The dataset includes three main categories: Health Conditions, Utilization, and Demographics. Below is a breakdown of the repository structure and the purpose of its contents:


### 1. **Project Structure**
- `code/`: Contains all R scripts used in the project.
  - `01_data_processing.R`: Generates clean data (specifies only Medi-Cal Payers)
  - `02_make_heatmap.R`: Code for creating the heatmap showing correlations between long-term illnesses and healthcare usuage rates.
  - `03_make_table.R`: Code for creating the table comparing different long-term illnesses in California based on the reporting year, the age range and the sex of the patient.
- `data/`: Contains raw and cleaned datasets used in the project.
  - `measures_descriptions_refresh.csv`: Descriptions of the different measures.
  - `measures_data_refresh_(edited)2024`.csv: Csv file only including long term illness in California
- `figure/`: Contains all generated figures for the report.
  - `Overall Long-Term Illnesses and Healthcare Usuage Rates.png`: Heatmap of correlations between long-term illnesses and healthcare usuage rates.
  - `Long-Term_Illnesses_Table.rds`: Table visualizing different long-term illnesses in California based on the reporting year, the age range and the sex of the patient.
- `Final_Project_McMillion.Rmd`: R Markdown file used to create the final report.
- `Makefile`: Automates the generation of the final report.

### 2. **Final Report**
The report provides:
- A heatmap visualizing correlations between long-term illnesses and healthcare usuage rates.
- A table comparing different long-term illnesses in California based on the reporting year, the age range and the sex of the patient.
  
### 3. **Required Table**
The code for creating the required table is located in `03_make_table.R`. The correlation matrix is computed and displayed in the report.

### 4. **Required Figure**
The code for creating the required heatmap is located in `02_make_heatmap.R`. The script generates a heatmap showing correlations between long-term illnesses and healthcare usuage rates.

---

## Generating the Final Report
Follow these steps to generate the report:

1. Clone the repository:
   ```bash
   git clone https://github.com/DanielleMcMillion/DATA550-Final-Project.git
   cd DATA550-Final-Project
