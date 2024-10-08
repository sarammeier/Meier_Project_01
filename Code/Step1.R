###############################################
# R script creating project, subfolders, and readme file.
###############################################

# Loading usethis package
install.packages("usethis")
library(usethis)

#set wd
setwd("C:/Week6")

# Create project folder
usethis::create_project("Meier_Project_01")

# Set working drive to new project foler
setwd("Meier_Project_01")

# Create subdirectories
dir.create("Background")
dir.create("Code")
dir.create("Reports")
dir.create("DataProcessed")
dir.create("DataRaw")

# Create the readme.md file and add content
writeLines(c(
  "# Meier_Project_01",
  "",
  "## Directory Structure",
  "",
  "- **Background**: Contains all background research, literature reviews, and other preparatory work.",
  "- **Code**: Stores all R scripts, analysis code, or any other programming-related files.",
  "- **Reports**: Includes final and intermediate reports, presentations, or visual outputs.",
  "- **DataProcessed**: Processed data that has been cleaned and is ready for analysis.",
  "- **DataRaw**: Raw data files collected, in their original state before any processing."
), con = "readme.md")

#Commit the project's current state, and “push” your project to GitHub (you may need to sign up for an account).
