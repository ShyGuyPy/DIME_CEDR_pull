#--------------paths and packages----------------------
#source("code/global/import_packages.R", local = TRUE)
source("code/global/load_packages.R", local = TRUE)
source("CEDR_inputs.R", local = TRUE)
source("config/paths.R", local = TRUE)
#------------------------------------------------------

#----functions-----------------------------------------
source("code/functions/CEDR_pull_func.R", local = TRUE)
source("code/functions/check_data_func.R", local = TRUE)
source("code/functions/clean_func.R", local = TRUE)
source("code/functions/date_time_func.R", local = TRUE)
#------------------------------------------------------

pass_fail = "testing"

#-----CEDR api url-------------------------------------
CEDR_url <- "http://datahub.chesapeakebay.net/api.JSON"
todays.date <- format(Sys.Date(), "%m-%d-%Y")
#------------------------------------------------------


#----------this is the apps root directory---------------
project.dir <- rprojroot::find_rstudio_root_file()
#---------------------------------------------------------

#----------------date-range------------------------------
# needs to be a user input, can't stay hard coded here

#this is the minimum date to be included
min_date = "01-01-2018"#1970"#

#this is the maximum date to be included, add the variable todays.date into this variable if you want the most recent data
max_date = todays.date#
#-------------------------------------------------------


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

#------------------------------------------------------


#--------------------------testing--------------------
test_condition <- TRUE
#-----------------------------------------------------




