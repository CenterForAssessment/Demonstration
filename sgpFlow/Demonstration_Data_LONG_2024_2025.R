###################################################################
### Demonstration Data LONG 2024_2025 for sgpFlow
###################################################################

### Load packages
require(data.table)
require(SGPdata)

### Create long data
variables.to.keep <- c("VALID_CASE", "CONTENT_AREA", "YEAR", "GRADE", "ID", "SCALE_SCORE", "ACHIEVEMENT_LEVEL")
Demonstration_Data_LONG_2024_2025 <- sgpData_LONG[, variables.to.keep, with=FALSE]

### set the key
setkey(Demonstration_Data_LONG_2024_2025, VALID_CASE, CONTENT_AREA, YEAR, GRADE, ID)

### Save data
save(Demonstration_Data_LONG_2024_2025, file="Data/Demonstration_Data_LONG_2024_2025.Rdata")
