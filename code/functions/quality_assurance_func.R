# S------------------------------------------check_data------------------------------------------------
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
# E------------------------------------------check_data-------------------------------------------------


# S------------------------------------------count_problems---------------------------------------------
count_and_report_problems <-  function(problem_name, problem_description){
  #read in data
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)
  
  #if the column problem is included in the data proceed, otherwise not
  if("problem" %in% colnames(data_modified.df))
  {
    #count problem type
    problem_count <- as.numeric(sum(data_modified.df$problem == as.character(problem_name)))
    
    #report problem type
    problem_report = paste("the number of ",problem_name," = ", problem_description, "is", problem_count)
    return(problem_report)
  }
}
# E------------------------------------------count_problems---------------------------------------------





# S---------------------------------------------report all problems
#wrapper for count_and_report_problems
report_all_problems <-  function(){
  
  #read in data
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)
  
#if the column problem is included in the data proceed, otherwise not
  if("problem" %in% colnames(data_modified.df))
  { 

    
    all_problems <- paste0(
    count_and_report_problems("a", A),"\n ",
    count_and_report_problems("b", B),"\n ",
    count_and_report_problems("bb", BB),"\n ",
    count_and_report_problems("c", C),"\n ",
    count_and_report_problems("d", D),"\n ",
    count_and_report_problems("dd", DD),"\n ",
    count_and_report_problems("e", E),"\n ",
    count_and_report_problems("ff", FF),"\n ",
    count_and_report_problems("gg", GG),"\n ",
    count_and_report_problems("i", I),"\n ",
    count_and_report_problems("j", J),"\n ",
    count_and_report_problems("jj", JJ),"\n ",
    count_and_report_problems("lb", LB),"\n ",
    count_and_report_problems("ls", LS),"\n ",
    count_and_report_problems("lu", LU),"\n ",
    count_and_report_problems("mm", MM),"\n ",
    count_and_report_problems("nn", NN),"\n ",
    count_and_report_problems("p", P),"\n ",
    count_and_report_problems("qq", QQ),"\n ",
    count_and_report_problems("r", R),"\n ",
    count_and_report_problems("rr", RR),"\n ",
    count_and_report_problems("ss", SS),"\n ",
    count_and_report_problems("u", U),"\n ",
    count_and_report_problems("v",V),"\n ",
    count_and_report_problems("vv", VV),"\n ",
    count_and_report_problems("ww", WW),"\n ",
    count_and_report_problems("x", X),"\n "
    )
    
    return(all_problems)
    
  }
}
# E---------------------------------------------




# S------------------------------------------count_qualfier---------------------------------------------
count_and_report_qualifiers <-  function(qualifier_name, qualifier_description){
  #read in data
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)
  
  #if the column qualfier is included in the data proceed, otherwise not
  if("qualifier" %in% colnames(data_modified.df))
  {
    #count qualifier type
    qualifier_count <- as.numeric(sum(data_modified.df$qualifier == as.character(qualifier_name)))
    
    #report qualifier type
    qualifier_report = paste("the number of ",qualifier_name," = ", qualifier_description, "is", qualifier_count)
    return(qualifier_report)
  }
}
# E------------------------------------------count_qualifier---------------------------------------------





report_all_qualifiers <-  function(){
  
  #read in data
  data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                        data.table = FALSE)
  
  #if the column qualifier is included in the data proceed, otherwise not
  if("qualifier" %in% colnames(data_modified.df))
  { 
    
    
    all_qualifiers <- paste0(
      count_and_report_qualifiers("<", Less_Than),"\n ",
      count_and_report_qualifiers(">", Greater_Than),"\n ",
      count_and_report_qualifiers("e", E_q),"\n ",
      count_and_report_qualifiers("g", G_q),"\n ",
      count_and_report_qualifiers("a", A_q),"\n ",
      count_and_report_qualifiers("u", U_q),"\n ",
      count_and_report_qualifiers("j", J_q),"\n ",
      count_and_report_qualifiers("n", N_q),"\n "
      
      
    )
    return(all_qualifiers)
    
  }
}
# E---------------------------------------------

#------------------------error report as table ----------------------------
report_problems_table <- function(){
    data_modified.df <- data.table::fread(paste0(data_path, "data_modified.csv"),
                                                                                      data.table = FALSE) %>%
      
      mutate(error_code = problem) %>%
      mutate(definition = case_when(problem == "a"~A,
                                    problem == "b"~B,
                                    problem == "bb"~BB,
                                    problem == "c"~C,
                                    problem == "d"~D,
                                    problem == "dd"~DD,
                                    problem == "e"~E,
                                    problem == "ff"~FF,
                                    problem == "gg"~GG,
                                    problem == "i"~I,
                                    problem == "j"~J,
                                    problem == "jj"~JJ,
                                    problem == "lb"~LB,
                                    problem == "ls"~LS,
                                    problem == "lu"~LU,
                                    problem == "mm"~MM,
                                    problem == "nn"~NN,
                                    problem == "p"~P,
                                    problem == "qq"~QQ,
                                    problem == "r"~R,
                                    problem == "rr"~RR,
                                    problem == "ss"~SS,
                                    problem == "u"~U,
                                    problem == "v"~V,
                                    problem == "vv"~VV,
                                    problem == "ww"~WW,
                                    problem == "x"~X,
                                    TRUE~"no problem") ) %>%
      filter(definition != "no problem") %>%
      group_by(error_code) %>%
      mutate(n = n()) %>%
      ungroup() %>%
      select(error_code,definition, n) %>%
      unique()

}
#------------------------end error report as table------------------------













#testing func
#checking problem column entries
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

  
  qq_count <- as.numeric(sum(data_problems.df$problem == "qq"))
  a_count <- as.numeric(sum(data_problems.df$problem == "a"))
  return(qq_problems)
  }
}



