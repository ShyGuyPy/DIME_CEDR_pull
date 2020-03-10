source("server.R", local = TRUE)

observeEvent(input$select_data, {
               #data_into_plot, {
  
  #read file
  plot_data.df <- active_data.df() %>%#data.table::fread(paste0(active_path, "active_data.csv"),
                                      #header = TRUE,
                                      #data.table = FALSE) %>%
  filter(parameter == "spcond")
  
  
  output$plot_the_data <- renderPlot({ggplot(
    #active_data.df(),
    plot_data.df, 
    aes(x = sampledate, y = measurevalue )) + geom_line(
      #aes(linetype = layer, colour = layer)
      ) 
 
  })#end of plot
})