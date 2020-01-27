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

#on launch generates a table of problems
output$problem_table <- DT::renderDataTable({report_problems_table()}) 

#on launch generates a table of qualifiers
output$qualifier_table <- DT::renderDataTable({report_qualifiers_table()}) 

output$no_data_error_problems <- no_data_error

output$no_data_error_qualifiers <- no_data_error

#if select data button is clicked update error report
observeEvent(input$select_data, {
  output$problem_table <- DT::renderDataTable({report_problems_table()}) 
  output$qualifier_table <- DT::renderDataTable({report_qualifiers_table()}) 
})
