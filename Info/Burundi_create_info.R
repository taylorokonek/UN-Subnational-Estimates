##################################################################
##################################################################
# This script is used to generate the info file for a given country
##################################################################
##################################################################
rm(list = ls())

################################################################
#########   set parameters
################################################################

# Files info (For those lines with ### xxx ### above, please fill in as commented)
country <- 'Burundi'

### please fill in the country abbreviation in all upper case of gadm files ### (e.g. fill in SEN for gadm36_SEN_3.shp)
gadm.abbrev <- "BDI"
doHIVAdj <- F

### please fill in the path to country shape files ####
poly.path <- paste0("shapeFiles")


##### explain how these may need to be changed
poly.layer.adm0 <- paste('gadm36', gadm.abbrev,
                         '0', sep = "_") # specify the name of the national shape file
poly.layer.adm1 <- paste('bdi_admbnda_adm1_igebu_ocha_20171103') # specify the name of the admin2 shape file
poly.layer.adm2 <- paste('bdi_admbnda_adm2_igebu_ocha_20171103') # specify the name of the admin2 shape file


poly.label.adm1 <- "poly.adm1@data$admin1Name"
poly.label.adm2 <- "poly.adm2@data$admin2Name"

##################################################################
##################################################################
##################################################################

## setting rest of parameters using info from above
country.abbrev <- tolower(gadm.abbrev)           # lower the country gadm abbreviation 
beg.year <- 2000 # the first year of the interest
end.proj.year <- 2020 # last year we would like to project to 

info.name <- paste0(country, "_general_info.Rdata")

# extract file location of this script
code.path <- rstudioapi::getActiveDocumentContext()$path
code.path.splitted <- strsplit(code.path, "/")[[1]]

save.image(file = paste0(paste(code.path.splitted[1: (length(code.path.splitted)-2)], collapse = "/"),'/Info/', info.name, sep=''))

