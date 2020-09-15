# #error report
# output$mean <-  eventReactive(input$error_report, {
#   #check_data()
#   
#   report_mean()  
#   
#   
#   
# })
# 
# output$median <-  eventReactive(input$error_report, {
#   #check_data()
#   
#   report_median()  
#   
#   
#   
# })
# 
# output$mode <-  eventReactive(input$error_report, {
#   #check_data()
#   
#   report_mode()  
#   
#   
#   
# })

#table for mean median mode - not currently in use
output$m3_table <- DT::renderDataTable({summary_m3_table()}) 


observeEvent(input$select_data, {
active_data.df <- data.table::fread(paste0(project.dir,active_path, "active_data.csv"),
                                    data.table = FALSE)
})

#for rendering heatmaps-
# output$heatmap <- renderPlot(
#   
#   
# )

