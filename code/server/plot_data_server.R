observeEvent(input$data_into_plot, {
  
  #read file
  plot_data.df <- data.table::fread(paste0(data_path, "cedr_phyto_tweak.csv"),
                                      header = TRUE,
                                      data.table = FALSE) %>%
    mutate(sampledate=as.Date(sampledate))
  
  
  output$plot_the_data <- renderPlot({ggplot(plot_data.df, aes(x = sampledate, y = pdepth)) + geom_line(aes(linetype = station, colour = station)) 
  })#end of plot
})