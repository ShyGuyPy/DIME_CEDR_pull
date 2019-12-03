observeEvent(input$download_phyto_data, {
  withProgress(message = "downloading phyto data", value = 0, {
    #increment progress bar
    incProgress(1/2)
    data.df <- file.path(url.root,
                         "LivingResources",
                         "TidalPlankton",
                         "MonitorEvent",
                         min_date,
                         max_date,
                         phyto_num,
                         "Station",
                         paste(station.vec, collapse = ",")) %>%
      fromJSON() %>%
      clean_up() %>%
      data.table::fwrite(file.path(project.dir, data_path, "cedr_phyto_raw.csv"))
    
    # print(input$plot_range[1])
    # print(input$plot_range[2])
    
    data_tweak.df <- data.table::fread(paste0(data_path, "cedr_phyto_raw.csv"),
                                       data.table = FALSE) %>%
      filter(sampledate >= input$plot_range[1],
             sampledate <= input$plot_range[2]) %>%
      data.table::fwrite(file.path(project.dir, data_path, "cedr_phyto_tweak.csv"))
    # filter data down to user specified date range
    # data_date_range.df <- data.df %>%
    # filter(sampledate >= input$plot_range[1],
    #        sampledate <= input$plot_range[2])
    # %>%
    #  data.table::fwrite(file.path(project.dir, "data/CEDR", "cedr_phyto_daterange.csv"))
    
    # data_output.df <- data_date_range.df %>% 
    #   mutate(reportingvalue = as.character(reportingvalue)) %>% 
    #   data.table::fwrite(file.path(project.dir, "data/CEDR", "cedr_phyto_output.csv"))
    
    #increment progress bar
    incProgress(1/2) 
  }) #end of withProgress
  
})#end of download_phyto_data observeEvent