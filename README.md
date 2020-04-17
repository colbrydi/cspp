# cspp
# Correlates of State Policy Project

The Correlates of State Policy Project includes more than 2000 variables, with observations across the 50 U.S. states and across time (1900–2016, approximately). These variables represent policy outputs or political, social, or economic factors that may influence policy differences. The codebook includes the variable name, a short description of the variable, the variable time frame, a longer description of the variable, and the variable source(s) and notes.

This aggregated dataset is only possible because many scholars and students have spent countless hours creating, collecting, cleaning, and making data publicly available. Thus, if you use the dataset, please cite the original data sources.

For more information, visit http://ippsr.msu.edu/public-policy/correlates-state-policy.

Although this package can be used by running scripts in a terminal, the most accessible way to interact with this package is through RStudio.

# Installation of RStudio and dependencies:
Clone this repository and run the following:
```
conda create --prefix ./envs --file environment.yml
conda activate ./envs
rstudio
```
# Installation of cspp package through RStudio
```{r}
devtools::install_github("shaylafolson/cspp")
library(cspp)
```

# Usage
```
data(csppFull)

# to get the citation for a variable
citation("poptotal")

# to get the description for a variable
quickDescribe("poptotal")
fullDesrcribe("poptotal")

# to get the years available for a variable
years("poptotal")
```

# Running linting.R
linting.R can be run via CMD if r is installed in a conda environment
```
conda create --prefix ./envs r-base
conda activate ./envs
conda install r-lintr
Rscript linting.R
```
