observeEvent(input$select_data, {
  #disable action button to prevent multiple clicks
  shinyjs::disable("select_data")
  
  #progress indicator
  withProgress(message = "setting selected data to active data", value = 0, {
    #increment progress bar
    incProgress(1/2)
  
  #selects file path based on selection
  if(input$active_data == "cedr"){
    current_path = cedr_path
  } else if(input$active_data == "nwis"){
    current_path = nwis_path
  } else if(input$active_data == "wqdp"){
    current_path = wqdp_path
}
  
  #path/filename for placing selected data into active data
  our_data <- paste0(current_path, input$active_data, "_raw", ".csv")
  
  # session$sendCustomMessage(type = 'testmessage',
  #                           message = as.character(paste0('Thank you for clicking', input$active_data)))
  # 

  
  #if selected data exists(if data has already been downloaded from main source)
  if(file.exists(our_data)){
    
    # #remove time extension from sampledate object
    # active_data.df <- to_date(active_data.df)
    
    #read selected data
    active_data.df <- data.table::fread(our_data,
                                        header = TRUE,
                                        data.table = FALSE) %>%
      
    #filter by date range selection
    filter(as.Date(sampledate) >= as.Date(input$date_range[1]), as.Date(sampledate) <= as.Date(input$date_range[2])) %>%
      
    #filter by metric selection
    filter(parameter %in% input$select_metric) %>%
      
      
    #and write to active data
    data.table::fwrite(file.path( active_path, "active_data.csv"))
    
    #output message if data exists
    selection_state = "data was downloaded succcessfully."
    output$selection_report <- renderPrint({ selection_state })
    
    test_statement = active_data.df$sampledate[2]
    output$test_report <- renderPrint({ test_statement })
    
  }else{
    #output message if data not yet downloaded
    selection_state = "no data has been downloaded. download some data."
    output$selection_report <- renderPrint({ selection_state })
  }

  #increment progress bar
  incProgress(1/2) 
  }) #end of withProgress
  
  #enable action button
  shinyjs::enable("select_data")
  
}) #end observe select_data




                              
