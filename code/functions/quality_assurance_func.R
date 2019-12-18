check_data <-  function(){
  ####needs an if.exst exception
    #read downloaded water quality data
    data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                       data.table = FALSE)
    
    #count number of NA entries in measurevalue
    data_na_count <- as.numeric(sum(is.na(data_modified.df$measurevalue)))
    
    #count number of total entries
    data_num <- nrow(data_modified.df)
    
    # calcualte number of na as percent of total entires
    data_na_percent <- (data_na_count / data_num)
    
    
    data_check <- case_when( data_na_percent >=  .05 ~ paste("FAIL ","NA percent: ",data_na_percent), data_na_percent <  .05 ~ paste("PASS ","NA percent: ",data_na_percent)) #TRUE ~ "PASS")
    return(data_check)

}


check_problems <- function(){
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)
  
  #if the column problem is included in the data proceed, otherwise not
  if("problem" %in% colnames(data_modified.df))
  {

  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)

  data_problems.df <- data_modified.df %>%
    filter(!is.na(problem )) %>%
  
  data.table::fwrite(file.path(project.dir, data_path, "qa_test.csv"))

  
  qq_problems = count(data_problems.df$problem == "qq")
  return(qq_problems)
  }
}