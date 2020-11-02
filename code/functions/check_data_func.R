
#returns true if dataframe is not empty(has row values) and doesn't return as NA 
if_empty <- function(dataframe) {
  empty(dataframe)== FALSE || is.na(empty(dataframe))
}