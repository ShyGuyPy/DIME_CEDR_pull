#---------------------------------CEDR download---------------------
observeEvent(input$download_cedr_data, {
  #disable action button to prevent multiple clicks
  shinyjs::disable("download_cedr_data")
  
  withProgress(message = "downloading CEDR data", value = 0, {
    #increment progress bar
    incProgress(1/2)
    #use cedr pull function to download data
    data.df <- CEDR_pull() %>%
      #write data to directory
      data.table::fwrite(file.path(project.dir, cedr_path, "cedr_raw.csv"))
    
    #increment progress bar
    incProgress(1/2) 
  }) #end of withProgress
  
  #enable action button
  shinyjs::enable("download_cedr_data")
  
})
#---------------------------------end CEDR download-----------------


#---------------------------------NWIS download---------------------
observeEvent(input$download_nwis_data, {
  #disable action button to prevent multiple clicks
  shinyjs::disable("download_nwis_data")
  
  withProgress(message = "downloading NWIS data", value = 0, {
    #increment progress bar
    incProgress(1/2)
    #use nwis pull function to download data
    data.df <- NWIS_pull() %>%
      #write data to directory
      data.table::fwrite(file.path(project.dir, nwis_path, "nwis_raw.csv"))
    
    #increment progress bar
    incProgress(1/2) 
  }) #end of withProgress
  
  #enable action button
  shinyjs::enable("download_nwis_data")
  
})
#---------------------------------end NWIS download-----------------


#---------------------------------WQDP download---------------------
observeEvent(input$download_wqdp_data, {
  #disable action button to prevent multiple clicks
  shinyjs::disable("download_wqdp_data")
  
  #enable action button
  shinyjs::enable("download_wqdp_data")
  
  
})
#---------------------------------end WQDP download-----------------