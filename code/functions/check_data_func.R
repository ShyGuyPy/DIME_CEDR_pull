check_data <-  function(){
  ####needs an if.exst exception
    #read downloaded water quality data
    data_tweak.df <- data.table::fread(paste0(data_path, "cedr_wq_tweak.csv"),
                                       data.table = FALSE)
    
    #count number of NA entries in measurevalue
    data_na_count <- as.numeric(sum(is.na(data_tweak.df$measurevalue)))
    
    #count number of total entries
    data_num <- nrow(data_tweak.df)
    
    # calcualte number of na as percent of total entires
    data_na_percent <- (data_na_count / data_num)
    
    
    data_check <- case_when( data_na_percent >=  .05 ~ paste("FAIL ","NA percent: ",data_na_percent), data_na_percent <  .05 ~ paste("PASS ","NA percent: ",data_na_percent)) #TRUE ~ "PASS")
    return(data_check)

}