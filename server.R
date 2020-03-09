shinyServer(function(input, output, session) {
  #to hide sidebar
  #addClass(selector = "body", class = "sidebar-collapse")
  
  
  #if(file.exists(paste0(active_path, "active_data.csv"))){
    active_data.df <- reactive({ fread(paste0(active_path, "active_data.csv"),
                                               data.table = FALSE)
    })
  #}
  
  source("code/server/download_data_server.R", local = TRUE)
  source("code/server/select_data_server.R", local = TRUE)
  source("code/server/error_report_server.R", local = TRUE)
  source("code/server/summary_page_server.R", local = TRUE)
  source("code/server/plot_data_server.R", local = TRUE)
  source("code/server/map_data_server.R", local = TRUE)

    
  
  
}) # end shinyServer