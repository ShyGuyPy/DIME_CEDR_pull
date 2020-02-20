shinyServer(function(input, output, session) {
  #to hide sidebar
  #addClass(selector = "body", class = "sidebar-collapse")
  
  source("code/server/download_data_server.R", local = TRUE)
  source("code/server/select_data_server.R", local = TRUE)
  source("code/server/error_report_server.R", local = TRUE)
  source("code/server/summary_page_server.R", local = TRUE)
  source("code/server/plot_data_server.R", local = TRUE)
  source("code/server/map_data_server_test.R", local = TRUE)

    
  
  
}) # end shinyServer