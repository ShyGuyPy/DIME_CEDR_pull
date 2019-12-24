#error report
output$mean <-  eventReactive(input$error_report, {
  #check_data()
  
  report_mean()  
  
  
  
})

output$median <-  eventReactive(input$error_report, {
  #check_data()
  
  report_median()  
  
  
  
})

output$mode <-  eventReactive(input$error_report, {
  #check_data()
  
  report_mode()  
  
  
  
})