# transforms raw brreg data (list) to a nested/chopped tibble

prep_data <- function(list) {
  
  data <- map(.x = 1:length(list), .f = ~list_to_col(list = list, listNumber = .)) %>% 
    enframe() %>% 
    unnest(cols = "value") 
  
  return(data)
}
