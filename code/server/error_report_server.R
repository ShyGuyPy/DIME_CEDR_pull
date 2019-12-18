#error report
output$problems <-  eventReactive(input$error_report, {
  #check_data()
  
  report_all_problems()  

  
  
})

output$qualifiers <-  eventReactive(input$error_report, {
  #check_data()
  
  report_all_qualifiers()  
  
  
  
})

# data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
#                                    data.table = FALSE) #%>%
# 
# data_na_count <- as.numeric(sum(is.na(data_modified.df)))
# 
# data_num <- nrow(data_modified.df)
# 
# 
# data_na_percent <- (data_na_count / data_num)
