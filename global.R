#--------------paths and packages----------------------
# Load packages ---------------------------------------------------------------  
# Use this one when not publishing to shinyapp.io, comment out when publishing:
source("code/global/load_packages.R", local = TRUE)
# Use this one when publishing, can comment out otherwise:
#source("code/global/import_packages.R", local = TRUE)

source("config/CEDR_inputs.R", local = TRUE)
source("config/paths.R", local = TRUE)
#------------------------------------------------------

#----functions-----------------------------------------
source("code/functions/CEDR_pull_func.R", local = TRUE)
source("code/functions/NWIS_pull_func.R", local = TRUE)
source("code/functions/WQDP_pull_func.R", local = TRUE)
source("code/functions/quality_assurance_func.R", local = TRUE)
source("code/functions/clean_func.R", local = TRUE)
source("code/functions/date_time_func.R", local = TRUE)
source("code/functions/selection_vector_func.R", local = TRUE)
source("code/functions/param_avg_func.R", local = TRUE)
source("code/functions/summary_func.R", local = TRUE)
source("code/functions/map_func.R", local = TRUE)
source("code/functions/check_data_func.R", local = TRUE)
#source("code/functions/CEDR_pull_alt_func.R", local = TRUE)
#------------------------------------------------------

pass_fail = "testing"

#-----CEDR api url-------------------------------------
CEDR_url <- "http://datahub.chesapeakebay.net/api.JSON"
#------------------------------------------------------

#-------------------todays date-----------------------
todays.date <- format(Sys.Date(), "%Y-%m-%d")
  #format(Sys.Date(), "%m-%d-%Y")
#------------------------------------------------------


#----------this is the apps root directory---------------
#project.dir <- rprojroot::find_rstudio_root_file()
#---------------------------------------------------------

#----------------date-range------------------------------
# needs to be a user input, can't stay hard coded here

#this is the minimum date to be included
min_date = #"01-01-1970"
#"01-01-2018"
"2018-01-01"

#this is the maximum date to be included, add the variable todays.date into this variable if you want the most recent data
max_date = todays.date#
#-------------------------------------------------------


#----------------------------------------last date downloaded----------------------
#last date CEDR data was downloaded
last_CEDR_download_date <- "no data downloaded"

if(file.exists(file.path( cedr_path, "cedr_raw.csv"))){
  data_last.df <- data.table::fread(paste0(cedr_path, "cedr_raw.csv"))
  #finds last download date
  last_CEDR_download_date <- max(data_last.df$sampledate)
  
  #jitter for maps 
  data_last.df$latitude <- jitter( data_last.df$latitude, factor = 7)
  data_last.df$longitude <- jitter( data_last.df$longitude, factor = 7)
}

#last date NWIS data was downloaded
last_NWIS_download_date <- "no data downloaded"

if(file.exists(file.path( nwis_path, "nwis_raw.csv"))){
  data_last.df <- data.table::fread(paste0(nwis_path, "nwis_raw.csv"))
  #finds last download date
  last_NWIS_download_date <- max(data_last.df$Date)
  #change back to sampledate when you mutate it later
  
  #jitter for maps 
  # data_last.df$latitude <- jitter( data_last.df$latitude, factor = 7)
  # data_last.df$longitude <- jitter( data_last.df$longitude, factor = 7)
}

#last date WQDP data was downloaded
last_WQDP_download_date <- "no data downloaded"

if(file.exists(file.path( wqdp_path, "wqdp_raw.csv"))){
  # data_last.df <- data.table::fread(paste0(wqpd_path, "wqdp_raw.csv"))
  #finds last download date
  # last_WQDP_download_date <- max(data_last.df$sampledate)
  
  #jitter for maps 
  data_last.df$latitude <- jitter( data_last.df$latitude, factor = 7)
  data_last.df$longitude <- jitter( data_last.df$longitude, factor = 7)
}
#----------------------------------------end last date downloaded----------------------


#-----------------clean data----------------------------
#should be in functions
# clean_string <- function(x) {
#   x %>% 
#     stringr::str_trim() %>% 
#     tolower() %>% 
#     stringr::str_replace_all("\\s+", " ") %>% 
#     stringr::str_replace_all(" ", "_") %>%  
#     if_else(. == "", as.character(NA), .)
# }
# 
# clean_up <- function(x) {
#   x %>% 
#     rename_all(clean_string) %>% 
#     mutate_if(is.character, funs(clean_string))%>% 
#     distinct()
# }
#----------------------------------------------------


#-----create a station vector for us in data pull------
#temporary placement
# station.vec <- file.path(CEDR_url,
#                          "LivingResources",
#                          "TidalPlankton",
#                          "Reported",
#                          min_date,
#                          max_date,
#                          phyto_num,
#                          "Station") %>%
#   fromJSON() %>%
#   pull(unique(MonitoringLocationId))
#---------------------------------------------------------------

#---------------generates a vector of huc8 ids
#only creates it if the CEDR url is accessible
#this prevents the app from breaking if CEDR is down or if no internet
#if(url.exists(CEDR_url) == TRUE){
HUC8.vec <- HUC8_wq_selection_vector()

HUC12.vec <- HUC12_wq_selection_vector()
#}

#------------------------------------------------------

#---------------variables for Rikke's maps-----------------------------------------------------




PRB <- readOGR(file.path(map_path,"PotomacBasin_Boundary_NHD2003.shp"))
HUC8 <- readOGR(file.path(map_path,"WBDHU8_PotmacBasin_Feb20162.shp"))
ches <- readOGR(file.path(map_path,"ChesBay.shp"))
gage <- readOGR(file.path(map_path,"gages_clipped.shp"))

HUC12 <- readOGR(file.path(map_path,"WBDHU12_PotmacBasin_Feb20162.shp"))
#----------------------------------------------------------------------------------------------


#--------------------------testing--------------------
test_condition <- TRUE
#-----------------------------------------------------

#setting up for a possible restructuring to a reactive value
# if(file.exists(paste0(active_path, "active_data.csv"))){
# reactive(active_data.df <- data.table::fread(paste0(active_path, "active_data.csv",
#                                     data.table = FALSE)))
# }else{reactive(active_data.df <- data.frame(sampledate=as.Date(character("1")),
# 
#                                            stringsAsFactors=FALSE))
# }


  
#titles for maps
sal_title = htmltools::tags$p("Salinity")

din_title = htmltools::tags$p("Din")

secchi_title = htmltools::tags$p("Secchi")

po4_title = htmltools::tags$p("Po4")

chla_title = htmltools::tags$p("Chla")

pheo_title = htmltools::tags$p("Pheo")

doc_title = htmltools::tags$p("Doc")




