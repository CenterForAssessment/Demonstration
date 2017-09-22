############################################################################
###
### Prepare 2015-2016 data
###
############################################################################

### Load packages

require(SGPdata)
require(data.table)


### Create data set

Demonstration_Data_LONG_2016_2017 <- sgpData_LONG[YEAR == "2016_2017"]


### Set key

setkey(Demonstration_Data_LONG_2016_2017, VALID_CASE, CONTENT_AREA, YEAR, ID)


### Save results

save(Demonstration_Data_LONG_2016_2017, file="Data/Demonstration_Data_LONG_2016_2017.Rdata")
