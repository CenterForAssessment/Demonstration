############################################################################
###
### Prepare 2012-2013 to 2014-2015 data
###
############################################################################

### Load packages

require(SGPdata)
require(data.table)


### Create data set

Demonstration_Data_LONG <- sgpData_LONG[YEAR <= "2014_2015"]


### Set key

setkey(Demonstration_Data_LONG, VALID_CASE, CONTENT_AREA, YEAR, ID)


### Save results

save(Demonstration_Data_LONG, file="Data/Demonstration_Data_LONG.Rdata")
