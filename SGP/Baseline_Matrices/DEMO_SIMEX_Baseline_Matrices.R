#####
#####   SIMEX Baseline Matrices
#####

### Load necessary packages

library(SGP)
library(SGPdata)
library(data.table)

SGPstateData[["DEMO"]][["Baseline_splineMatrix"]] <- NULL

eoct.csem <- SGPstateData[["DEMO"]][["Assessment_Program_Information"]][["CSEM"]][GRADE %in% 9:10]

eoct.csem[GRADE==9 & CONTENT_AREA == "READING", CONTENT_AREA := "GRADE_9_LIT"]
eoct.csem[GRADE==10 & CONTENT_AREA == "READING", CONTENT_AREA := "AMERICAN_LIT"]
eoct.csem[GRADE==9 & CONTENT_AREA == "MATHEMATICS", CONTENT_AREA := "ALGEBRA_I"]
eoct.csem[GRADE==10 & CONTENT_AREA == "MATHEMATICS", CONTENT_AREA := "ALGEBRA_II"]
eoct.csem[, GRADE := "EOCT"]

SGPstateData[["DEMO"]][["Assessment_Program_Information"]][["CSEM"]] <- rbindlist(list(SGPstateData[["DEMO"]][["Assessment_Program_Information"]][["CSEM"]], eoct.csem))

###  Add EOCT courses to sgpData_LONG
###  Create a smaller subset of the LONG data to work with.
Demonstration_Data_LONG <- data.table(sgpData_LONG[, c("ID", "CONTENT_AREA", "YEAR", "GRADE", "SCALE_SCORE", "ACHIEVEMENT_LEVEL", "VALID_CASE"), ])

Demonstration_Data_EOCT <- Demonstration_Data_LONG[GRADE %in% 9:10]
Demonstration_Data_EOCT[CONTENT_AREA == 'MATHEMATICS' & GRADE == '9', CONTENT_AREA := 'ALGEBRA_I']
Demonstration_Data_EOCT[CONTENT_AREA == 'MATHEMATICS' & GRADE == '10', CONTENT_AREA := 'ALGEBRA_II']
Demonstration_Data_EOCT[CONTENT_AREA == 'READING' & GRADE == '9', CONTENT_AREA := 'GRADE_9_LIT']
Demonstration_Data_EOCT[CONTENT_AREA == 'READING' & GRADE == '10', CONTENT_AREA := 'AMERICAN_LIT']
Demonstration_Data_EOCT[CONTENT_AREA %in% c('ALGEBRA_I', 'ALGEBRA_II', 'GRADE_9_LIT', 'AMERICAN_LIT'), GRADE := 'EOCT']


###   Read in Baseline SGP Configuration Scripts and Combine
source("SGP_CONFIG/READING.R")
source("SGP_CONFIG/MATHEMATICS.R")
source("SGP_CONFIG/EOCT.R")

DEMO.Baseline.config <- c(
	READING_BASELINE.config,
	GRADE_9_LIT_BASELINE.config,
	AMERICAN_LIT_BASELINE.config,

	MATHEMATICS_BASELINE.config,
	ALGEBRA_I_BASELINE.config,
	ALGEBRA_II_BASELINE.config
)


###   Create Baseline and SIMEX Baseline Matrices

Demonstration_Data_LONG <- rbindlist(list(Demonstration_Data_LONG, Demonstration_Data_EOCT))
Demonstration_SGP <-prepareSGP(Demonstration_Data_LONG, create.additional.variables=FALSE)

DEMO_Baseline_Matrices <- baselineSGP(
	Demonstration_SGP,
	sgp.baseline.config=DEMO.Baseline.config,
	return.matrices.only=TRUE,
	calculate.baseline.sgps=FALSE,
	calculate.simex.baseline=list(state="DEMO", lambda=seq(0,2,0.5), simulation.iterations=50, simex.use.my.coefficient.matrices = FALSE,
																extrapolation="linear", save.matrices=TRUE), # simex.sample.size=10000, use.cohort.for.ranking=TRUE,
	goodness.of.fit.print=FALSE,
	parallel.config=list(BACKEND="PARALLEL", WORKERS=list(TAUS=11, SIMEX=11)))

save(DEMO_Baseline_Matrices, file="DEMO_SIMEX_Baseline_Matrices.Rdata")
