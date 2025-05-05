#####################################################################################
###
### R Script for 2016-2017 Demonstration SGP analyses
###
#####################################################################################


### Load SGP Package

require(SGP)
options(error=recover)


### Load Data

load("Data/Demonstration_SGP.Rdata")
load("Data/Demonstration_Data_LONG_2016_2017.Rdata")
load("Data/Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017.Rdata")


### updateSGP

Demonstration_SGP <- updateSGP(
	what_sgp_object=Demonstration_SGP,
	with_sgp_data_LONG=Demonstration_Data_LONG_2016_2017,
	with_sgp_data_INSTRUCTOR_NUMBER=Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017,
	calculate.simex=list(state='DEMO', lambda=seq(0,2,0.5), simulation.iterations=75, extrapolation='linear', save.matrices=TRUE),
	calculate.simex.baseline=list(state='DEMO', lambda=seq(0,2,0.5), simulation.iterations=75, extrapolation='linear', save.matrices=TRUE),
	sgp.target.scale.scores=TRUE,
	sgPlot.demo.report=TRUE,
	parallel.config=list(BACKEND="PARALLEL", WORKERS=list(TAUS=10, SIMEX=10, PROJECTIONS=10, LAGGED_PROJECTIONS=10, SGP_SCALE_SCORE_TARGETS=10, SUMMARY=20, GA_PLOTS=4, SG_PLOTS=1)))


### Save results

save(Demonstration_SGP, file="Data/Demonstration_SGP.Rdata")
