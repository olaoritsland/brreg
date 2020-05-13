# Helper function that extracts a specific element of a list

list_to_col <- function(list, listNumber) {
  
  list <- list[[listNumber]]
  
  data <- list[["_embedded"]][["enheter"]]
  
  return(data)
}