parameter_average <- function(my_frame.df) {
  ###eventually dataframe needs to be a function arguement
  # #read downloaded water quality data
  # active_data.df <- data.table::fread(paste0(active_path, "active_data.csv"),
  #                                    data.table = FALSE)
 
  
  data_map.df <- my_frame.df %>%
    mutate(sampledatetime = as.POSIXct(paste0(substr(sampledate, start = 1, stop = 10)," ", sampletime)) ) %>%
    group_by(huc8, sampledatetime, parameter) %>%
    mutate(measurevalue_averaged = mean(measurevalue)) %>%
    select(huc8, sampledatetime, measurevalue_averaged, parameter ) %>%
    unique()
  
  return(data_map.df)
  
  
}