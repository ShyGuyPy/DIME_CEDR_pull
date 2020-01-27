observeEvent(input$select_data, {
  
  #seelects file path based on selection
  if(input$active_data == "cedr"){
    current_path = cedr_path
  } else if(input$active_data == "nwis"){
    current_path = nwis_path
  } else if(input$active_data == "wqdp"){
    current_path = wqpd_path
}
  
  #path/filename for placing selected data into active data
  our_data <- paste0(current_path, input$active_data, "_raw", ".csv")
  
  session$sendCustomMessage(type = 'testmessage',
                            message = as.character(paste0('Thank you for clicking', input$active_data)))
  
  #if selected data exists
  if(file.exists(our_data)){
    #read selected data
    active_data.df <- data.table::fread(our_data,
                                        data.table = FALSE) %>%
    #and write to active data
    data.table::fwrite(file.path(project.dir, active_path, "active_data.csv"))
  }

})
                              