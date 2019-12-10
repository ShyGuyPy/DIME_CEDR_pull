clean_string <- function(dataframe) {
  dataframe %>% 
    stringr::str_trim() %>% 
    tolower() %>% 
    stringr::str_replace_all("\\s+", " ") %>% 
    stringr::str_replace_all(" ", "_") %>%  
    if_else(. == "", as.character(NA), .)
}

clean_up <- function(dataframe) {
  dataframe %>% 
    rename_all(clean_string) %>% 
    mutate_if(is.character, funs(clean_string))%>% 
    distinct()
}