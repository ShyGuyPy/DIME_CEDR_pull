summary_m3_table <- function(){
  
  if(file.exists(paste0(active_path, "active_data.csv"))){
  active_data.df <- data.table::fread(paste0( active_path,"active_data.csv"),
                                        data.table = FALSE) #%>%
  
  param_list.df <- active_data.df %>%
    select(parameter) %>%
    distinct()
    
  # active_data.df <-  active_data.df %>%
  #   spread(parameter, measurevalue) 
  
  test.df <- active_data.df %>%
  chla_mean =  mean(active_data.df$chla)
  
  
  return(test.df)
  
  }#end of if exists
    
}
