observeEvent(input$download_data, {
  # withProgress(message = "downloading water quality data", value = 0, {
  #   #increment progress bar
  #   incProgress(1/2)
  #   #use cedr pull function
  #   data.df <- CEDR_pull() %>%
  #     #write data to directory
  #     data.table::fwrite(file.path(project.dir, data_path, "cedr_wq_raw.csv"))
  #   
  #   #narrow date range of data based on users date range input
  #   data_modified.df <- data.table::fread(paste0(data_path, "cedr_wq_raw.csv"),
  #                                      data.table = FALSE) %>%
  #     filter(sampledate >= input$plot_range[1],
  #            sampledate <= input$plot_range[2]) %>%
  #     
  #     to_date_time(.) %>%
  #     
  #     data.table::fwrite(file.path(project.dir, data_path, "data_modified.csv")) #%>%
  #     
  #     #run datetime function on dataframe
  #     #to_date_time(.)
  #   
  # 
  # 
  #   #increment progress bar
  #   incProgress(1/2) 
  # }) #end of withProgress
  # 
  
  
  
  
  
  
  withProgress(message = "downloading phyto data", value = 0, {
    #increment progress bar
    incProgress(1/2)
    #use cedr pull function
    data.df <- CEDR_pull() %>%
      #write data to directory
      data.table::fwrite(file.path(project.dir, data_path, "data_raw.csv"))
    
    #narrow date range of data based on users date range input
    data_modified.df <- data.table::fread(paste0(data_path, "data_raw.csv"),
                                       data.table = FALSE) %>%
      filter(sampledate >= input$plot_range[1],
             sampledate <= input$plot_range[2]) %>%
      
      to_date_time(.) %>%
      
      data.table::fwrite(file.path(project.dir, data_path, "data_modified.csv")) #%>%
    
    #run datetime function on dataframe
    #to_date_time(.)
    
    
    
    #increment progress bar
    incProgress(1/2) 
  }) #end of withProgress
  
})#end of download_data observeEvent