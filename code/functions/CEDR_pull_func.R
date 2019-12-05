#(site_url,

CEDR_pull <- function( ) {
        plot_data.df <- file.path(CEDR_url,
                                  "WaterQuality",
                                  "WaterQuality",
                                  
                                  min_date,
                                  max_date,
                                  "6",  #programIds
                                  paste(
                                          #these are the parameter variables declared in Functions and Variables section
                                          MAIN,TRIB
                                          , sep=","),#"7,16,23,24",  #projectIds
                                  "station",
                                  paste(station.vec, collapse = ","),
                                  paste(
                                          #these are the parameter variables declared in Functions and Variables section
                                          chla,doc,pheo,salinity
                                          , sep=",")
        ) %>%
                fromJSON() %>%
                clean_up() #%>%
        return(plot_data.df)
}


# pull_data<- function(){data.df <- file.path(CEDR_url,
 #                                     "LivingResources",
 #                                     "TidalPlankton",
 #                                     "Reported",
 #                                     min_date,
 #                                     max_date, 
 #                                     phyto_num,
 #                                     "Station",
 #                                     paste(station.vec, collapse = ",")) %>%
 #   fromJSON() %>% 
 #   clean_up()
 # 
 # }