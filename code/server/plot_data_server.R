observeEvent(input$data_into_plot, {
  
  #read file
  plot_data.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                      header = TRUE,
                                      data.table = FALSE) %>%
  filter(parameter == "spcond")
  
  
  output$plot_the_data <- renderPlot({ggplot(
    plot_data.df, aes(x = sampledatetime, y = measurevalue )) + geom_line(
      #aes(linetype = layer, colour = layer)
      ) 
 
  })#end of plot
})