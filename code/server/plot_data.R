observeEvent(input$data_into_plot, {
  
  #read file
  plot_data.df <- data.table::fread(paste0(data_path, "cedr_phyto_tweak.csv"),
                                      header = TRUE,
                                      data.table = FALSE)
  
  
  output$plot_the_data <- renderPlot({ggplot(plot_data.df, aes(x = sampledate, y = reportingvalue)) + geom_line()#aes(linetype = latinname, colour = latinname)) 
  })#end of plot
})