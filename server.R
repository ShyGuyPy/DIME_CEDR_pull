shinyServer(function(input, output, session) {
  source("code/server/download_data_server.R", local = TRUE)
  source("code/server/plot_data_server.R", local = TRUE)
  source("code/server/error_report_server.R", local = TRUE)
  source("code/server/map_data_server.R", local = TRUE)
    
  
  
}) # end shinyServer