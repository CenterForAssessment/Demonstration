
GRADE_9_LIT_BASELINE.config <- list(
	list(
		sgp.baseline.content.areas=c('READING', 'GRADE_9_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT"),
		sgp.baseline.grade.sequences.lags=1),

	list(
		sgp.baseline.content.areas=c('READING', 'READING', 'GRADE_9_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "8", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1)),
	list(
		sgp.baseline.content.areas=c('READING', 'READING', 'READING', 'GRADE_9_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("6", "7", "8", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1,1)),
	###  SKIP YEAR
	list(
		sgp.baseline.content.areas=c('READING', 'GRADE_9_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "EOCT"),
		sgp.baseline.grade.sequences.lags=2),

	list(
		sgp.baseline.content.areas=c('READING', 'READING', 'GRADE_9_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("6", "7", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,2))
)



AMERICAN_LIT_BASELINE.config <- list(
	list(
		sgp.baseline.content.areas=c('GRADE_9_LIT', 'AMERICAN_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=1),

	list(
		sgp.baseline.content.areas=c('READING', 'GRADE_9_LIT', 'AMERICAN_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1)),
	list(
		sgp.baseline.content.areas=c('READING', 'READING', 'GRADE_9_LIT', 'AMERICAN_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1,1)),
	###  SKIP YEAR
	list(
		sgp.baseline.content.areas=c('GRADE_9_LIT', 'AMERICAN_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=2),

	list(
		sgp.baseline.content.areas=c('READING', 'GRADE_9_LIT', 'AMERICAN_LIT'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,2))
)




ALGEBRA_I_BASELINE.config <- list(
	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'ALGEBRA_I'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT"),
		sgp.baseline.grade.sequences.lags=1),

	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'ALGEBRA_I'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "8", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1)),
	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'MATHEMATICS', 'ALGEBRA_I'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("6", "7", "8", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1,1)),
	###  SKIP YEAR
	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'ALGEBRA_I'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "EOCT"),
		sgp.baseline.grade.sequences.lags=2),

	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'ALGEBRA_I'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("6", "7", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,2))
)



ALGEBRA_II_BASELINE.config <- list(
	list(
		sgp.baseline.content.areas=c('ALGEBRA_I', 'ALGEBRA_II'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=1),

	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'ALGEBRA_I', 'ALGEBRA_II'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1)),
	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'MATHEMATICS', 'ALGEBRA_I', 'ALGEBRA_II'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("7", "8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,1,1)),
	###  SKIP YEAR
	list(
		sgp.baseline.content.areas=c('ALGEBRA_I', 'ALGEBRA_II'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=2),

	list(
		sgp.baseline.content.areas=c('MATHEMATICS', 'ALGEBRA_I', 'ALGEBRA_II'),
		sgp.baseline.panel.years=c("2015_2016", "2016_2017", "2017_2018", "2018_2019", "2019_2020"),
		sgp.baseline.grade.sequences=c("8", "EOCT", "EOCT"),
		sgp.baseline.grade.sequences.lags=c(1,2))
)
