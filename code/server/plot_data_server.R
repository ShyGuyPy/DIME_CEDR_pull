source("server.R", local = TRUE)

if(file.exists(paste0(project.dir,active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){
  
  #assign active_data
  active_data.df <- data.table::fread(paste0(project.dir, active_path, "active_data.csv"),
                                      header = TRUE,
                                      data.table = FALSE)
}

toListenPlot <- reactive({
  list(input$select_data,input$plot_data_tab)
})


observeEvent(input$selected_tab, {#input$select_data, {
               #data_into_plot, {

  #read file
  plot_data.df <- active_data.df #%>%#() %>%#data.table::fread(paste0(active_path, "active_data.csv"),
                                      #header = TRUE,
                                      #data.table = FALSE) %>%

  #filter(parameter == "salinity")#"spcond")


  output$plot_the_data <- renderPlot({ggplot(
    #active_data.df(),
    plot_data.df,
    aes(x = sampledate, y = measurevalue )) + geom_line(
      #aes(linetype = layer, colour = layer)
      )

  })#end of plot
})