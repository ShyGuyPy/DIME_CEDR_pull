#-----create a station vector for us in data pull------
#temporary placement
station.vec <- file.path(CEDR_url,
                         "LivingResources",
                         "TidalPlankton",
                         "Reported",
                         min_date,
                         max_date,
                         phyto_num,
                         "Station") %>%
  fromJSON() %>%
  pull(unique(MonitoringLocationId))


#-------------this is a temporary data pull for gettting data with stations so i have point data to show off leaflet
CEDR_pull_alt <- function(){data.df <- file.path(CEDR_url,
                                                 "WaterQuality",
                                                 "WaterQuality",
                                                 
                                                 min_date,
                                                 max_date,
                                                 "6",  #programIds
                                                 "7,23",#"7,16,23,24",  #projectIds
                                                 "station",
                                                 paste(station.vec, collapse = ","),
                                                 paste(
                                                   #these are the parameter variables declared in Functions and Variables section
                                                   SPCOND
                                                   , sep=",")) %>%
  fromJSON() %>%
  clean_up()
  return(data.df)

}

