###################################################################
### DEMONSTRATION sgpFlow analysis for 2025
###################################################################

### Load packages
require(sgpFlow)
require(sgpFlowMatrices)
#debug(sgpFlow::sgpFlow)
debug(sgpFlow::getPercentileTrajectories)

### Load data
load("Data/Demonstration_Data_LONG_2024_2025.Rdata")

# Use super-cohort matrices
projection.splineMatrices <- sgpFlowMatrices[['DEMO_sgpFlowMatrices']][['2024_2025']][['SUPER_COHORT']]

# Source and create sgpFlow configurations for MATHEMATICS and READING
source("SGP_CONFIG/sgpFlow/2024_2025/MATHEMATICS.R")
source("SGP_CONFIG/sgpFlow/2024_2025/READING.R")
DEMO_sgpFlow.config <- c(sgpFlow_MATHEMATICS.config, sgpFlow_READING.config)

# Run sgpFlow
Demonstration_sgpFlow <- sgpFlow(
                    sgp_object = Demonstration_Data_LONG_2024_2025,
                    sgpFlow.config = DEMO_sgpFlow.config,
                    projection.splineMatrices = projection.splineMatrices,
                    parallel.config = NULL)
