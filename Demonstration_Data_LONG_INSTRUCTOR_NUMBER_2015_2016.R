############################################################################
###
### Prepare 2015-2016 Instructor-Student Lookup Data
###
############################################################################

### Load packages

require(SGPdata)
require(data.table)


### Create data set

Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2015_2016 <- sgpData_INSTRUCTOR_NUMBER[YEAR == "2015_2016"]


### Set key

setkey(Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2015_2016, CONTENT_AREA, YEAR, ID)


### Save results

save(Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2015_2016, file="Data/Demonstration_Data_LONG_INSTRUCTOR_NUMBER_2015_2016.Rdata")
