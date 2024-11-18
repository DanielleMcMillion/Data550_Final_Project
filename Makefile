# Define file paths and dependencies
DATA_RAW = data/measures_data_refresh_(edited)2024.csv
DATA_DESC = data/measures_descriptions_refresh.csv
DATA_CLEAN = data/cleaned_measures_data.rds
HEATMAP_FIGURE = figure/Overall_Long-Term_Illnesses_and_Healthcare_Usuage_Rates.png
TABLE_OUTPUT = figure/Long-Term_Illnesses_Table.rds
REPORT = Final_Project_McMillion.Rmd
OUTPUT_HTML = report_final.html

# Default target
all: $(OUTPUT_HTML)

# Step 1: Data processing
$(DATA_CLEAN): code/01_data_processing.R $(DATA_RAW)
	Rscript code/01_data_processing.R

# Step 2: Create heatmap
$(HEATMAP_FIGURE): code/02_make_heatmap.R $(DATA_CLEAN)
	Rscript code/02_make_heatmap.R

# Step 3: Create table
$(TABLE_OUTPUT): code/03_make_table.R $(DATA_CLEAN)
	Rscript code/03_make_table.R

# Step 4: Generate the report
$(OUTPUT_HTML): $(REPORT) $(HEATMAP_FIGURE) $(TABLE_OUTPUT)
	Rscript -e "rmarkdown::render('$(REPORT)', output_file = '$(OUTPUT_HTML)')"

# Clean up intermediate files
clean:
	rm -f $(DATA_CLEAN) $(HEATMAP_FIGURE) $(TABLE_OUTPUT)

# Force a full rebuild
.PHONY: all clean
