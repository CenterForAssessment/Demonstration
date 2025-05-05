############################################################################
###
### Prepare 2016-2017 Instructor-Student Lookup Data
###
############################################################################

### Load packages

require(SGPdata)
require(data.table)


### Create data set

Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017 <- sgpData_INSTRUCTOR_NUMBER[YEAR == "2016_2017"]


### Set key

setkey(Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017, CONTENT_AREA, YEAR, ID)


### Save results

save(Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017, file="Data/Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2016_2017.Rdata")
