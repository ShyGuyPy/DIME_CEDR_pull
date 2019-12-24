#error report
output$problems <-  eventReactive(input$error_report, {
  #check_data()
  
  report_all_problems()  

  
  
})

output$qualifiers <-  eventReactive(input$error_report, {
  #check_data()
  
  report_all_qualifiers()  
  
  
  
})



# output$test_table <-  eventReactive(input$error_report, {
#   DT::renderDataTable({report_problems_table()})
# 
#   
#   
# 
# })

output$test_table <- DT::renderDataTable({report_problems_table()}) 
