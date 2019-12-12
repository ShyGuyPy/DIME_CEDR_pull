

selection_vector <-  function(input1,input2,input3,num,location){
  selection.vec <- file.path(CEDR_url,
                           input1,#"LivingResources",
                           input2,#"TidalPlankton",
                           input3, #"Reported",
                           min_date,
                           max_date,
                           num,#phyto_num,
                           location#"Station"
                           ) %>%
    fromJSON() %>%
    pull(unique(MonitoringLocationId))
  
  return(selection.vec)
}

#this is the function currently being used in the working version
wq_selection_vector <- function(){
  huc8.vec <- file.path(CEDR_url,
                        "LivingResources",
                        "TidalPlankton",
                        "Reported",
                        min_date,
                        max_date,
                        phyto_num,
                        "Huc8"
  ) %>%
    fromJSON() %>%
    pull(unique(HUCEightId))
}