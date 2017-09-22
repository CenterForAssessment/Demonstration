############################################################################
###
### Prepare 2012-2013 to 2014-2015 Instructor-Student Lookup Data
###
############################################################################

### Load packages

require(SGPdata)
require(data.table)


### Create data set

Demonstration_Data_LONG_INSTRUCTOR_NUMBER <- sgpData_INSTRUCTOR_NUMBER[YEAR <= "2014_2015"]


### Set key

setkey(Demonstration_Data_LONG_INSTRUCTOR_NUMBER, CONTENT_AREA, YEAR, ID)


### Save results

save(Demonstration_Data_LONG_INSTRUCTOR_NUMBER, file="Data/Demonstration_Data_LONG_INSTRUCTOR_NUMBER.Rdata")
