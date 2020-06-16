# We need to change the working directory, otherwise the CSVs won't be loaded
setwd("../")
source("load_data.R")

# Switch back to the current working directory
setwd("notebooks")
source("plot_scripts.R")
