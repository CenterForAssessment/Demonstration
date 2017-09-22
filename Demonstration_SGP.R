#####################################################################################
###
### R Script for initial year (2014-2015) Demonstration SGP analyses
###
#####################################################################################

### Load SGP Package

require(SGP)
options(error=recover)


### Load Data

load("Data/Demonstration_Data_LONG.Rdata")
load("Data/Demonstration_Data_LONG_INSTRUCTOR_NUMBER.Rdata")


### Load SIMEX matrices & embed in SGPstateData

load("Data/Base_Files/DEMO_SIMEX_Baseline_Matrices.Rdata")
SGPstateData[["DEMO"]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <-
	c(SGPstateData[["DEMO"]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]], DEMO_SIMEX_Baseline_Matrices)


### abcSGP

Demonstration_SGP <- abcSGP(
	sgp_object=Demonstration_Data_LONG,
	calculate.simex=list(state='DEMO', lambda=seq(0,2,0.5), simulation.iterations=75, extrapolation='linear', save.matrices=TRUE),
	calculate.simex.baseline=list(state='DEMO', lambda=seq(0,2,0.5), simulation.iterations=75, extrapolation='linear', save.matrices=TRUE),
	sgp.target.scale.scores=TRUE,
	sgPlot.demo.report=TRUE,
	parallel.config=list(BACKEND="PARALLEL", WORKERS=list(TAUS=10, SIMEX=10, BASELINE_PERCENTILES=10, PROJECTIONS=10, LAGGED_PROJECTIONS=10, SGP_SCALE_SCORE_TARGETS=10, SUMMARY=20, GA_PLOTS=4, SG_PLOTS=1)))


### Save results

save(Demonstration_SGP, file="Data/Demonstration_SGP.Rdata")
