#takes the date from the sampledate object minus the blank time stamp and combines it
# with sampledate to create a proper datetime object
to_date_time <- function(dataframe) {
  dataframe %>%
    mutate(sampledatetime = as.POSIXct( paste0(substr(sampledate, start = 1, stop = 10)," ", sampletime)) )
}
    

to_date <- function(dataframe) {
  dataframe %>%
    mutate(sampledatetime = as.Date(substr(sampledate, start = 1, stop = 10)) )
}