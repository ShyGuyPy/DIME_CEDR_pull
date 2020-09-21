source("server.R", local = TRUE)

if(file.exists(paste0(project.dir,active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){
  
  #assign active_data
  active_data.df <- data.table::fread(paste0(project.dir, active_path, "/","active_data.csv"),
                                      header = TRUE,
                                      data.table = FALSE)
}

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





# table for mean median mode - not currently in use
output$m3_table <- DT::renderDataTable({summary_m3_table()})


observeEvent(input$selected_tab, {#input$select_data, {

if(file.exists(paste0(project.dir,active_path,"/", "active_data.csv"))){
  
active_data.df <- data.table::fread(paste0(project.dir,active_path, "active_data.csv"),
                                    header = TRUE,
                                    data.table = FALSE)

}#end of if file exist


})


