source("server.R", local = TRUE)
#error report

# #on press of 'report errors' button lists problems
# output$problems <-  eventReactive(input$error_report, {
#   #check_data()
#   
#   #calls function
#   report_all_problems()  
# })
# 
# #on press of 'report errors' button lists qualifiers
# output$qualifiers <-  eventReactive(input$error_report, {
#   #check_data()
#   
#   #calls function
#   report_all_qualifiers()  
# })


# output$test_table <-  eventReactive(input$error_report, {
#   DT::renderDataTable({report_problems_table()})
# 
#   
#   
# 
# })

# #on launch generates a table of problems
# output$problem_table <- DT::renderDataTable({report_problems_table()})
# 
# #on launch generates a table of qualifiers
# output$qualifier_table <- DT::renderDataTable({report_qualifiers_table()})
# 
# output$no_data_error_problems <- no_data_error
# 
# output$no_data_error_qualifiers <- no_data_error

toListenReport <- reactive({
  list(input$select_data,input$error_report_tab)
})

#if select data button is clicked update error report
observeEvent(#toListenReport()#
  input$select_data
             , {
               
               if(file.exists(paste0(project.dir,active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){
                 
                 #assign acgive_data
                 active_data.df <- data.table::fread(paste0(project.dir,active_path, "active_data.csv"),
                                                     header = TRUE,
                                                     data.table = FALSE)
                 
                 #checks if active_data.df has data
                 if(length(active_data.df) != 0){
                 
  output$problem_table <- DT::renderDataTable({report_problems_table(active_data.df)}) 
  output$qualifier_table <- DT::renderDataTable({report_qualifiers_table(active_data.df)}) 
  
  #debugging output
  problems_test <- report_problems_table(active_data.df)%>%
    data.table::fwrite(file.path(project.dir, cedr_path, "problems.csv"))
  
  #debugging output
  qualifier_test <- report_qualifiers_table(active_data.df)%>%
    data.table::fwrite(file.path(project.dir, cedr_path, "qualifiers.csv"))
  
  
               }#end of if length != 0
                 
               }#end of if exists
})

observeEvent(input$selected_tab#input$select_data
             , {
               
               if(file.exists(paste0(project.dir,active_path, "active_data.csv"))){#"data/ACTIVE/active_data.csv")){
               
               #assign acgive_data
               active_data.df <- data.table::fread(paste0(project.dir,active_path, "active_data.csv"),
                                                   header = TRUE,
                                                   data.table = FALSE)
               
               #checks if active_data.df has data
               if(length(active_data.df) != 0){
               
               output$problem_table <- DT::renderDataTable({report_problems_table(active_data.df)})#active_data.df())})
               output$qualifier_table <- DT::renderDataTable({report_qualifiers_table(active_data.df)})#active_data.df())})
               
               # #debugging output
               # problems_test <- report_problems_table(active_data.df())%>%
               #   data.table::fwrite(file.path(project.dir, cedr_path, "problems.csv"))
               # 
               # #debugging output
               # qualifier_test <- report_qualifiers_table(active_data.df())%>%
               #   data.table::fwrite(file.path(project.dir, cedr_path, "qualifiers.csv"))
               
               }#end of if length != 0
               
               }#end of if exists
             })
