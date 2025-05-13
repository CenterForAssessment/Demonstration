########################################################################
### Demonstration sgpFlow Matrix Calculation
########################################################################

# Load necessary libraries
require(SGP)
require(sgpFlow)

# Load data
load("Data/Demonstration_Data_LONG_2024_2025.Rdata")

# NULL out matrices in SGPstateData (only needed for DEMO)
SGPstateData[["DEMO"]][["Baseline_splineMatrix"]] <- NULL

# Parameters
num_cores <- parallel::detectCores() - 1L

# Load and create MATRIX configurations
source("SGP_CONFIG/Matrices/MATHEMATICS.R")
source("SGP_CONFIG/Matrices/READING.R")
DEMO_Matrix.config <- c(MATHEMATICS_Matrix.config, READING_Matrix.config)

# Load and create Super-Cohort configurations
source("SGP_CONFIG/Super_Cohort/MATHEMATICS.R")
source("SGP_CONFIG/Super_Cohort/READING.R")
DEMO_Super_Cohort.config <- c(MATHEMATICS_Super_Cohort.config, READING_Super_Cohort.config)

# Create sgpFlow matrices
DEMO_sgpFlow_Matrices <- createMatrices(
     data_for_matrices=Demonstration_Data_LONG_2024_2025,
     matrix.sgp.config=DEMO_Matrix.config,
     super_cohort.sgp.config=DEMO_Super_Cohort.config,
     super_cohort_base_years=c("2020_2021", "2021_2022", "2022_2023", "2023_2024", "2024_2025"),
     parallel.config=list(BACKEND="PARALLEL", WORKERS=list(TAUS=num_cores)),
     matrix_types=c("single-cohort", "super-cohort")
)

# Save sgpFlow matrices
save(DEMO_sgpFlow_Matrices, file="Data/DEMO_sgpFlow_Matrices.rda")
