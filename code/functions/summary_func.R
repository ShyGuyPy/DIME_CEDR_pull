summary_m3_table <- function(){
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE) #%>%
  
  param_list.df <- data_modified.df %>%
    select(parameter) %>%
    distinct()
    
  # data_modified.df <-  data_modified.df %>%
  #   spread(parameter, measurevalue) 
  
  test.df <- data_modified.df %>%
  chla_mean =  mean(data_modified.df$chla)
  
  
  return(test.df)
    
}